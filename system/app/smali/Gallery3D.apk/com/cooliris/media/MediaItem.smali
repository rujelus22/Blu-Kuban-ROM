.class public final Lcom/cooliris/media/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MediaItem$MediaDRMInfo;
    }
.end annotation


# instance fields
.field private bDrmDrawable:Z

.field private bDrmFirstView:Z

.field public curIntervalTime:Ljava/lang/String;

.field public currentConstraint:I

.field public currentCount:I

.field public drmInfo:[I

.field public hasDrmDisplayRights:Z

.field public isDrm:Z

.field private isDrmPopup:Z

.field public mCaption:Ljava/lang/String;

.field public mClusteringState:I

.field public mContentUri:Ljava/lang/String;

.field public mDateAddedInSec:J

.field public mDateModifiedInSec:J

.field public mDateTakenInMs:J

.field public mDescription:Ljava/lang/String;

.field private mDisplayMimeType:Ljava/lang/String;

.field public mDurationInSec:I

.field public mEditUri:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFlagForDelete:Z

.field public mId:J

.field private mIsSupportedRD:Z

.field private mIsSupportedRDRequested:Z

.field public mLatitude:D

.field public mLongitude:D

.field private mMediaType:I

.field public mMediumnailReady:Z

.field public mMimeType:Ljava/lang/String;

.field public mParentMediaSet:Lcom/cooliris/media/MediaSet;

.field public mPrimingState:I

.field public mReverseGeocodedLocation:Ljava/lang/String;

.field public mRotation:F

.field public mScreennailUri:Ljava/lang/String;

.field public mThumbnailFocusX:I

.field public mThumbnailFocusY:I

.field public mThumbnailId:J

.field public mThumbnailUri:Ljava/lang/String;

.field public mTriedRetrievingExifDateTaken:Z

.field public mWeblink:Ljava/lang/String;

.field public origIntervalTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v2, p0, Lcom/cooliris/media/MediaItem;->mMediaType:I

    .line 99
    iput-wide v3, p0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 103
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 105
    iput-wide v3, p0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    .line 107
    iput-wide v3, p0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    .line 111
    iput v1, p0, Lcom/cooliris/media/MediaItem;->mPrimingState:I

    .line 119
    iput v1, p0, Lcom/cooliris/media/MediaItem;->mClusteringState:I

    .line 137
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaItem;->bDrmDrawable:Z

    .line 141
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->isDrmPopup:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/MediaItem;->drmInfo:[I

    .line 145
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->hasDrmDisplayRights:Z

    .line 149
    iput v2, p0, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    .line 150
    iput v2, p0, Lcom/cooliris/media/MediaItem;->currentCount:I

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/cooliris/media/MediaItem;->origIntervalTime:Ljava/lang/String;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/cooliris/media/MediaItem;->curIntervalTime:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->bDrmFirstView:Z

    .line 442
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->mMediumnailReady:Z

    .line 451
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->mIsSupportedRDRequested:Z

    .line 452
    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->mIsSupportedRD:Z

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method public drmInfoUpdate()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 343
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    .line 344
    iget-boolean v1, p0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v1, :cond_24

    .line 345
    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/MediaItem;->drmInfo:[I

    .line 346
    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->hasDisplayRights(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cooliris/media/MediaItem;->hasDrmDisplayRights:Z

    .line 347
    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->getBestDisplayRightsConstraint(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    .line 348
    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->getBestDisplayRightsCount(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cooliris/media/MediaItem;->currentCount:I

    .line 350
    :cond_24
    return-void
.end method

.method public equals(Lcom/cooliris/media/MediaItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mId:J

    iget-wide v2, p1, Lcom/cooliris/media/MediaItem;->mId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    iget v0, p0, Lcom/cooliris/media/MediaItem;->mMediaType:I

    iget v1, p1, Lcom/cooliris/media/MediaItem;->mMediaType:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getDisplayDuration(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .parameter "context"

    .prologue
    const v9, 0xea60

    const v8, 0x36ee80

    .line 247
    :try_start_6
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 249
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    iget-object v6, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 251
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, duration:I
    const v6, 0x36ee80

    div-int v2, v0, v6

    .line 254
    .local v2, hh:I
    mul-int v6, v2, v8

    sub-int v6, v0, v6

    const v7, 0xea60

    div-int v3, v6, v7

    .line 255
    .local v3, mm:I
    mul-int v6, v2, v8

    sub-int v6, v0, v6

    mul-int v7, v3, v9

    sub-int/2addr v6, v7

    div-int/lit16 v5, v6, 0x3e8

    .line 257
    .local v5, ss:I
    if-gtz v0, :cond_3d

    .line 258
    const-string v6, "--:--:--"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 302
    .end local v0           #duration:I
    .end local v2           #hh:I
    .end local v3           #mm:I
    .end local v4           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v5           #ss:I
    :goto_3c
    return-object v6

    .line 259
    .restart local v0       #duration:I
    .restart local v2       #hh:I
    .restart local v3       #mm:I
    .restart local v4       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v5       #ss:I
    :cond_3d
    if-ge v0, v8, :cond_57

    .line 260
    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3c

    .line 262
    :cond_57
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_74} :catch_76

    move-result-object v6

    goto :goto_3c

    .line 301
    .end local v0           #duration:I
    .end local v2           #hh:I
    .end local v3           #mm:I
    .end local v4           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v5           #ss:I
    :catch_76
    move-exception v1

    .line 302
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_3c
.end method

.method public getDisplayImageSize(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 380
    const/4 v1, 0x0

    .local v1, W:I
    const/4 v0, 0x0

    .line 383
    .local v0, H:I
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 384
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 385
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 386
    iget-object v4, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 387
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 388
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 389
    if-ltz v1, :cond_1b

    if-gez v0, :cond_33

    .line 390
    :cond_1b
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_32
    return-object v4

    .line 392
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_33
    const-string v4, "%d x %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4b

    move-result-object v4

    goto :goto_32

    .line 394
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4b
    move-exception v2

    .line 395
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_32
.end method

.method public getDisplayMimeType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 214
    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 215
    .local v0, slashPos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 216
    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    .line 221
    .end local v0           #slashPos:I
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    if-nez v1, :cond_3b

    const-string v1, ""

    :goto_31
    return-object v1

    .line 218
    .restart local v0       #slashPos:I
    :cond_32
    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    goto :goto_2b

    .line 221
    .end local v0           #slashPos:I
    :cond_3b
    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    goto :goto_31
.end method

.method public getDrmDrawable()Z
    .registers 2

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/cooliris/media/MediaItem;->bDrmDrawable:Z

    return v0
.end method

.method public getMediaType()I
    .registers 3

    .prologue
    .line 200
    iget v0, p0, Lcom/cooliris/media/MediaItem;->mMediaType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 202
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_14
    iput v0, p0, Lcom/cooliris/media/MediaItem;->mMediaType:I

    .line 205
    :cond_16
    iget v0, p0, Lcom/cooliris/media/MediaItem;->mMediaType:I

    return v0

    .line 202
    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getReverseGeocodedLocation(Lcom/cooliris/media/ReverseGeocoder;)Ljava/lang/String;
    .registers 8
    .parameter "reverseGeocoder"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 230
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 238
    :goto_6
    return-object v0

    .line 232
    :cond_7
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/cooliris/media/MediaItem;->isLatLongValid()Z

    move-result v0

    if-nez v0, :cond_11

    .line 233
    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    .line 236
    :cond_11
    iget-wide v1, p0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    iget-wide v3, p0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    const/4 v5, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/ReverseGeocoder;->getReverseGeocodedLocation(DDI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    goto :goto_6
.end method

.method public isDateAddedValid()Z
    .registers 5

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    const-wide/32 v2, 0x9660180

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    const-wide/32 v2, 0x7a2e1380

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isDateModifiedValid()Z
    .registers 5

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    const-wide/32 v2, 0x9660180

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    const-wide/32 v2, 0x7a2e1380

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isDateTakenValid()Z
    .registers 5

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    const-wide v2, 0x24b675dc00L

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    const-wide v2, 0x1dd43fc2c00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isDrmFirstView()Z
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->isFirstView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/MediaItem;->setDrmFirstView(Z)V

    .line 362
    :cond_c
    iget-boolean v0, p0, Lcom/cooliris/media/MediaItem;->bDrmFirstView:Z

    return v0
.end method

.method public isDrmPopup()Z
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/cooliris/media/MediaItem;->isDrmPopup:Z

    return v0
.end method

.method public isLatLongValid()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 177
    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isPicassaItem()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->isPicassaAlbum()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSupportedRD()Z
    .registers 3

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/cooliris/media/MediaItem;->mIsSupportedRDRequested:Z

    if-nez v0, :cond_19

    .line 456
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 457
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/quramsoft/xiv/XIVRegionManager;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/MediaItem;->mIsSupportedRD:Z

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaItem;->mIsSupportedRDRequested:Z

    .line 464
    :cond_19
    iget-boolean v0, p0, Lcom/cooliris/media/MediaItem;->mIsSupportedRD:Z

    :goto_1b
    return v0

    .line 460
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public setDrmDrawable(Z)V
    .registers 2
    .parameter "able"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/cooliris/media/MediaItem;->bDrmDrawable:Z

    .line 325
    return-void
.end method

.method public setDrmFirstView(Z)V
    .registers 2
    .parameter "firstView"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/cooliris/media/MediaItem;->bDrmFirstView:Z

    .line 357
    return-void
.end method

.method public setDrmPopup(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/cooliris/media/MediaItem;->isDrmPopup:Z

    .line 333
    return-void
.end method

.method public setMediaType(I)V
    .registers 2
    .parameter "mediaType"

    .prologue
    .line 209
    iput p1, p0, Lcom/cooliris/media/MediaItem;->mMediaType:I

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    return-object v0
.end method
