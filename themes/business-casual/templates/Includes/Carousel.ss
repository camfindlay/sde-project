<div id="carouselslides" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators hidden-xs">
        <% loop $CarouselSlides %>
            <li data-target="#carouselslides" data-slide-to="$Pos(0)" class="<% if $First %>active<% end_if %>"></li>
        <% end_loop %>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <% loop $CarouselSlides %>
        <div class="item <% if $First %>active<% end_if %>">
            <img class="img-responsive img-full" src="$Photo.CroppedFocusedImage(1110,531).URL" alt="$Photo.Title">
        </div>
        <% end_loop %>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carouselslides" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#carouselslides" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>