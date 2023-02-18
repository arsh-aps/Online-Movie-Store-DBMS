import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.Properties;
import java.sql.SQLException;
import java.sql.ResultSetMetaData;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.FileReader;
import java.io.Reader;
import java.io.File;
import java.util.Scanner;


public class CPS510_Assignment9_JavaUI {
	
	public static String[] parseFile (String filename) throws IOException
	{
		String create = "";
		String line = "";
		Scanner in = new Scanner(new File(filename));
		while (in.hasNextLine()) 
		{
			line = in.nextLine();
			line = line.trim();
			if (!line.equals("\n") && !line.equals("") && line != null)
			{
				if (!line.substring(0,1).equals("-"))
				{
					create += line + " ";
				}
			}
		}
		in.close();
		String[] sql_commands = create.split(";");

		for (int j = 0; j < sql_commands.length; j++)
		{
			sql_commands[j] = sql_commands[j].trim();
		}
		return sql_commands;
	}
	
	public static String parseCommand() throws IOException
	{
		String[] sql_commands = null;
		
		Scanner in = new Scanner(System.in);
		System.out.print("Please enter your sql command: ");
		String command = in.nextLine();
		command = command.trim();

		if (!command.equals("") && command != null)
		{
			sql_commands = command.split(";");
		}
		else
		{
			return "";
		}
		
		if (sql_commands.length == 1)
		{
			return sql_commands[0];
		}
		else if (sql_commands.length > 1)
		{
			return "1";
		}
		else
		{
			return "";
		}
		 
	}
 
    public static void main(String[] args) {
 
        Connection conn1 = null;

        try {
            // registers Oracle JDBC driver - though this is no longer required
            // since JDBC 4.0, but added here for backward compatibility
            Class.forName("oracle.jdbc.OracleDriver");
 
           
            String dbURL1 = "jdbc:oracle:thin:@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs
																						
         	
             //String DBURL = "jdbc:oracle:thin:@localhost:1521:xe";
			/* This XE or local database that you installed on your laptop. 1521 is the default port for database, change according to what you used during installation. 
			xe is the sid, change according to what you setup during installation. */
			conn1 = DriverManager.getConnection(dbURL1, "username","password");
            if (conn1 != null) {
                System.out.println("Connected with connection #1");
            }
			
			String tableName = "";
			int i = 0;
			String command = "";
			String[] tokens = null;
			Scanner input = null;
			String word = "";
			String c = "";
			
			while (!word.equals("E") && !word.equals("X"))
			{
				try (Statement stmt = conn1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) 
				{
					
						System.out.println("\n");
						System.out.println("1) View Existing Tables");
						System.out.println("2) Create All Tables");
						System.out.println("3) Drop All Tables");
						System.out.println("4) Populate Tables");
						System.out.println("5) Show Interesting Advanced Queries");
						System.out.println("6) Create Views");
						System.out.println("7) Drop Views");
						System.out.println("8) Insert Record");
						System.out.println("9) Update Record");
						System.out.println("10) Delete Record");
						System.out.println("11) Search Record");
						System.out.println("E) End/Exit");
						System.out.println("\n");
						System.out.print("Choose: ");
						input = new Scanner(System.in);
						word = input.next();
						
						try 
						{
							System.out.println();
							if (word.equals("0"))
							{
								System.out.println("Nothing Here");
							}
							else if (word.equals("1"))
							{
								String query = "select table_name FROM user_tables";
								ResultSet rs = stmt.executeQuery(query);
								while (rs.next()) 
								{
									String table = rs.getString("table_name");
									System.out.println(table);
								}
							}
							else if (word.equals("2"))
							{
						
								String[] sql_commands = parseFile("createTables.sql");
								if (sql_commands[0] != null && !sql_commands[0].equals(""))
								{
									stmt.executeUpdate(sql_commands[0]);
								}
								
									
								for (i = 1; i < sql_commands.length; i++)
								{
									command = sql_commands[i];
									
									if (command != null && !command.equals(""))
									{
										stmt.executeUpdate(command);
										tokens = command.split(" ");
										tableName = tokens[2];
										System.out.println("Successfully created table" + " " + tableName);
									}
								}
							}
							else if (word.equals("3"))
							{
								String[] sql_commands = parseFile("dropTables.sql");
									
								for (i = 0; i < sql_commands.length; i++)
								{
									command = sql_commands[i];
									
									if (command != null && !command.equals(""))
									{
										stmt.executeUpdate(command);
										tokens = command.split(" ");
										tableName = tokens[2];
										System.out.println("Successfully dropped table" + " " + tableName);
									}
									
								}
							}
							else if (word.equals("4"))
							{
								String[] sql_commands1 = parseFile("insertMovies.sql");
								String[] sql_commands2 = parseFile("insert.sql");
								for (i = 0; i < sql_commands1.length; i++)
								{
									command = sql_commands1[i];
									
									if (command != null && !command.equals(""))
									{
										stmt.executeUpdate(command);
										System.out.println("1 Row Inserted");
									}
								}
								for (i = 0; i < sql_commands2.length-1; i++)
								{
									command = sql_commands2[i];
									
									if (command != null && !command.equals(""))
									{
										stmt.executeUpdate(command);
										System.out.println("1 Row Inserted");
									}
								}
							}
							else if (word.equals("5"))
							{
								String[] queries = parseFile("queries.sql");
									
								for (i = 0; i < queries.length; i++)
								{
									command = queries[i];
									
									if (command != null && !command.equals(""))
									{
										ResultSet rs = stmt.executeQuery(command);
										if (!rs.next())
										{
											System.out.println("No rows selected");
										}
										else
										{
											rs.beforeFirst();
											ResultSetMetaData rsmd = rs.getMetaData();
										
											int numColumns = rsmd.getColumnCount();
											
											while (rs.next())
											{
												String row = "";
												for (int j = 0; j < numColumns; ++j)
												{
													Object val = rs.getObject(j+1);
													row += val + ", ";
												}
												System.out.println(row.substring(0,row.length()-2));
											}
											System.out.println();
										}	
									}
								}
							}
							else if (word.equals("6"))
							{
								String[] sql_commands = parseFile("viewTables.sql");
								
									
								for (i = 0; i < sql_commands.length; i++)
								{
									command = sql_commands[i];
									
									if (command != null && !command.equals(""))
									{
										ResultSet rs = stmt.executeQuery(command);
										tokens = command.split(" ");
										tableName = tokens[2];
										ResultSetMetaData rsmd = rs.getMetaData();
										int numColumns = rsmd.getColumnCount();
										System.out.println("Successfully created view" + " " + tableName);
									}									
								}
							}
							else if (word.equals("7"))
							{
								String[] sql_commands = parseFile("dropViews.sql");
									
								for (i = 0; i < sql_commands.length; i++)
								{
									command = sql_commands[i];
									
									if (command != null && !command.equals(""))
									{
										stmt.executeUpdate(command);
										tokens = command.split(" ");
										tableName = tokens[2];
										System.out.println("Successfully dropped view" + " " + tableName);
									}
								}
							}
							else if (word.equals("8") || word.equals("9") || word.equals("10") || word.equals("11"))
							{
								String whatCommand = "";
								String sql_command = parseCommand();
								if (sql_command.equals(""))
								{
									System.out.println("\nInvalid Command");
								}
								else if (sql_command.equals("1"))
								{
									System.out.println("\nPlease enter only one command");
								}
								else
								{
									tokens = sql_command.split(" ");
									whatCommand = tokens[0];
									if (whatCommand.equalsIgnoreCase("insert") && word.equals("8"))
									{
										stmt.executeUpdate(sql_command);
										System.out.println("\nInserted 1 row");
									}
									else if (whatCommand.equalsIgnoreCase("update") && word.equals("9"))
									{
										stmt.executeUpdate(sql_command);
										System.out.println("\nUpdated 1 row");
									}
									else if (whatCommand.equalsIgnoreCase("delete") && word.equals("10"))
									{
										int num = stmt.executeUpdate(sql_command);
										if (num > 0)
										{
											System.out.println("\nDeleted 1 row");
										}
										else
										{
											System.out.println("\nThis row does not exist");
										}
										
									}
									else if (whatCommand.equalsIgnoreCase("select") && word.equals("11"))
									{
										ResultSet rs = stmt.executeQuery(sql_command);
										if (!rs.next())
										{
											System.out.println("\nNo rows selected");
										}
										else
										{
											rs.beforeFirst();
											ResultSetMetaData rsmd = rs.getMetaData();
										
											int numColumns = rsmd.getColumnCount();
										
											System.out.println();
										
											while (rs.next())
											{
												String row = "";
												for (int j = 0; j < numColumns; ++j)
												{
													Object val = rs.getObject(j+1);
													row += val + ", ";
												}
												System.out.println(row.substring(0,row.length()-2));
											}
											System.out.println();
										}			
									}
									else
									{
										System.out.println("\nInvalid Command");
									}
								}
							}
							else if (word.equals("E"))
							{
								conn1.close();
							}
							else 
							{
								System.out.println("Invalid Input");
							}
						}
						catch (FileNotFoundException e)
						{
							System.out.println("File not found: " + e.getMessage());
						}
						catch (IOException e)
						{
							System.out.println(e.getMessage());
						}
					}
				 
				catch (SQLException e) 
				{
					System.out.println(e.getMessage());
				}
			}


 
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (conn1 != null && !conn1.isClosed()) {
                    conn1.close();
                }
     
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
			

    }
}