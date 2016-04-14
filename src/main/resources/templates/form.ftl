<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>思い知らせてやるわ〜ww</title>
  <link href="https://cdn.jsdelivr.net/bootstrap.material-design/0.5.9/css/bootstrap-material-design.min.css" rel="stylesheet"/>
  <link href="https://cdn.jsdelivr.net/bootstrap.material-design/0.5.9/css/ripples.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/jquery/1.12.3/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bootstrap.material-design/0.5.9/js/material.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bootstrap.material-design/0.5.9/js/ripples.min.js"></script>
  <style>
<!--
html {
    height: 100%;
}
body {
    background-color: hsl(34, 53%, 82%);
    background-image: repeating-linear-gradient(45deg, transparent 5px, hsla(197, 62%, 11%, 0.5) 5px, hsla(197, 62%, 11%, 0.5) 10px,
      hsla(5, 53%, 63%, 0) 10px, hsla(5, 53%, 63%, 0) 35px, hsla(5, 53%, 63%, 0.5) 35px, hsla(5, 53%, 63%, 0.5) 40px,
      hsla(197, 62%, 11%, 0.5) 40px, hsla(197, 62%, 11%, 0.5) 50px, hsla(197, 62%, 11%, 0) 50px, hsla(197, 62%, 11%, 0) 60px,
      hsla(5, 53%, 63%, 0.5) 60px, hsla(5, 53%, 63%, 0.5) 70px, hsla(35, 91%, 65%, 0.5) 70px, hsla(35, 91%, 65%, 0.5) 80px,
      hsla(35, 91%, 65%, 0) 80px, hsla(35, 91%, 65%, 0) 90px, hsla(5, 53%, 63%, 0.5) 90px, hsla(5, 53%, 63%, 0.5) 110px,
      hsla(5, 53%, 63%, 0) 110px, hsla(5, 53%, 63%, 0) 120px, hsla(197, 62%, 11%, 0.5) 120px, hsla(197, 62%, 11%, 0.5) 140px
      ),
    repeating-linear-gradient(135deg, transparent 5px, hsla(197, 62%, 11%, 0.5) 5px, hsla(197, 62%, 11%, 0.5) 10px,
      hsla(5, 53%, 63%, 0) 10px, hsla(5, 53%, 63%, 0) 35px, hsla(5, 53%, 63%, 0.5) 35px, hsla(5, 53%, 63%, 0.5) 40px,
      hsla(197, 62%, 11%, 0.5) 40px, hsla(197, 62%, 11%, 0.5) 50px, hsla(197, 62%, 11%, 0) 50px, hsla(197, 62%, 11%, 0) 60px,
      hsla(5, 53%, 63%, 0.5) 60px, hsla(5, 53%, 63%, 0.5) 70px, hsla(35, 91%, 65%, 0.5) 70px, hsla(35, 91%, 65%, 0.5) 80px,
      hsla(35, 91%, 65%, 0) 80px, hsla(35, 91%, 65%, 0) 90px, hsla(5, 53%, 63%, 0.5) 90px, hsla(5, 53%, 63%, 0.5) 110px,
      hsla(5, 53%, 63%, 0) 110px, hsla(5, 53%, 63%, 0) 140px, hsla(197, 62%, 11%, 0.5) 140px, hsla(197, 62%, 11%, 0.5) 160px
    );
}
#form {
    background-color: #fcfcfc;
    padding: 5em;
}
-->
  </style>
<body>
  <div id="form" class="jumbotron">
  <form method="post" class="form-inline" action="${urlFor('tweet')}">
  <div class="form-group<#if tweet.hasErrors("where")> has-error</#if>">
      よし、<input type="text" class="form-control" size="50" name="where" value="${tweet.where!''}" placeholder="羽田に着いた"/>
      <span class="help-block hint"><#if tweet.hasErrors("where")>${tweet.getErrors("where")?join(",")}</#if></span>
  </div>
  <div class="form-group<#if tweet.hasErrors("what")> has-error</#if>">
      どれ、<input type="text" class="form-control" name="what" value="${tweet.what!''}" placeholder="関西の技術者の実力"/>を
      <span class="help-block"><#if tweet.hasErrors("what")>${tweet.getErrors("what")?join(",")}</#if></span>
  </div>
  <div class="form-group<#if tweet.hasErrors("whom")> has-error</#if>">
      <input type="text" class="form-control" name="whom" value="${tweet.whom!''}" placeholder="東京勢">に思い知らせてやるわ〜ww
      <span class="help-block"><#if tweet.hasErrors("whom")>${tweet.getErrors("whom")?join(",")}</#if></span>
  </div>
  <button id="btn-tweet" type="submit" class="btn btn-raised btn-primary">ツイート</button>
  </form>
  </div>
  <script>
$.material.init();
  </script>
</body>
</html>
