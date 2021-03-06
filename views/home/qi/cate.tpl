<section id="hero" class="scrollme">
    <div class="container-fluid element-img" style="background: url(http://static.iphpt.com/category.jpg) no-repeat center center fixed;background-size: cover">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 vertical-align cover boost text-center">
                <div class="center-me animateme" data-when="exit" data-from="0" data-to="0.6" data-opacity="0" data-translatey="100">
                    <div>

                        <h2>
                            <a href="#intro" class="more scrolly" style="color: #e0f507;">
                                命定的局限尽可永在，不屈的挑战却不可须臾或缺！
                            </a>
                        </h2>

                        <h2></h2>
                        <p></p>


                    </div>
                </div>
            </div>
            <!-- // .col-md-12 -->
        </div>
        <div class="herofade beige-dk"></div>
    </div>
</section>

<!-- Height spacing helper -->
<div class="heightblock"></div>
<!-- // End height spacing helper -->

<!-- ============================ END Hero Image =========================== -->




<section id="services">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="row boxes">
                    {{ range $key,$value := .posts }}
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 wow fadeInUp" data-wow-delay="0.3s">

                        <h4 class="title"><a href="/detail/{{$value.Id}}">{{$value.Title}}</a></h4>

                        <p><time datetime="{{$value.CreatedAt}}"><a href="/detail/{{$value.Id}}">       {{date $value.CreatedAt "Y-m-d"}}</a></time></p>
                    </div>
                            {{if  $key | iphpt_rem}}
                            </div><div class="row boxes">
                            {{end}}
                    {{end}}
                </div>
            </div>
        </div>
        <nav class="pagination" role="pagination">
            {{ if ne .currentPage   1 }}
                <a class="pull-left" href="?page={{.lastPage}}">← Newer Posts</a>
            {{end}}
            {{ if ne .currentPage  .nextPage }}
                <a class="pull-right" href="?page={{.nextPage}}">Older Posts →</a>
            {{end}}

        </nav>
    </div>
</section>