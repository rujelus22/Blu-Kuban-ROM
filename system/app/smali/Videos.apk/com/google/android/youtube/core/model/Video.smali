.class public final Lcom/google/android/youtube/core/model/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Video$1;,
        Lcom/google/android/youtube/core/model/Video$Builder;,
        Lcom/google/android/youtube/core/model/Video$MediaType;,
        Lcom/google/android/youtube/core/model/Video$Trailer;,
        Lcom/google/android/youtube/core/model/Video$Episode;,
        Lcom/google/android/youtube/core/model/Video$Movie;,
        Lcom/google/android/youtube/core/model/Video$Pro;,
        Lcom/google/android/youtube/core/model/Video$Genre;,
        Lcom/google/android/youtube/core/model/Video$ThreeDSource;,
        Lcom/google/android/youtube/core/model/Video$Privacy;,
        Lcom/google/android/youtube/core/model/Video$State;
    }
.end annotation


# static fields
.field private static DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field public final accessControl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final adultContent:Z

.field public final captionTracksUri:Landroid/net/Uri;

.field public final categoryLabel:Ljava/lang/String;

.field public final categoryTerm:Ljava/lang/String;

.field public final claimed:Z

.field public final commentsUri:Landroid/net/Uri;

.field public final contentRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public final description:Ljava/lang/String;

.field public final dislikesCount:I

.field public final duration:I

.field public final editUri:Landroid/net/Uri;

.field public final episode:Lcom/google/android/youtube/core/model/Video$Episode;

.field public final favoriteCount:I

.field public final hqThumbnailUri:Landroid/net/Uri;

.field public final id:Ljava/lang/String;

.field public final is3d:Z

.field public final isHd:Z

.field public final likesCount:I

.field public final liveEventUri:Landroid/net/Uri;

.field public final location:Ljava/lang/String;

.field public final moderatedAutoplay:Z

.field public final monetize:Z

.field public final monetizeExceptionCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final movie:Lcom/google/android/youtube/core/model/Video$Movie;

.field public final owner:Ljava/lang/String;

.field public final pricing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;"
        }
    .end annotation
.end field

.field public final privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

.field public final pro:Lcom/google/android/youtube/core/model/Video$Pro;

.field public final publishedDate:Ljava/util/Date;

.field public final rateUri:Landroid/net/Uri;

.field public final relatedUri:Landroid/net/Uri;

.field public final restrictedCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final showSubtitlesAlways:Z

.field public final showSubtitlesByDefault:Z

.field public final state:Lcom/google/android/youtube/core/model/Video$State;

.field public final streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;"
        }
    .end annotation
.end field

.field public final tags:Ljava/lang/String;

.field public final threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field public final thumbnailUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;

.field public final trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

.field public final viewCount:I

.field public final watchUri:Landroid/net/Uri;

.field public final where:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 688
    const-string v0, "yt:cc_default_lang=([a-zA-Z]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Video;->DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;ZLcom/google/android/youtube/core/model/Video$Pro;Ljava/util/List;Landroid/net/Uri;ZLcom/google/android/youtube/core/model/Video$ThreeDSource;)V
    .registers 42
    .parameter "id"
    .parameter
    .parameter "watchUri"
    .parameter "thumbnailUri"
    .parameter "hqThumbnailUri"
    .parameter "editUri"
    .parameter "commentsUri"
    .parameter "relatedUri"
    .parameter "rateUri"
    .parameter "captionTracksUri"
    .parameter "title"
    .parameter "duration"
    .parameter "viewCount"
    .parameter "favoriteCount"
    .parameter "likesCount"
    .parameter "dislikesCount"
    .parameter "owner"
    .parameter "publishedDate"
    .parameter "categoryTerm"
    .parameter "categoryLabel"
    .parameter "tags"
    .parameter "description"
    .parameter "privacy"
    .parameter
    .parameter "location"
    .parameter "where"
    .parameter "adultContent"
    .parameter
    .parameter "state"
    .parameter
    .parameter "claimed"
    .parameter "monetize"
    .parameter
    .parameter "moderatedAutoplay"
    .parameter "pro"
    .parameter
    .parameter "liveEventUri"
    .parameter "is3d"
    .parameter "threeDSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video$Privacy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Rating;",
            ">;",
            "Lcom/google/android/youtube/core/model/Video$State;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/youtube/core/model/Video$Pro;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/google/android/youtube/core/model/Video$ThreeDSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 551
    .local p2, streams:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/youtube/core/model/Stream;>;"
    .local p24, accessControl:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p28, contentRatings:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Rating;>;"
    .local p30, restrictedCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p33, monetizeExceptionCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p36, pricing:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/PricingStructure;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const-string v1, "youTubeId can\'t be empty"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 554
    const-string v1, "streams can\'t be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    .line 555
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    .line 556
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    .line 557
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    .line 558
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    .line 559
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    .line 560
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    .line 561
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    .line 562
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    .line 563
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    .line 564
    iput p12, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    .line 565
    iput p13, p0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    .line 566
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    .line 567
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    .line 568
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    .line 569
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    .line 570
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    .line 571
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    .line 572
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    .line 573
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    .line 575
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 576
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    .line 577
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    .line 578
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->where:Ljava/lang/String;

    .line 579
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    .line 580
    const-string v1, "contentRatings can\'t be null"

    move-object/from16 v0, p28

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->contentRatings:Ljava/util/List;

    .line 582
    const-string v1, "state can\'t be null"

    move-object/from16 v0, p29

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 583
    const-string v1, "restrictedCountries can\'t be null"

    move-object/from16 v0, p30

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    .line 585
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    .line 586
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    .line 587
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    .line 588
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    .line 590
    if-nez p38, :cond_117

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/core/model/Video;->hasQuality(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Z

    move-result v1

    if-eqz v1, :cond_117

    const/4 v1, 0x1

    :goto_ae
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    .line 591
    if-eqz p21, :cond_119

    const-string v1, "yt:cc=alwayson"

    move-object/from16 v0, p21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_119

    const/4 v1, 0x1

    :goto_bd
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    .line 592
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    if-nez v1, :cond_cf

    if-eqz p21, :cond_11b

    const-string v1, "yt:cc=on"

    move-object/from16 v0, p21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11b

    :cond_cf
    const/4 v1, 0x1

    :goto_d0
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesByDefault:Z

    .line 594
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    .line 595
    move-object/from16 v0, p35

    instance-of v1, v0, Lcom/google/android/youtube/core/model/Video$Movie;

    if-eqz v1, :cond_11d

    move-object/from16 v1, p35

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Movie;

    :goto_e0
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    .line 596
    move-object/from16 v0, p35

    instance-of v1, v0, Lcom/google/android/youtube/core/model/Video$Trailer;

    if-eqz v1, :cond_11f

    move-object/from16 v1, p35

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Trailer;

    :goto_ec
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    .line 597
    move-object/from16 v0, p35

    instance-of v1, v0, Lcom/google/android/youtube/core/model/Video$Episode;

    if-eqz v1, :cond_121

    check-cast p35, Lcom/google/android/youtube/core/model/Video$Episode;

    .end local p35
    :goto_f6
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    .line 598
    const-string v1, "pricing can\'t be null"

    move-object/from16 v0, p36

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    .line 599
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    .line 600
    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    .line 601
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 602
    return-void

    .line 590
    .restart local p35
    :cond_117
    const/4 v1, 0x0

    goto :goto_ae

    .line 591
    :cond_119
    const/4 v1, 0x0

    goto :goto_bd

    .line 592
    :cond_11b
    const/4 v1, 0x0

    goto :goto_d0

    .line 595
    :cond_11d
    const/4 v1, 0x0

    goto :goto_e0

    .line 596
    :cond_11f
    const/4 v1, 0x0

    goto :goto_ec

    .line 597
    :cond_121
    const/16 p35, 0x0

    goto :goto_f6
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private hasQuality(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Z
    .registers 6
    .parameter
    .parameter "quality"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;",
            "Lcom/google/android/youtube/core/model/Stream$Quality;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, streams:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/youtube/core/model/Stream;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Stream;

    .line 606
    .local v1, stream:Lcom/google/android/youtube/core/model/Stream;
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v2, p2, :cond_4

    .line 607
    const/4 v2, 0x1

    .line 610
    .end local v1           #stream:Lcom/google/android/youtube/core/model/Stream;
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unmodifiable(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne p0, v0, :cond_5

    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_4
    return-object p0

    .restart local p0       #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_4
.end method

.method private static unmodifiable(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1440
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne p0, v0, :cond_5

    .end local p0           #map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :goto_4
    return-object p0

    .restart local p0       #map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_4
.end method

.method private static unmodifiable(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1444
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p0, v0, :cond_5

    .end local p0           #set:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    :goto_4
    return-object p0

    .restart local p0       #set:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_4
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 7

    .prologue
    .line 709
    new-instance v3, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-direct {v3}, Lcom/google/android/youtube/core/model/Video$Builder;-><init>()V

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->streams(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->duration(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->location(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->where:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->where(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->contentRatings:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->is3d(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource(Lcom/google/android/youtube/core/model/Video$ThreeDSource;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 750
    .local v0, builder:Lcom/google/android/youtube/core/model/Video$Builder;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_167

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    .line 751
    .local v2, pro:Lcom/google/android/youtube/core/model/Video$Pro;
    :goto_f6
    if-eqz v2, :cond_133

    .line 752
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_17d

    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 754
    .local v1, mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;
    :goto_100
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->releaseMediums:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->genres:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->credits:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->releaseDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->availabilityStart:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->availabilityEnd:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->posterUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video$Pro;->trailersUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 765
    .end local v1           #mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;
    :cond_133
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 766
    sget-object v3, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->showTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->showUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->seasonUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Episode;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 778
    :cond_166
    :goto_166
    return-object v0

    .line 750
    .end local v2           #pro:Lcom/google/android/youtube/core/model/Video$Pro;
    :cond_167
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v3

    if-eqz v3, :cond_170

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    goto :goto_f6

    :cond_170
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v3

    if-eqz v3, :cond_17a

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    goto/16 :goto_f6

    :cond_17a
    const/4 v2, 0x0

    goto/16 :goto_f6

    .line 752
    .restart local v2       #pro:Lcom/google/android/youtube/core/model/Video$Pro;
    :cond_17d
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v3

    if-eqz v3, :cond_187

    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    goto/16 :goto_100

    :cond_187
    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    goto/16 :goto_100

    .line 773
    :cond_18b
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v3

    if-eqz v3, :cond_166

    .line 774
    sget-object v3, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Trailer;->trailerForUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_166
.end method

.method public couldHaveBranding()Z
    .registers 2

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 620
    instance-of v1, p1, Lcom/google/android/youtube/core/model/Video;

    if-nez v1, :cond_6

    .line 621
    const/4 v1, 0x0

    .line 624
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 623
    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 624
    .local v0, other:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public getDefaultSubtitleLanguageCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 691
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 692
    sget-object v1, Lcom/google/android/youtube/core/model/Video;->DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 693
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 694
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 697
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEpisode()Z
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLive()Z
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMonetized(Ljava/lang/String;)Z
    .registers 4
    .parameter "country"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    if-eqz v0, :cond_12

    .line 638
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    .line 640
    :goto_f
    return v0

    .line 638
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 640
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    goto :goto_f
.end method

.method public isMovie()Z
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTrailer()Z
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/Video$Trailer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video[id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
