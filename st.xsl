<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">

    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>أذكار يومية</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
        <style type="text/css">
          body {
            margin: 0;
            padding: 0;
            background-color: #212121;
            font-family: "Segoe UI", Tahoma, sans-serif;
            color: #ffffff;
          }

          h1 {
            text-align: center;
            padding: 30px 20px;
            background-color: #388E3C;
            margin: 0;
            color: #ffffff;
            font-size: 36px;
            border-radius: 10px;
          }

          .section {
            margin-top: 50px;
            background-color: #2b2b2b;
            border-radius: 10px;
            padding-bottom: 30px;
            box-shadow: 0 0 20px rgba(76, 175, 80, 0.2);
          }

          .section-title {
            text-align: center;
            color: #4CAF50;
            font-size: 28px;
            margin: 0;
            padding: 20px 10px 10px 10px;
            position: relative;
          }

          .section-title i {
            margin-left: 8px;
            color: #81C784;
          }

          .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            gap: 20px;
          }

          .zekr-box {
            background-color: #2E2E2E;
            border: 1px solid #4CAF50;
            border-radius: 12px;
            padding: 20px;
            width: 300px;
            height: 240px;
            box-shadow: 0 4px 12px rgba(76, 175, 80, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
          }

          .zekr-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(76, 175, 80, 0.6);
          }

          .zekr-text {
            font-size: 18px;
            color: #BDBDBD;
            line-height: 1.6;
            direction: rtl;
            text-align: right;
            height: 150px;
            overflow-y: auto;
          }

          .footer {
            text-align: center;
            padding: 20px;
            color: #FFFFFF;
            font-size: 16px;
            background-color: #388E3C;
            margin-top: 50px;
            border-radius: 10px;
          }

          .section + .section {
            margin-top: 40px;
          }

          .zekr-box .zekr-text {
            font-family: "Arial", sans-serif;
          }
        </style>
      </head>

      <body>

        <h1>🌙 أذكار وأدعية يومية</h1>

        <xsl:for-each select="azkar/category">
          <div class="section">
            <h2 class="section-title">
              <i class="fa-solid fa-star"></i>
              <xsl:value-of select="@name"/>
            </h2>

            <div class="container">
              <xsl:for-each select="zekr">
                <div class="zekr-box">
                  <div class="zekr-text">
                    <xsl:value-of select="."/>
                  </div>
                </div>
              </xsl:for-each>
            </div>
          </div>
        </xsl:for-each>

        <div class="footer">
          🕊️ سبحان الله، والحمد لله، ولا إله إلا الله، والله أكبر
        </div>

      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>
