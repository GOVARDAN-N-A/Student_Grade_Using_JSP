    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Result</title>
    </head>

    <body>
        <div class="result-container">
            <% String name=request.getParameter("name"); 
            int cd=Integer.parseInt(request.getParameter("cd"));
            int dc=Integer.parseInt(request.getParameter("dc"));
            int cn=Integer.parseInt(request.getParameter("cn"));
            int wt=Integer.parseInt(request.getParameter("wt")); 
            int ccs=Integer.parseInt(request.getParameter("ccs"));
            int totalMarks=cd + dc + cn + wt + ccs;
            double average= totalMarks / 5.0; %>

                <h2>Result Summary</h2>
                <h3 class="stud_name">Student Name : <%= name  %></h3>
                <table>
                    <tr>
                        <th>Subject</th>
                        <th>Marks</th>
                        <th>Status</th>
                    </tr>
                    <tr>
                        <td>Subject 1</td>
                        <td>
                            <%= cd %>
                        </td>
                
                
                        <td>
                            <%= (cd>= 50) ? "Pass" : "Fail" %>
                        </td>
                
                
                
                    </tr>
                    <tr>
                        <td>Subject 2</td>
                        <td>
                            <%= dc %>
                        </td>
                        <td>
                            <%= (dc>= 50) ? "Pass" : "Fail" %>
                        </td>
                
                    </tr>
                    <tr>
                        <td>Subject 3</td>
                        <td>
                            <%= cn %>
                        </td>
                        <td>
                            <%= (cn>= 50) ? "Pass" : "Fail" %>
                        </td>
                
                    </tr>
                    <tr>
                        <td>Subject 4</td>
                        <td>
                            <%= wt %>
                        </td>
                        <td>
                            <%= (wt>= 50) ? "Pass" : "Fail" %>
                        </td>
                
                    </tr>
                    <tr>
                        <td>Subject 5</td>
                        <td>
                            <%= ccs %>
                        </td>
                        <td>
                            <%= (ccs>= 50) ? "Pass" : "Fail" %>
                        </td>
                
                    </tr>
                </table>
                <div class='result-grade'>Your overall grade is:
                    <% if (average> 90) {
                        out.print('A');
                        } else if (average >= 80) {
                        out.print('B');
                        } else if (average >= 70) {
                        out.print('C');
                        } else if (average >= 60) {
                        out.print('D');
                        } else {
                        out.print("E");
                        }
                        %>
                </div>
                </div>
                </body>
                
                </html>