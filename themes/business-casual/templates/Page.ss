<!DOCTYPE html>
<html lang="$ContentLocal">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    $MetaTags(false)

    <title>$Title - $SiteConfig.Title</title>

</head>

<body>

<div class="brand">$SiteConfig.Title</div>
<div class="address-bar">$SiteConfig.Tagline</div>

<nav class="navbar navbar-default" role="navigation">
    <% include Navigation %>
</nav>

<div class="container">
    $Layout
</div>
<!-- /.container -->

<footer>
    <% include Footer %>
</footer>

</body>

</html>
