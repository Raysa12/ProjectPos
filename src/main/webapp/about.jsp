<%--
  Created by IntelliJ IDEA.
  User: Raysa
  Date: 1/18/2023
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:pageTemplate pageTitle="About">
    <div class="about-section">
        <h1>About Us </h1>
        <p >We are a few students that are working on this  project.</p>
        <h1>Our Team</h1>
    </div>

    <div class="container-p">
        <div class="container-fluid">
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="container">
                            <h2>Dinu Raysa-Yasmine</h2>
                            <p>Contact</p>
                            <p>raysayasmine.dinu@ulbsibiu.ro</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="container">
                            <h2>Student 2</h2>
                            <p>Contact</p>
                            <p>*******************</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="container">
                            <h2>Student 3</h2>
                            <p>Contact</p>
                            <p>******************</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="container">
                            <h2>Student 4</h2>
                            <p>Contact</p>
                            <p>*****************</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <style>

        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
        }

        .column {
            width: 33.3%;
            margin-bottom: 16px;
            padding: 0 8px;
        }
        .container-fluid{
            display:grid;
            justify-content: flex-start;

        }
        .card {
            max-width: 350px;
            display: grid;
            grid-template-columns: repeat(4, minmax(350px, 1fr));
            gap: 90px; /distanta intre produse/
        font-family: sans-serif;
            padding: 30px 0px 50px 0px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 8px;
        }
        .about-section {
            text-align: center;
            padding-left:500px;
        }
        .container {
            padding: 0 25px;
        }
        .container-p{
            padding-top:100px;
            padding-left:550px;
        }
        h1{
            color:darkblue;
        }

    </style>

</t:pageTemplate>