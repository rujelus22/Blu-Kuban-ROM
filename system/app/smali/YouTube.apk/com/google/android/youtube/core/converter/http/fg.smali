.class final Lcom/google/android/youtube/core/converter/http/fg;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 586
    const-string v1, "scheme"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    const-string v2, "http://gdata.youtube.com/schemas/2007/mediatypes.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 588
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/eg;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 606
    :cond_23
    :goto_23
    return-void

    .line 589
    :cond_24
    const-string v2, "http://gdata.youtube.com/schemas/2007/releasemediums.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 590
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/eg;->f()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addReleaseMedium(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_23

    .line 591
    :cond_3a
    const-string v2, "http://gdata.youtube.com/schemas/2007/moviegenres.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 592
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/eg;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 593
    if-eqz v1, :cond_52

    .line 594
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addGenre(Lcom/google/android/youtube/core/model/q;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_23

    .line 596
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown movie genre code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_23

    .line 598
    :cond_65
    const-string v2, "http://gdata.youtube.com/schemas/2007/showgenres.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 599
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/eg;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 600
    if-eqz v1, :cond_7d

    .line 601
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addGenre(Lcom/google/android/youtube/core/model/q;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_23

    .line 603
    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown show genre code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_23
.end method
