.class public final Lcom/google/android/youtube/core/model/Video;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field public final accessControl:Ljava/util/Map;

.field public final adultContent:Z

.field public final captionTracksUri:Landroid/net/Uri;

.field public final categoryLabel:Ljava/lang/String;

.field public final categoryTerm:Ljava/lang/String;

.field public final claimed:Z

.field public final commentsUri:Landroid/net/Uri;

.field public final contentRatings:Ljava/util/List;

.field public final defaultThumbnailUri:Landroid/net/Uri;

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

.field public final movie:Lcom/google/android/youtube/core/model/Video$Movie;

.field public final mqThumbnailUri:Landroid/net/Uri;

.field public final owner:Ljava/lang/String;

.field public final ownerDisplayName:Ljava/lang/String;

.field public final ownerUri:Landroid/net/Uri;

.field public final pricing:Ljava/util/List;

.field public final privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

.field public final pro:Lcom/google/android/youtube/core/model/r;

.field public final publishedDate:Ljava/util/Date;

.field public final rateUri:Landroid/net/Uri;

.field public final relatedUri:Landroid/net/Uri;

.field public final restrictedCountries:Ljava/util/Set;

.field public final showSubtitlesAlways:Z

.field public final showSubtitlesByDefault:Z

.field public final state:Lcom/google/android/youtube/core/model/Video$State;

.field public final streams:Ljava/util/Set;

.field public final tags:Ljava/lang/String;

.field public final threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field public final thumbnailUri:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final title:Ljava/lang/String;

.field public final trailer:Lcom/google/android/youtube/core/model/s;

.field public final uploadedDate:Ljava/util/Date;

.field public final viewCount:I

.field public final watchUri:Landroid/net/Uri;

.field public final where:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 715
    const-string v0, "yt:cc_default_lang=([a-zA-Z]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Video;->DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;ZLcom/google/android/youtube/core/model/r;Ljava/util/List;Landroid/net/Uri;ZLcom/google/android/youtube/core/model/Video$ThreeDSource;Ljava/lang/String;)V
    .registers 47
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    const-string v1, "youTubeId can\'t be empty"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 576
    const-string v1, "streams can\'t be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    .line 577
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    .line 578
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    .line 579
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Video;->defaultThumbnailUri:Landroid/net/Uri;

    .line 580
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    .line 581
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    .line 582
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    .line 583
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    .line 584
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    .line 585
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    .line 586
    iput-object p12, p0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    .line 587
    iput-object p13, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    .line 588
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    .line 589
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    .line 590
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    .line 591
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    .line 592
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    .line 593
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    .line 594
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->ownerUri:Landroid/net/Uri;

    .line 595
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    .line 596
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    .line 597
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    .line 598
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    .line 599
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    .line 600
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    .line 601
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 602
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    .line 603
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    .line 604
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->where:Ljava/lang/String;

    .line 605
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    .line 606
    const-string v1, "contentRatings can\'t be null"

    move-object/from16 v0, p32

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->contentRatings:Ljava/util/List;

    .line 608
    const-string v1, "state can\'t be null"

    move-object/from16 v0, p33

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 609
    const-string v1, "restrictedCountries can\'t be null"

    move-object/from16 v0, p34

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    .line 611
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    .line 612
    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    .line 613
    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    .line 614
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    .line 616
    if-nez p42, :cond_131

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/core/model/Video;->hasQuality(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Z

    move-result v1

    if-eqz v1, :cond_131

    const/4 v1, 0x1

    :goto_be
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    .line 617
    if-eqz p25, :cond_133

    const-string v1, "yt:cc=alwayson"

    move-object/from16 v0, p25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_133

    const/4 v1, 0x1

    :goto_cd
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    .line 618
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    if-nez v1, :cond_df

    if-eqz p25, :cond_135

    const-string v1, "yt:cc=on"

    move-object/from16 v0, p25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_135

    :cond_df
    const/4 v1, 0x1

    :goto_e0
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesByDefault:Z

    .line 620
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/r;

    .line 621
    move-object/from16 v0, p39

    instance-of v1, v0, Lcom/google/android/youtube/core/model/Video$Movie;

    if-eqz v1, :cond_137

    move-object/from16 v1, p39

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Movie;

    :goto_f0
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    .line 622
    move-object/from16 v0, p39

    instance-of v1, v0, Lcom/google/android/youtube/core/model/s;

    if-eqz v1, :cond_139

    move-object/from16 v1, p39

    check-cast v1, Lcom/google/android/youtube/core/model/s;

    :goto_fc
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/s;

    .line 623
    move-object/from16 v0, p39

    instance-of v1, v0, Lcom/google/android/youtube/core/model/Video$Episode;

    if-eqz v1, :cond_13b

    check-cast p39, Lcom/google/android/youtube/core/model/Video$Episode;

    :goto_106
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    .line 624
    const-string v1, "pricing can\'t be null"

    move-object/from16 v0, p40

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    .line 625
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    .line 626
    move/from16 v0, p42

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    .line 627
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 628
    invoke-static/range {p44 .. p44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13e

    :goto_12c
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    .line 629
    return-void

    .line 616
    :cond_131
    const/4 v1, 0x0

    goto :goto_be

    .line 617
    :cond_133
    const/4 v1, 0x0

    goto :goto_cd

    .line 618
    :cond_135
    const/4 v1, 0x0

    goto :goto_e0

    .line 621
    :cond_137
    const/4 v1, 0x0

    goto :goto_f0

    .line 622
    :cond_139
    const/4 v1, 0x0

    goto :goto_fc

    .line 623
    :cond_13b
    const/16 p39, 0x0

    goto :goto_106

    :cond_13e
    move-object/from16 p19, p44

    .line 628
    goto :goto_12c
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/youtube/core/model/Video;->unmodifiable(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private hasQuality(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 632
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 633
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v0, p2, :cond_4

    .line 634
    const/4 v0, 0x1

    .line 637
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 732
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unmodifiable(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1515
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne p0, v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_4
.end method

.method private static unmodifiable(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 1519
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne p0, v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_4
.end method

.method private static unmodifiable(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 1523
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p0, v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_4
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 5

    .prologue
    .line 736
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Video$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->streams(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->defaultThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->duration(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->ownerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->ownerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->location(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->where:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->where(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->contentRatings:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->is3d(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource(Lcom/google/android/youtube/core/model/Video$ThreeDSource;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v2

    .line 782
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_186

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    move-object v1, v0

    .line 783
    :goto_115
    if-eqz v1, :cond_152

    .line 784
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_19f

    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 786
    :goto_11f
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/youtube/core/model/r;->f:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/youtube/core/model/r;->g:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/youtube/core/model/r;->h:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/youtube/core/model/r;->i:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/youtube/core/model/r;->j:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/youtube/core/model/r;->k:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/youtube/core/model/r;->l:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/youtube/core/model/r;->m:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 797
    :cond_152
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 798
    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 810
    :cond_185
    :goto_185
    return-object v2

    .line 782
    :cond_186
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v0

    if-eqz v0, :cond_190

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/s;

    move-object v1, v0

    goto :goto_115

    :cond_190
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_19b

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    move-object v1, v0

    goto/16 :goto_115

    :cond_19b
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_115

    .line 784
    :cond_19f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v0

    if-eqz v0, :cond_1a9

    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    goto/16 :goto_11f

    :cond_1a9
    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    goto/16 :goto_11f

    .line 805
    :cond_1ad
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v0

    if-eqz v0, :cond_185

    .line 806
    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/s;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/s;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_185
.end method

.method public final couldBeMusicVideo()Z
    .registers 3

    .prologue
    .line 677
    const-string v0, "Music"

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final couldHaveBranding()Z
    .registers 2

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 647
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_6

    .line 648
    const/4 v0, 0x0

    .line 651
    :goto_5
    return v0

    .line 650
    :cond_6
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    .line 651
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final getDefaultSubtitleLanguageCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 719
    sget-object v0, Lcom/google/android/youtube/core/model/Video;->DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 721
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isCountryRestricted(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final isEpisode()Z
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isLive()Z
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isMonetized(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    if-eqz v0, :cond_12

    .line 665
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    .line 667
    :goto_f
    return v0

    .line 665
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 667
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    goto :goto_f
.end method

.method public final isMovie()Z
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isTrailer()Z
    .registers 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/s;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video[id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
