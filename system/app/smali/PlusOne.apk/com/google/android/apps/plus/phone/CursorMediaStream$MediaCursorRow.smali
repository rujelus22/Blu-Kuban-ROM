.class public Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;
.super Ljava/lang/Object;
.source "CursorMediaStream.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/MediaStream$Row;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/CursorMediaStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MediaCursorRow"
.end annotation


# instance fields
.field protected final mCommentCount:I

.field protected final mDateTaken:J

.field protected mFingerprint:Lcom/android/gallery3d/common/Fingerprint;

.field protected mLocalUri:Landroid/net/Uri;

.field protected mOwnerId:J

.field protected final mPendingStatus:Ljava/lang/Integer;

.field protected mPhotoId:J

.field protected final mPlusOneCount:I

.field protected final mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected final mVideoData:[B


# direct methods
.method protected constructor <init>(JIILjava/lang/Integer;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;Lcom/android/gallery3d/common/Fingerprint;[B)V
    .registers 18
    .parameter "id"
    .parameter "commentCount"
    .parameter "plusOneCount"
    .parameter "pendingStatus"
    .parameter "dateTaken"
    .parameter "url"
    .parameter "localUri"
    .parameter "photoId"
    .parameter "ownerId"
    .parameter "title"
    .parameter "fingerprint"
    .parameter "videoData"

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p3, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mCommentCount:I

    .line 250
    iput p4, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPlusOneCount:I

    .line 251
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPendingStatus:Ljava/lang/Integer;

    .line 252
    iput-wide p6, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mDateTaken:J

    .line 253
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mUrl:Ljava/lang/String;

    .line 254
    iput-object p9, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mLocalUri:Landroid/net/Uri;

    .line 255
    iput-wide p10, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPhotoId:J

    .line 256
    iput-wide p12, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mOwnerId:J

    .line 257
    iput-object p14, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mTitle:Ljava/lang/String;

    .line 258
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mFingerprint:Lcom/android/gallery3d/common/Fingerprint;

    .line 259
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mVideoData:[B

    .line 260
    return-void
.end method


# virtual methods
.method public getCommentCount()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mCommentCount:I

    return v0
.end method

.method public getDateTaken()J
    .registers 3

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mDateTaken:J

    return-wide v0
.end method

.method public getFingerprint()Lcom/android/gallery3d/common/Fingerprint;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mFingerprint:Lcom/android/gallery3d/common/Fingerprint;

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mOwnerId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPendingStatus()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPendingStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPhotoId()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPhotoId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneCount()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPlusOneCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoData()[B
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mVideoData:[B

    return-object v0
.end method

.method public merge(Lcom/google/android/apps/plus/phone/MediaStream$Row;)V
    .registers 6
    .parameter "row"

    .prologue
    const-wide/16 v2, 0x0

    .line 355
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPhotoId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getPhotoId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 356
    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getPhotoId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mPhotoId:J

    .line 358
    :cond_1e
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mOwnerId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3a

    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getOwnerId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3a

    .line 359
    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getOwnerId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mOwnerId:J

    .line 361
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_4a

    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 362
    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mUrl:Ljava/lang/String;

    .line 364
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mLocalUri:Landroid/net/Uri;

    if-nez v0, :cond_5a

    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 365
    invoke-interface {p1}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;->mLocalUri:Landroid/net/Uri;

    .line 367
    :cond_5a
    return-void
.end method
