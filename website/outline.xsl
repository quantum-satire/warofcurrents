<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="currentColl" select="collection('documents')"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>War of Currents</title>
                <link rel="icon" href="favicon.png" />
                <link rel="stylesheet" type="text/css" href="styling.css" />
                <script type="text/javascript" src="style.js">/**/</script>
            </head>
            <body>
                <div class="titleImage">
                    <a href="index.html"><img class="title" src="woc.png" alt="War of Currents" /></a>
                </div>
                <div class="sticky">
                    <div id="id" class="title"> War of Currents </div>
                    <div class="menu">
                        <div class="dropdown">
                            <a class="dropbtn" href="index.html">Home</a>
                        </div> | <div class="dropdown">
                            <a class="dropbtn">About</a>
                            <div class="dropdown-content">
                                <a href="aboutTeam.html">The Team</a>
                                <a href="about.html">The Project</a>
                            </div>
                        </div> | <div class="dropdown">
                            <a class="dropbtn">Analysis</a>
                            <div class="dropdown-content">
                                <a href="outline.html">Outline</a>
                                <a href="#">Timeline</a>
                            </div>
                        </div>
                    </div>
                </div>
                <h2>Table of Contents</h2>
                <ul><xsl:apply-templates select="currentColl//body" mode="toc"/></ul>
                <hr/>
                <div id="main">
                    <xsl:apply-templates select="$currentColl//body"/>
                </div>
                <div class="license">
                    <span><strong>Created by: </strong> A. Hall, A. Newton, and J. Downey. <a rel="license"
                        href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img
                            alt="Creative Commons License" style="border-width:0"
                            src="https://licensebuttons.net/l/by-nc-sa/4.0/80x15.png" /></a><a
                                rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"></a>
                        <a href="http://newtfire.org/firebellies.html">Powered by firebellies</a>.</span>
                </div>
            </body>
            
        </html>
    </xsl:template>
</xsl:stylesheet>