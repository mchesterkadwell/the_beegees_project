xquery version "3.0"; (:Fortement inspiré du cours de Erik Siegel & Adam Retter édité par O'Reilly:)
declare namespace html = "http://www.w3.org/1999/xhtml";
declare namespace functx = "http://www.functx.com";
declare option exist:serialize "method=html media-type=text/html"; (:Indiquer que le document produit est du html:)
declare variable $page-title := "Ressources de la base de données";
<html class="no-js" lang="en-GB">
  <head>
    <title>DEMM Hack Prototype</title>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="description" content="This is a prototype digital manuscript edition made during the DEMM Hack week at Cambridge University Library.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="libs/bootstrap-4.0.0-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
  </head>
  <body>
    <div><h3>Search tool</h3>
      <form
        method="POST"
        action="search_results.xq">
        <input
          type="text"
          name="searchphrase"
          size="40"/>
        <fieldset class="f2">
          <div class="box" name="form"><input type="checkbox" name="select_type_of_text1" id="option1" value="1">Search in the main text</div>
          <div class="box" name="form"><input type="checkbox" name="select_type_of_text2" id="option2" value="2">Search in the marginalia</div>
          <div class="box" name="form"><input type="checkbox" name="select_type_of_text3" id="option3" value="3">Search in the interlinear glosses</div>
        </fieldset>
        <input
          type="submit"
          value="Let's do this!"/>
      </form>
    </div>
    <div class="container-fluid" id="site-wrapper">
      <div class="row py-5">
        <div class="col-1 col-5 mx-auto">
          <h1>Transcription</h1>
          <fieldset class="f2"> <!--To be continued, and the .js file too-->
            <legend>
              <h3>Options</h3>
            </legend>
            <div class="box" name="form"><input type="checkbox" name="fieldset2-1" id="options1" class="mycheck-option" unchecked="unchecked"> Highlight the glossed part of the text</div>
          </fieldset>
          <!--THis is an example <a tabindex="0" data-toggle="popover" data-trigger="focus" title="Dismissible popover" data-content="And here's some amazing content. It's very engaging. Right?">Dismissible popover</a><br/>-->
          
           totiusque vitae rationem. <a id="call_1" class="apparat"><span
              id="link1"><span class="call">A</span> ad caelestis ordinis exempla<br/>
             formares</a></span>. Haecine praemia referimus tibi<br/>
           obsequentes; Atqui tu hanc sententiam Pla <br/>
          tonis ore sanxisti beatas fore res publicas.<br/>
          si eas vel studiosi sapientiae regerent. vel<br/>
          earum rectores studere sapientiae contigisset.<br/>
          Tu eiusdem viri ore hanc sapientibus capessendae<br/>
          rei .p(ublicae). necessariam causam esse monuisti;<br/>
          ne improbis flagitiosisque civibus urbium relicta<br/>
          gubernacula. pestem bonis ac perniciem<br/>
          ferrent. Hanc igitur auctoritatem secutus.<br/>
          quod a te inter secreta otia didiceram. trans<br/>
          ferre in actum publicae administrationis optavi;<br/>
          Tu mihi et qui te sapientium mentibus inseruit<br/>
          deus conscii nullum me ad magistratum nisi<br/>
          commune omnium bonorum studium de<br/>
          tulisse. Inde cum improbis graves inexorabi<br/>
          lesque discordiae et quod conscientiae liber<br/>
          tas habet. pro tuendo iure spreta potentiorum<br/>
          semper offensio. Quotiens ego conigastum.<br/>
          inimbecillis cuiusque fortunas impetum fa<br/>
          cientem. obvius excepi. quotiens trigguillam <br/>
        </div>
        <aside class="col col-6" id="sidebar">
          <h2>Marginalia (more information <i>here</i>)</h2>
          <span class="marginnote" style="visibility: visible;" id="popup1_4">A Provinciales super milites qui a militia liberi sunt. Et nulli quicquam debent. 
            Idem prolitteri dicti quod soli prole faveant;</span><br/>
          <br/>
          <br/>
          <br/>
        </aside>
      </div>
    </div>
    <script id="template-note" type="text/x-handlebars-template">
      {{!-- {{This is a Handlebars template}} --}}
      <div class="sidebar-note border border-transparent rounded my-3 p-3" data-note-id="{{id}}">
        <h5>{{type}}</h5>
        {{{content}}}<br/> 
        <p class="text-right"><small>{{author}}</small><br/>
      </div>
    </script>
    <script src="libs/handlebars/handlebars-v4.0.11.js"></script>
    <script src="libs/jquery/jquery-3.3.1.min.js"></script>
    <script src="libs/popper/popper.min.js"></script>
    <script src="libs/bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>
    <script src="js/application.js" charset="utf-8"></script>
  </body>
</html>
