<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Ryad_PortFolio.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Robiul Islam Ryad</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="CSS/style.css">

</head>
<body>
    <form id="form1" runat="server">
     <!-- header design -->
    <header class="header">
        <a href="#" class="logo">R<span>y</span>ad</a>
        <i class='bx bx-menu' id="menu-icon"></i>

        <nav class="navbar">
            <a href="#home" class="active">Home</a>
            <a href="#about">About</a>
            <a href="#experiences">Experiences</a>
            <a href="#portfolio">Works</a>
            <a href="#contact">Contact</a>
            <a href="Login.aspx">Admin</a>
           
        </nav>
    </header>

    <!-- Home Section -->

    <section class="home" id="home">
        <div class="home-content">
            <h3>Hello, This is</h3>
            <h1>Robiul Islam Ryad</h1>
            <h3>And I am a <span class="multiple-text"></span></h3>
            <p>I am a quick Learner and Hard worker Boy.Here I indroduce Myself with my current project and experiences.I am so passinate with android develovment.</p>

            <div class="social-media">
                <a href="https://www.facebook.com/"><i class='bx bxl-facebook' ></i></a>
                <a href="https://www.instagram.com/robi.ul3486/"><i class='bx bxl-instagram' ></i></a>
                <a href="https://www.linkedin.com/in/robiul-riyadh-b32980237/"><i class='bx bxl-linkedin'></i></a>
                <a href="https://github.com/Riyadh08"><i class='bx bxl-github' ></i></a>
               
            </div>
            <a href="#about" class="btn">More About Me</a>
        </div>

        <div class="home-img">
            <img src="images/ryad.png" alt="">
        </div>
    </section>

    <!-- About Section -->

    <section class="about" id="about">
        <div class="about-img">
            <img src="images/about.png" alt="">
        </div>

        <div class="about-content">
            <h2 class="heading">About <span>Me</span></h2>
            <h3>Student of KUET Dept of "CSE</h3>
            <p>I am a undergradutate 3rd Year student. I Worked on Andoird App development,Compititive Programing ||SGIPC||. FullStack Web Development. I am also passioned on NLP and Machine Learning.</p>
                 <!-- skills --> 

           <!-- skills -->
<!-- skills -->
<div class="row">
    <div class="col-md-8 mx-auto">
        <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Field" HeaderText="|___Skills______" ItemStyle-CssClass="colorful-text" HeaderStyle-CssClass="colorful-header" />
                <asp:BoundField DataField="Description" HeaderText="Durations______|" HeaderStyle-CssClass="colorful-header" ItemStyle-CssClass="column-spacing" />
            </Columns>
            <HeaderStyle Font-Size="16px" />
        </asp:GridView>
    </div>
</div>




</div>
</section>
 


    <!-- Experiences Section -->

    <section class="experiences" id="experiences">
        <h2 class="heading">My <span>Experiences</span></h2>

        <div class="experiences-container">
            <div class="experiences-box">
                <i class='bx bx-code-alt'></i>
                <h3>Web Development</h3>
                <p>I have experiences on HTML,CSS and Javascript for fronted development as well as PHP, C#, ASP.NET and Laravel. To build website dynamic and user frindly I will try my best to customize using bootstrap it's a frame work for css and javascript.</p>
                <a href="https://www.w3schools.com/whatis/" class="btn">Learn More</a>
            </div>
            <div class="experiences-box">
                <i class='bx bxl-android'></i>
                <h3>Android App Development</h3>
                <p>I have Experiences on XML as a fronted and JAVA as a backend languge to developed android app on andrid studio. I also work on API, JESON Paesing and Payment Gate Way to make My project Which is Railway management system.</p>
                <a href="https://developer.android.com/" class="btn">Learn More</a>
            </div>
            <div class="experiences-box">
                <i class='bx bxl-c-plus-plus' ></i>
                <h3>C/C++ Programming</h3>
                <p>As C is called mother lagnuage, Many more OS are bulid using C programing because it's So faster than other Programing lagnuage. It is a Mid level language. I have also Knowlwdge on OOP in C++.</p>
                <a href="https://www.w3schools.com/c/index.php" class="btn">Learn More</a>
            </div>
        </div>
    </section>

    <!-- Work Section -->

    <section class="portfolio" id="portfolio">
        <h2 class="heading">Latest <span>Project</span></h2>

        <div class="portfolio-container">
            <div class="portfolio-box">
                <img src="images/web_design.jpg" alt="">
                <div class="portfolio-layer">
                    <h4>Web Design</h4>
                    <p>I Can design webpage by using html css and javascript.</p>
                    <a href="https://github.com/Riyadh08/Currency_Convertor.git"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="images/Travel.jpg" alt="">
                <div class="portfolio-layer">
                    <h4>C++ Project</h4>
                    <p>Using C++ OOP I build cosole application.</p>
                    <a href="https://github.com/Riyadh08/Blood-Donation.git"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="images/Rail_way.jpeg" alt="">
                <div class="portfolio-layer">
                    <h4>Android App</h4>
                    <p>It's My first android project develop by using android studio.Here I use Firebase,API and Payment Gateway.There are Two types of login user as well as admin.</p>
                    <a href="https://github.com/Riyadh08/RailSheba.git"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="images/currency_converter.jpeg" alt="">
                <div class="portfolio-layer">
                    <h4>Web Project</h4>
                    <p>This currency_converter App is developed by using HTML,CSS and Javascript.Here I use an external API to Track the Current Money value.</p>
                    <a href="https://github.com/Riyadh08/Currency_Convertor.git"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="images/database.jpeg" alt="">
                <div class="portfolio-layer">
                    <h4>Database Project</h4>
                    <p>Auto Mobile Shop Managemet System. Here I track the Automobile Buy and sell as well as the history to the list of the buyer and seller date.</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="images/image.jpeg" alt="">
                <div class="portfolio-layer">
                    <h4>Software Development</h4>
                    <p>I developed the softwate that is caridac recorder using Unit Test and UI Test. Also I generate the Javadoc form Intellij IDE</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contect Section -->

  <section id="contact">
    <p class="section_text_p1">Get in Touch</p>
    <h1 class="title">Contact Me</h1>

    <asp:TextBox ID="nameTextBox" runat="server" CssClass="contact-input" placeholder="Your name" Required="true"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="emailTextBox" runat="server" CssClass="contact-input" placeholder="Your email" Required="true" TextMode="Email"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="messageTextBox" runat="server" CssClass="contact-input" placeholder="Write message" TextMode="MultiLine" Rows="6" Required="true"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="txtSubmit" runat="server" Text="Send" OnClick="txtSubmit_Click" CssClass="contact-btn" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</section>

    <!-- Footer Section -->

    <footer class="footer">
        <div class="footer-iconTop">
            <a href="#home"><i class='bx bx-up-arrow-alt'></i></a>
        </div>
        
        <div class="footer-text">
            <p>Copyright &copy; 2024 by Ryad | All Rights Reserved.</p>
        </div>
         <a href="images/my-cv.pdf" download class="btn btn2">Download CV</a>
  
    </footer>


    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>

    
    <script src="JavaScript/script.js"></script>
    

    </form>
</body>
</html>
