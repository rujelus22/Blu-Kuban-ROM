.class public final Lcom/google/android/youtube/core/model/Video$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/j;
.implements Ljava/io/Serializable;


# instance fields
.field private accessControl:Ljava/util/Map;

.field private adultContent:Z

.field private availabilityEnd:Ljava/util/Date;

.field private availabilityStart:Ljava/util/Date;

.field private captionTracksUri:Landroid/net/Uri;

.field private categoryLabel:Ljava/lang/String;

.field private categoryTerm:Ljava/lang/String;

.field private claimed:Z

.field private commentsUri:Landroid/net/Uri;

.field private contentRatings:Ljava/util/List;

.field private credits:Ljava/util/Map;

.field private description:Ljava/lang/String;

.field private dislikesCount:I

.field private duration:I

.field private editUri:Landroid/net/Uri;

.field private episodeNumber:Ljava/lang/String;

.field private favoriteCount:I

.field private genres:Ljava/util/List;

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

.field private owner:Ljava/lang/String;

.field private ownerDisplayName:Ljava/lang/String;

.field private posterUri:Landroid/net/Uri;

.field private pricing:Ljava/util/List;

.field private privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

.field private publishedDate:Ljava/util/Date;

.field private rateUri:Landroid/net/Uri;

.field private relatedUri:Landroid/net/Uri;

.field private releaseDate:Ljava/util/Date;

.field private releaseMediums:Ljava/util/List;

.field private restrictedCountries:Ljava/util/Set;

.field private seasonTitle:Ljava/lang/String;

.field private seasonUri:Landroid/net/Uri;

.field private showTitle:Ljava/lang/String;

.field private showUri:Landroid/net/Uri;

.field private state:Lcom/google/android/youtube/core/model/Video$State;

.field private streams:Ljava/util/Set;

.field private tags:Ljava/lang/String;

.field private threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field private thumbnailUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private trailerForUri:Landroid/net/Uri;

.field private trailersUri:Landroid/net/Uri;

.field private uploadedDate:Ljava/util/Date;

.field private viewCount:I

.field private watchUri:Landroid/net/Uri;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    sget-object v0, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    return-void
.end method

.method private buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;
    .registers 15

    .prologue
    .line 961
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
    .line 936
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

.method private buildTrailer()Lcom/google/android/youtube/core/model/t;
    .registers 11

    .prologue
    .line 948
    new-instance v0, Lcom/google/android/youtube/core/model/t;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/t;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildVideo(Lcom/google/android/youtube/core/model/s;)Lcom/google/android/youtube/core/model/Video;
    .registers 45
    .parameter

    .prologue
    .line 891
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

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v37, p1

    invoke-direct/range {v1 .. v42}, Lcom/google/android/youtube/core/model/Video;-><init>(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;ZLcom/google/android/youtube/core/model/s;Ljava/util/List;Landroid/net/Uri;ZLcom/google/android/youtube/core/model/Video$ThreeDSource;Ljava/lang/String;)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 1404
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 1405
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 1406
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 1407
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 1408
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 1409
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1410
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1411
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1412
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1413
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1414
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1415
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1416
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1417
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1418
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1419
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1420
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    .line 1422
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1423
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    .line 1424
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    .line 1425
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1426
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 1428
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1429
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    .line 1430
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    .line 1431
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1432
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1433
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1434
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1435
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1436
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1437
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1438
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    .line 1439
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1441
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1442
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1445
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1447
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1448
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1449
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1450
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1451
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1452
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1453
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1454
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1455
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1456
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    .line 1457
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    .line 1458
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 1459
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    .line 1460
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1345
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1346
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1347
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1348
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1349
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1350
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1351
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1352
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1353
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1354
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1355
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1356
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1357
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1358
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1359
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1360
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1361
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1362
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1363
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1365
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1366
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1367
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1368
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1371
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1372
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1373
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1374
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1375
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1376
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1377
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1378
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1379
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1381
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1382
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1383
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1385
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1386
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1387
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1388
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1389
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1390
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1391
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1392
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1393
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1394
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1396
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1397
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1398
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1400
    return-void
.end method


# virtual methods
.method public final accessControl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1123
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1125
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    return-object p0
.end method

.method public final accessControl(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1118
    return-object p0
.end method

.method public final addContentRating(Lcom/google/android/youtube/core/model/Rating;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1150
    const-string v0, "rating can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1154
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    return-object p0
.end method

.method public final addCredit(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1236
    const-string v0, "role may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const-string v0, "name may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 1239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1241
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1242
    if-nez v0, :cond_29

    .line 1243
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1244
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_29
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    return-object p0
.end method

.method public final addGenre(Lcom/google/android/youtube/core/model/r;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1222
    const-string v0, "genre may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1226
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    return-object p0
.end method

.method public final addPricing(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1311
    const-string v0, "structure may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1313
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1315
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    return-object p0
.end method

.method public final addReleaseMedium(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1208
    const-string v0, "releaseMedium may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1209
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1212
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    return-object p0
.end method

.method public final addRestrictedCountry(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1164
    const-string v0, "country may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1165
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 1166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1168
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1169
    return-object p0
.end method

.method public final addStream(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter

    .prologue
    .line 988
    const-string v0, "stream may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 990
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 992
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 993
    return-object p0
.end method

.method public final adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1140
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1141
    return-object p0
.end method

.method public final availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1262
    return-object p0
.end method

.method public final availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1257
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Video;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 863
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    :goto_7
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 865
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    :goto_f
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 866
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    :goto_17
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 867
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    :goto_1f
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 868
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    if-nez v0, :cond_3e

    .line 869
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/s;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    .line 885
    :goto_29
    return-object v0

    .line 863
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_7

    .line 865
    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    .line 866
    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_17

    .line 867
    :cond_39
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1f

    .line 871
    :cond_3e
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    :goto_44
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 872
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    :goto_4c
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 873
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    :goto_54
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 874
    sget-object v0, Lcom/google/android/youtube/core/model/q;->a:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_92

    .line 885
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/s;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 871
    :cond_68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_44

    .line 872
    :cond_6d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4c

    .line 873
    :cond_72
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_54

    .line 876
    :pswitch_77
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/s;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 879
    :pswitch_80
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildTrailer()Lcom/google/android/youtube/core/model/t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/s;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 882
    :pswitch_89
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildMovie()Lcom/google/android/youtube/core/model/Video$Movie;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/s;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_29

    .line 874
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_77
        :pswitch_80
        :pswitch_89
    .end packed-switch
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public final captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1037
    return-object p0
.end method

.method public final categoryLabel(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    .line 1096
    return-object p0
.end method

.method public final categoryTerm(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    .line 1091
    return-object p0
.end method

.method public final claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1178
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1179
    return-object p0
.end method

.method public final commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1022
    return-object p0
.end method

.method public final contentRatings(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1146
    return-object p0
.end method

.method public final credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1232
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1106
    return-object p0
.end method

.method public final dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1066
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1067
    return-object p0
.end method

.method public final duration(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1046
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1047
    return-object p0
.end method

.method public final editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1017
    return-object p0
.end method

.method public final episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1297
    return-object p0
.end method

.method public final favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1056
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1057
    return-object p0
.end method

.method public final genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1218
    return-object p0
.end method

.method public final getThumbnailUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUploadedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 1012
    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 979
    return-object p0
.end method

.method public final is3d(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1325
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    .line 1326
    return-object p0
.end method

.method public final likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1061
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1062
    return-object p0
.end method

.method public final liveEventUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    .line 1321
    return-object p0
.end method

.method public final location(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    .line 1131
    return-object p0
.end method

.method public final mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1199
    return-object p0
.end method

.method public final moderatedAutoplay(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1193
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    .line 1194
    return-object p0
.end method

.method public final monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1183
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1184
    return-object p0
.end method

.method public final monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1189
    return-object p0
.end method

.method public final owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1072
    return-object p0
.end method

.method public final ownerDisplayName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    .line 1336
    return-object p0
.end method

.method public final posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1267
    return-object p0
.end method

.method public final pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1307
    return-object p0
.end method

.method public final privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-eq v0, v1, :cond_8

    .line 1111
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 1113
    :cond_8
    return-object p0
.end method

.method public final publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1086
    return-object p0
.end method

.method public final rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1032
    return-object p0
.end method

.method public final relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1027
    return-object p0
.end method

.method public final releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1252
    return-object p0
.end method

.method public final releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1204
    return-object p0
.end method

.method public final restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1174
    return-object p0
.end method

.method public final seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1287
    return-object p0
.end method

.method public final seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1292
    return-object p0
.end method

.method public final showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1277
    return-object p0
.end method

.method public final showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1282
    return-object p0
.end method

.method public final state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1159
    const-string v0, "state can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1160
    return-object p0
.end method

.method public final streams(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 984
    return-object p0
.end method

.method public final tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1101
    return-object p0
.end method

.method public final threeDSource(Lcom/google/android/youtube/core/model/Video$ThreeDSource;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 1331
    return-object p0
.end method

.method public final thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 1003
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1042
    return-object p0
.end method

.method public final trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1302
    return-object p0
.end method

.method public final trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1272
    return-object p0
.end method

.method public final uploadedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    .line 1077
    return-object p0
.end method

.method public final viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1051
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1052
    return-object p0
.end method

.method public final watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 998
    return-object p0
.end method

.method public final where(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    .line 1136
    return-object p0
.end method
