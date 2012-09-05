.class public final Lcom/google/android/youtube/core/model/Video$Builder;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
.field private accessControl:Ljava/util/Map;
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

.field private adultContent:Z

.field private availabilityEnd:Ljava/util/Date;

.field private availabilityStart:Ljava/util/Date;

.field private captionTracksUri:Landroid/net/Uri;

.field private categoryLabel:Ljava/lang/String;

.field private categoryTerm:Ljava/lang/String;

.field private claimed:Z

.field private commentsUri:Landroid/net/Uri;

.field private contentRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Rating;",
            ">;"
        }
    .end annotation
.end field

.field private credits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private dislikesCount:I

.field private duration:I

.field private editUri:Landroid/net/Uri;

.field private episodeNumber:Ljava/lang/String;

.field private favoriteCount:I

.field private genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video$Genre;",
            ">;"
        }
    .end annotation
.end field

.field private hqThumbnailUri:Landroid/net/Uri;

.field private id:Ljava/lang/String;

.field private is3d:Z

.field private likesCount:I

.field private liveEventUri:Landroid/net/Uri;

.field private location:Ljava/lang/String;

.field private mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

.field private moderatedAutoplay:Z

.field private monetize:Z

.field private monetizeExceptionCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Ljava/lang/String;

.field private posterUri:Landroid/net/Uri;

.field private pricing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;"
        }
    .end annotation
.end field

.field private privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

.field private publishedDate:Ljava/util/Date;

.field private rateUri:Landroid/net/Uri;

.field private relatedUri:Landroid/net/Uri;

.field private releaseDate:Ljava/util/Date;

.field private releaseMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private restrictedCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seasonTitle:Ljava/lang/String;

.field private seasonUri:Landroid/net/Uri;

.field private showTitle:Ljava/lang/String;

.field private showUri:Landroid/net/Uri;

.field private state:Lcom/google/android/youtube/core/model/Video$State;

.field private streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/lang/String;

.field private threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field private thumbnailUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private trailerForUri:Landroid/net/Uri;

.field private trailersUri:Landroid/net/Uri;

.field private viewCount:I

.field private watchUri:Landroid/net/Uri;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    sget-object v0, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    return-void
.end method

.method private buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;
    .registers 15

    .prologue
    .line 947
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    iget-object v13, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/core/model/Video$Episode;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildMovie()Lcom/google/android/youtube/core/model/Video$Movie;
    .registers 10

    .prologue
    .line 922
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/model/Video$Movie;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildTrailer()Lcom/google/android/youtube/core/model/Video$Trailer;
    .registers 11

    .prologue
    .line 934
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Trailer;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/Video$Trailer;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;
    .registers 43
    .parameter "pro"

    .prologue
    .line 879
    new-instance v1, Lcom/google/android/youtube/core/model/Video;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    move-object/from16 v40, v0

    move-object/from16 v36, p1

    invoke-direct/range {v1 .. v40}, Lcom/google/android/youtube/core/model/Video;-><init>(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;ZLcom/google/android/youtube/core/model/Video$Pro;Ljava/util/List;Landroid/net/Uri;ZLcom/google/android/youtube/core/model/Video$ThreeDSource;)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 1379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 1380
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 1381
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 1382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 1383
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1384
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1385
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1387
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1388
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1389
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1390
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1391
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1392
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1393
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1394
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1395
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1396
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    .line 1397
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    .line 1398
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1399
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1400
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 1401
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1402
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    .line 1403
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    .line 1404
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1405
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1406
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1407
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1408
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1409
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1410
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1411
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    .line 1412
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1414
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1415
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1416
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1417
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1418
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1419
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1420
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1422
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1423
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1424
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1425
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1426
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1428
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1429
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    .line 1430
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    .line 1431
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 1432
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1321
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1322
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1323
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1324
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1325
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1326
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1327
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1328
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1330
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1331
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1332
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1333
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1334
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1335
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1336
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1337
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1338
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1339
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1340
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1341
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1343
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1344
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1345
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1346
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1347
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1348
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1349
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1350
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1351
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1352
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1353
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1354
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1356
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1358
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1359
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1360
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1361
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1362
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1363
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1365
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1366
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1367
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1368
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1371
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1372
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1373
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1374
    return-void
.end method


# virtual methods
.method public accessControl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 4
    .parameter "action"
    .parameter "permission"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1106
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    return-object p0
.end method

.method public accessControl(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1098
    .local p1, accessControl:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1099
    return-object p0
.end method

.method public addContentRating(Lcom/google/android/youtube/core/model/Rating;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter "rating"

    .prologue
    .line 1131
    const-string v0, "rating can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1135
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    return-object p0
.end method

.method public addCredit(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 5
    .parameter "role"
    .parameter "name"

    .prologue
    .line 1217
    const-string v1, "role may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string v1, "name may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 1220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1222
    :cond_15
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1223
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_29

    .line 1224
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1225
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :cond_29
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    return-object p0
.end method

.method public addGenre(Lcom/google/android/youtube/core/model/Video$Genre;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter "genre"

    .prologue
    .line 1203
    const-string v0, "genre may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1205
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1207
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    return-object p0
.end method

.method public addPricing(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter "structure"

    .prologue
    .line 1292
    const-string v0, "structure may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1294
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1296
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    return-object p0
.end method

.method public addReleaseMedium(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter "releaseMedium"

    .prologue
    .line 1189
    const-string v0, "releaseMedium may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1193
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    return-object p0
.end method

.method public addStream(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter "stream"

    .prologue
    .line 974
    const-string v0, "stream may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 976
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 978
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 979
    return-object p0
.end method

.method public adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "adultContent"

    .prologue
    .line 1121
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1122
    return-object p0
.end method

.method public availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "availabilityEnd"

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1243
    return-object p0
.end method

.method public availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "availabilityStart"

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1238
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Video;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 851
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    :goto_7
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 853
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    :goto_f
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 854
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    :goto_17
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 855
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    :goto_1f
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 856
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    if-nez v0, :cond_3e

    .line 857
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    .line 873
    :goto_29
    return-object v0

    .line 851
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_7

    .line 853
    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    .line 854
    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_17

    .line 855
    :cond_39
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1f

    .line 859
    :cond_3e
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    :goto_44
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 860
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    :goto_4c
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 861
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    :goto_54
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 862
    sget-object v0, Lcom/google/android/youtube/core/model/Video$1;->$SwitchMap$com$google$android$youtube$core$model$Video$MediaType:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_92

    .line 873
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 859
    :cond_68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_44

    .line 860
    :cond_6d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4c

    .line 861
    :cond_72
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_54

    .line 864
    :pswitch_77
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 867
    :pswitch_80
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildTrailer()Lcom/google/android/youtube/core/model/Video$Trailer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 870
    :pswitch_89
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildMovie()Lcom/google/android/youtube/core/model/Video$Movie;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/Video$Pro;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 862
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_77
        :pswitch_80
        :pswitch_89
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1023
    return-object p0
.end method

.method public categoryLabel(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "label"

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    .line 1077
    return-object p0
.end method

.method public categoryTerm(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "term"

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    .line 1072
    return-object p0
.end method

.method public claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "claimed"

    .prologue
    .line 1159
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1160
    return-object p0
.end method

.method public commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1008
    return-object p0
.end method

.method public contentRatings(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Rating;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1126
    .local p1, contentRatings:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Rating;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1127
    return-object p0
.end method

.method public credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, credits:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1213
    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "description"

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1087
    return-object p0
.end method

.method public dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "dislikesCount"

    .prologue
    .line 1052
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1053
    return-object p0
.end method

.method public duration(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "seconds"

    .prologue
    .line 1032
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1033
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1003
    return-object p0
.end method

.method public episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "number"

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1278
    return-object p0
.end method

.method public favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "count"

    .prologue
    .line 1042
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1043
    return-object p0
.end method

.method public genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video$Genre;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1198
    .local p1, genres:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video$Genre;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1199
    return-object p0
.end method

.method public getPublishedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 997
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 998
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "id"

    .prologue
    .line 964
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 965
    return-object p0
.end method

.method public is3d(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "is3d"

    .prologue
    .line 1306
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    .line 1307
    return-object p0
.end method

.method public likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "likesCount"

    .prologue
    .line 1047
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1048
    return-object p0
.end method

.method public liveEventUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "liveEventUri"

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    .line 1302
    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "location"

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    .line 1112
    return-object p0
.end method

.method public mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "mediaType"

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1180
    return-object p0
.end method

.method public moderatedAutoplay(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "moderatedAutoplay"

    .prologue
    .line 1174
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    .line 1175
    return-object p0
.end method

.method public monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "monetize"

    .prologue
    .line 1164
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1165
    return-object p0
.end method

.method public monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1170
    return-object p0
.end method

.method public owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "name"

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1058
    return-object p0
.end method

.method public posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "posterUri"

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1248
    return-object p0
.end method

.method public pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/PricingStructure;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1287
    .local p1, pricing:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/PricingStructure;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1288
    return-object p0
.end method

.method public privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 4
    .parameter "privacy"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-eq v0, v1, :cond_8

    .line 1092
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 1094
    :cond_8
    return-object p0
.end method

.method public publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "date"

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1063
    return-object p0
.end method

.method public rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1018
    return-object p0
.end method

.method public relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1013
    return-object p0
.end method

.method public releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "releaseDate"

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1233
    return-object p0
.end method

.method public releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, releaseMediums:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1185
    return-object p0
.end method

.method public restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1155
    return-object p0
.end method

.method public seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "seasonTitle"

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1268
    return-object p0
.end method

.method public seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "seasonUri"

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1273
    return-object p0
.end method

.method public showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "showTitle"

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1258
    return-object p0
.end method

.method public showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "showUri"

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1263
    return-object p0
.end method

.method public state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter "state"

    .prologue
    .line 1140
    const-string v0, "state can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1141
    return-object p0
.end method

.method public streams(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, streams:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/youtube/core/model/Stream;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 970
    return-object p0
.end method

.method public tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "tags"

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1082
    return-object p0
.end method

.method public threeDSource(Lcom/google/android/youtube/core/model/Video$ThreeDSource;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "threeDSource"

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 1312
    return-object p0
.end method

.method public thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 989
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "title"

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1028
    return-object p0
.end method

.method public trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "trailerForUri"

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1283
    return-object p0
.end method

.method public trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "trailersUri"

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1253
    return-object p0
.end method

.method public viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "count"

    .prologue
    .line 1037
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1038
    return-object p0
.end method

.method public watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 984
    return-object p0
.end method

.method public where(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter "where"

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    .line 1117
    return-object p0
.end method
