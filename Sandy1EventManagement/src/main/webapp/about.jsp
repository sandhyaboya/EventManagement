<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SKEvents | Creating Lasting Memories</title>
<style>
  /* Reset and general styles */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: Arial, sans-serif;
    color: #333;
    background-color: #fdfdfd;
    line-height: 1.6;
  }

  .container {
    max-width: 1000px;
    margin: 0 auto;
    padding: 20px;
  }

  header, .slogan, .contact-info, .privacy {
    text-align: center;
  }

  header h1 {
    font-size: 2.5em;
    font-family: serif;
    color: #9BA68C;
    margin-bottom: 10px;
  }

  header h2 {
    font-size: 1.2em;
    color: #333;
    letter-spacing: 2px;
  }

  .flex-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    align-items: center;
    justify-content: center;
  }

  .flex-item {
    flex: 1 1 45%; /* Allows two items per row, adjusts on smaller screens */
    text-align: justify;
  }

  .flex-item img {
    width: 100%;
    max-width: 100%;
    display: block;
    border-radius: 8px;
  }

  .slogan {
    font-size: 1.3em;
    font-weight: bold;
    margin: 20px 0;
  }

  .contact-info a {
    color: #333;
    text-decoration: none;
  }

  .contact-info a:hover {
    color: #9BA68C;
  }

  .privacy {
    font-size: 0.8em;
    margin-top: 20px;
  }

  @media (max-width: 768px) {
    .flex-item {
      flex: 1 1 100%; /* Stacks items on smaller screens */
    }
  }
  p{
  font-size:1.2em;
  }
</style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
  <div class="flex-container">
    <div class="flex-item">
      <p>Hey! We're SKEvents, and we are obsessed with creating beautiful spaces so you can make lasting memories. I fell in love with studying the different layouts and finishes of each home.</p>
    </div>
    <div class="flex-item">
      <img src="https://sunnysworldpune.com/wp-content/uploads/2021/11/Wedding-Function-at-Sunnys-World-Pune-4.jpg" alt="Wedding planning services by SKEvents">
    </div>
  </div>
</div>

<div class="container">
  <div class="flex-container">
    <div class="flex-item">
      <p>An event represents a change in the state of data, such as a sensor signaling a change in temperature, a field changing in a database, a ship changing course, a bank deposit being completed, or a checkout button being clicked in an e-commerce app. Often, the sooner an enterprise knows about an event and can react, the better.

When an event happens, an application sends a message. A message is simply a communication of data. In an EDA, messages communicate data about events.</p>
    </div>
    <div class="flex-item">
      <img src="https://www.fgpg.com/wp-content/uploads/2020/09/entertainment-1220x630-1-1024x542.jpg" alt="Wedding planning services by SKEvents">
    </div>
  </div>
</div>

<!-- About and Additional Image section -->

<div class="container">
  <div class="flex-container">
    <div class="flex-item">
      <p>
        I grew up visiting homes that were on the market with my mom #realtorlife. I fell in love with studying the different layouts and finishes of each home. Any chance I got, I would pull out my art supplies and draw up a new floor plan full of creative nooks and secret rooms that seemed like a dream to play in.
      </p>
      <p>
        This passion followed me through the years: earning my Master of Architecture, working in a top architecture firm, and learning the fundamentals of good design. Over time, I realized my true calling was planning and designing events, bringing people's visions of their wedding day to life.
      </p>	
    </div>
    <div class="flex-item">
      <img src="https://media.istockphoto.com/id/1177485677/photo/table-setting-for-an-event-party-or-wedding-reception.webp?b=1&s=170667a&w=0&k=20&c=Ook3N3SPM859bZSqMGshBs8F9XYjdMKHpV1b5SU7nxM=" alt="Elegant event setup by SKEvents">
    </div>
  </div>
</div>

<div class="container">
  <div class="flex-container">
    <div class="flex-item">
      <p>
        An event broker is middleware that mediates the communication of event messages between producers and consumers using the various message exchange patterns. Event-driven architecture (EDA) uses event brokers to provide the messaging infrastructure.
      </p>
      <p>
        Applications that produce and consume events are clients of an event broker. When an application publishes an event message, the event is sent to an event broker, which then routes the event on to subscribing clients.
      </p>
    </div>
    <div class="flex-item">
      <img src="https://images.deccanherald.com/deccanherald%2F2024-03%2Fbe56c695-9f93-469c-842c-00fccad77b5a%2FWhatsApp_Image_2024_03_19_at_18_52_31.jpeg" alt="Elegant event setup by SKEvents">
    </div>
  </div>
</div>

<div class="container">
  <div class="flex-container">
    <div class="flex-item">
      <p>
        I grew up visiting homes that were on the market with my mom #realtorlife. I fell in love with studying the different layouts and finishes of each home. Any chance I got, I would pull out my art supplies and draw up a new floor plan full of creative nooks and secret rooms that seemed like a dream to play in.
      </p>
      <p>
        This passion followed me through the years: earning my Master of Architecture, working in a top architecture firm, and learning the fundamentals of good design. Over time, I realized my true calling was planning and designing events, bringing people's visions of their wedding day to life.
      </p>
      <p class="contact-info">I can wait to meet you!</p>
    </div>
    <div class="flex-item">
      <img src="https://media.istockphoto.com/id/1177485677/photo/table-setting-for-an-event-party-or-wedding-reception.webp?b=1&s=170667a&w=0&k=20&c=Ook3N3SPM859bZSqMGshBs8F9XYjdMKHpV1b5SU7nxM=" alt="Elegant event setup by SKEvents">
    </div>
  </div>
</div>

<!-- Contact section -->
<main class="container">
  <p class="slogan">SAY "I DO" TO A BEAUTIFUL, STRESS-FREE WEDDING PLANNING EXPERIENCE!</p>
  <div class="contact-info">
    <p><a href="tel:2533077447">(253) 307-7447</a></p>
    <p><a href="mailto:DesignsbySandyevents@gmail.com">DesignsbySandyevents@gmail.com</a></p>
    <p>Interior Decorating - Serving Washington State and Beyond</p>
  </div>
  <p class="privacy">PRIVACY POLICY</p>
</main>

<%@ include file="footer.jsp" %>

</body>
</html>
