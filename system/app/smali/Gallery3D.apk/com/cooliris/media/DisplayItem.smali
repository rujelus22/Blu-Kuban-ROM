.class public final Lcom/cooliris/media/DisplayItem;
.super Ljava/lang/Object;
.source "DisplayItem.java"


# static fields
.field private static final random:Ljava/util/Random;


# instance fields
.field public mAlive:Z

.field private mAnimatablesEntry:Lcom/cooliris/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<",
            "Lcom/cooliris/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field public mAnimatedImageTheta:F

.field public mAnimatedPlaceholderFade:F

.field public mAnimatedPosition:Lcom/cooliris/media/Vector3f;

.field public mAnimatedTheta:F

.field private mConvergenceSpeed:F

.field public mCurrentSlotIndex:I

.field private mHasFocus:Z

.field private mHiResImage:Lcom/cooliris/media/UriTexture;

.field private mImageTheta:F

.field public final mItemRef:Lcom/cooliris/media/MediaItem;

.field private mJitteredPosition:Lcom/cooliris/media/Vector3f;

.field private mMediumnailImage:Lcom/cooliris/media/Texture;

.field private mPerformingScale:Z

.field private mScreennailImage:Lcom/cooliris/media/Texture;

.field private mSpan:F

.field private mSpanDirection:F

.field private mSpanSpeed:F

.field private mStackId:I

.field private mStacktopPosition:Lcom/cooliris/media/Vector3f;

.field private mStartOffset:F

.field private mTargetPosition:Lcom/cooliris/media/Vector3f;

.field private mTargetTheta:F

.field private mThumbnailImage:Lcom/cooliris/media/MediaItemTexture;

.field public mZoomMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/cooliris/media/DisplayItem;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/cooliris/media/MediaItem;)V
    .registers 5
    .parameter "item"

    .prologue
    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/cooliris/media/DirectLinkedList$Entry;

    invoke-direct {v0, p0}, Lcom/cooliris/media/DirectLinkedList$Entry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatablesEntry:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 37
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/cooliris/media/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mStacktopPosition:Lcom/cooliris/media/Vector3f;

    .line 39
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0}, Lcom/cooliris/media/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    .line 43
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0}, Lcom/cooliris/media/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    .line 51
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mThumbnailImage:Lcom/cooliris/media/MediaItemTexture;

    .line 53
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mScreennailImage:Lcom/cooliris/media/Texture;

    .line 55
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mHiResImage:Lcom/cooliris/media/UriTexture;

    .line 57
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mConvergenceSpeed:F

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPlaceholderFade:F

    .line 69
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0}, Lcom/cooliris/media/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    .line 203
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mMediumnailImage:Lcom/cooliris/media/Texture;

    .line 87
    iput-object p1, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 88
    iget v0, p1, Lcom/cooliris/media/MediaItem;->mRotation:F

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 89
    iget v0, p1, Lcom/cooliris/media/MediaItem;->mRotation:F

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mCurrentSlotIndex:I

    .line 94
    return-void
.end method


# virtual methods
.method public clearHiResImage()V
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mHiResImage:Lcom/cooliris/media/UriTexture;

    .line 255
    return-void
.end method

.method public clearScreennailImage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mScreennailImage:Lcom/cooliris/media/Texture;

    if-eqz v0, :cond_9

    .line 240
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mScreennailImage:Lcom/cooliris/media/Texture;

    .line 241
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mHiResImage:Lcom/cooliris/media/UriTexture;

    .line 246
    :cond_9
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_f

    .line 247
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mMediumnailImage:Lcom/cooliris/media/Texture;

    .line 251
    :cond_f
    return-void
.end method

.method public clearThumbnail()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 258
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mThumbnailImage:Lcom/cooliris/media/MediaItemTexture;

    .line 262
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_9

    .line 263
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mMediumnailImage:Lcom/cooliris/media/Texture;

    .line 266
    :cond_9
    return-void
.end method

.method public final commit()V
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 325
    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedTheta:F

    .line 326
    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 327
    return-void
.end method

.method public getAnimatablesEntry()Lcom/cooliris/media/DirectLinkedList$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<",
            "Lcom/cooliris/media/DisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatablesEntry:Lcom/cooliris/media/DirectLinkedList$Entry;

    return-object v0
.end method

.method public final getHasFocus()Z
    .registers 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/cooliris/media/DisplayItem;->mHasFocus:Z

    return v0
.end method

.method public final getHiResImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;
    .registers 5
    .parameter "context"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mHiResImage:Lcom/cooliris/media/UriTexture;

    .line 457
    .local v0, texture:Lcom/cooliris/media/UriTexture;
    if-nez v0, :cond_1f

    .line 459
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v1, :cond_20

    .line 460
    new-instance v0, Lcom/cooliris/media/UriTexture;

    .end local v0           #texture:Lcom/cooliris/media/UriTexture;
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/UriTexture;-><init>(Ljava/lang/String;Z)V

    .line 465
    .restart local v0       #texture:Lcom/cooliris/media/UriTexture;
    :goto_12
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/UriTexture;->setCacheId(J)V

    .line 466
    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mHiResImage:Lcom/cooliris/media/UriTexture;

    .line 468
    :cond_1f
    return-object v0

    .line 462
    :cond_20
    new-instance v0, Lcom/cooliris/media/UriTexture;

    .end local v0           #texture:Lcom/cooliris/media/UriTexture;
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/cooliris/media/UriTexture;-><init>(Ljava/lang/String;)V

    .restart local v0       #texture:Lcom/cooliris/media/UriTexture;
    goto :goto_12
.end method

.method public getImageTheta()F
    .registers 2

    .prologue
    .line 476
    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    return v0
.end method

.method public getMediumnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;
    .registers 12
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v8, 0x1

    .line 207
    iget-object v3, p0, Lcom/cooliris/media/DisplayItem;->mMediumnailImage:Lcom/cooliris/media/Texture;

    .line 208
    .local v3, texture:Lcom/cooliris/media/Texture;
    if-eqz v3, :cond_a

    iget v4, v3, Lcom/cooliris/media/Texture;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_57

    .line 209
    :cond_a
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v2, v4, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 210
    .local v2, parentMediaSet:Lcom/cooliris/media/MediaSet;
    if-eqz v2, :cond_68

    iget-object v4, v2, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v4}, Lcom/cooliris/media/DataSource;->getThumbnailCache()Lcom/cooliris/media/DiskCache;

    move-result-object v4

    sget-object v5, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    if-ne v4, v5, :cond_68

    .line 212
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-wide v4, v4, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_58

    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-wide v4, v4, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_58

    .line 214
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/cooliris/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, cachePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, fileC:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 220
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iput-boolean v8, v4, Lcom/cooliris/media/MediaItem;->mMediumnailReady:Z

    .line 222
    :cond_4d
    new-instance v3, Lcom/cooliris/media/MediaItemTexture;

    .end local v3           #texture:Lcom/cooliris/media/Texture;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-direct {v3, p1, v4, v5, v8}, Lcom/cooliris/media/MediaItemTexture;-><init>(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;Lcom/cooliris/media/MediaItem;I)V

    .line 230
    .end local v0           #cachePath:Ljava/lang/String;
    .end local v1           #fileC:Ljava/io/File;
    .restart local v3       #texture:Lcom/cooliris/media/Texture;
    :cond_55
    :goto_55
    iput-object v3, p0, Lcom/cooliris/media/DisplayItem;->mMediumnailImage:Lcom/cooliris/media/Texture;

    .line 232
    .end local v2           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    :cond_57
    return-object v3

    .line 223
    .restart local v2       #parentMediaSet:Lcom/cooliris/media/MediaSet;
    :cond_58
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_55

    .line 224
    new-instance v3, Lcom/cooliris/media/UriTexture;

    .end local v3           #texture:Lcom/cooliris/media/Texture;
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/cooliris/media/UriTexture;-><init>(Ljava/lang/String;)V

    .restart local v3       #texture:Lcom/cooliris/media/Texture;
    goto :goto_55

    .line 227
    :cond_68
    new-instance v3, Lcom/cooliris/media/UriTexture;

    .end local v3           #texture:Lcom/cooliris/media/Texture;
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/cooliris/media/UriTexture;-><init>(Ljava/lang/String;)V

    .restart local v3       #texture:Lcom/cooliris/media/Texture;
    move-object v4, v3

    .line 228
    check-cast v4, Lcom/cooliris/media/UriTexture;

    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v5, v5, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/media/UriTexture;->setCacheId(J)V

    goto :goto_55
.end method

.method public getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;
    .registers 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v3, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v1, v2

    .line 197
    :cond_a
    :goto_a
    return-object v1

    .line 170
    :cond_b
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mScreennailImage:Lcom/cooliris/media/Texture;

    .line 171
    .local v1, texture:Lcom/cooliris/media/Texture;
    if-eqz v1, :cond_14

    iget v3, v1, Lcom/cooliris/media/Texture;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6a

    .line 172
    :cond_14
    iget-object v3, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v0, v3, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 173
    .local v0, parentMediaSet:Lcom/cooliris/media/MediaSet;
    if-eqz v0, :cond_52

    iget-object v3, v0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v3}, Lcom/cooliris/media/DataSource;->getThumbnailCache()Lcom/cooliris/media/DiskCache;

    move-result-object v3

    sget-object v4, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    if-ne v3, v4, :cond_52

    .line 175
    iget-object v3, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-wide v3, v3, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-wide v3, v3, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_42

    .line 176
    new-instance v1, Lcom/cooliris/media/MediaItemTexture;

    .end local v1           #texture:Lcom/cooliris/media/Texture;
    iget-object v3, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-direct {v1, p1, v2, v3}, Lcom/cooliris/media/MediaItemTexture;-><init>(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;Lcom/cooliris/media/MediaItem;)V

    .line 184
    .restart local v1       #texture:Lcom/cooliris/media/Texture;
    :cond_3f
    :goto_3f
    iput-object v1, p0, Lcom/cooliris/media/DisplayItem;->mScreennailImage:Lcom/cooliris/media/Texture;

    goto :goto_a

    .line 177
    :cond_42
    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v2, v2, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 178
    new-instance v1, Lcom/cooliris/media/UriTexture;

    .end local v1           #texture:Lcom/cooliris/media/Texture;
    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v2, v2, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/cooliris/media/UriTexture;-><init>(Ljava/lang/String;)V

    .restart local v1       #texture:Lcom/cooliris/media/Texture;
    goto :goto_3f

    .line 181
    :cond_52
    new-instance v1, Lcom/cooliris/media/UriTexture;

    .end local v1           #texture:Lcom/cooliris/media/Texture;
    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v2, v2, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/cooliris/media/UriTexture;-><init>(Ljava/lang/String;)V

    .restart local v1       #texture:Lcom/cooliris/media/Texture;
    move-object v2, v1

    .line 182
    check-cast v2, Lcom/cooliris/media/UriTexture;

    iget-object v3, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v3, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/UriTexture;->setCacheId(J)V

    goto :goto_3f

    .line 188
    .end local v0           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    :cond_6a
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_a

    .line 189
    invoke-static {v1}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->checkDecodingState(Lcom/cooliris/media/Texture;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 190
    iput-object v2, p0, Lcom/cooliris/media/DisplayItem;->mScreennailImage:Lcom/cooliris/media/Texture;

    move-object v1, v2

    .line 191
    goto :goto_a
.end method

.method public getStackIndex()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mStackId:I

    return v0
.end method

.method public getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;
    .registers 8
    .parameter "context"
    .parameter "config"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mThumbnailImage:Lcom/cooliris/media/MediaItemTexture;

    .line 157
    .local v0, texture:Lcom/cooliris/media/MediaItemTexture;
    if-nez v0, :cond_19

    if-eqz p2, :cond_19

    .line 158
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-wide v1, v1, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    .line 159
    new-instance v0, Lcom/cooliris/media/MediaItemTexture;

    .end local v0           #texture:Lcom/cooliris/media/MediaItemTexture;
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-direct {v0, p1, p2, v1}, Lcom/cooliris/media/MediaItemTexture;-><init>(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;Lcom/cooliris/media/MediaItem;)V

    .line 161
    .restart local v0       #texture:Lcom/cooliris/media/MediaItemTexture;
    :cond_17
    iput-object v0, p0, Lcom/cooliris/media/DisplayItem;->mThumbnailImage:Lcom/cooliris/media/MediaItemTexture;

    .line 163
    :cond_19
    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    return v0
.end method

.method public isAnimating()Z
    .registers 3

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/cooliris/media/DisplayItem;->mPerformingScale:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Vector3f;->equals(Lcom/cooliris/media/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedTheta:F

    iget v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    iget v1, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPlaceholderFade:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public final rotateImageBy(F)V
    .registers 3
    .parameter "theta"

    .prologue
    .line 101
    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    .line 102
    return-void
.end method

.method public final set(Lcom/cooliris/media/Vector3f;IZ)V
    .registers 16
    .parameter "position"
    .parameter "stackIndex"
    .parameter "performTransition"

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x41f0

    const/high16 v9, 0x3f00

    const v11, 0x3e4ccccd

    const/4 v10, 0x0

    .line 105
    const/high16 v6, 0x4040

    iput v6, p0, Lcom/cooliris/media/DisplayItem;->mConvergenceSpeed:F

    .line 106
    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    .line 107
    .local v0, animatedPosition:Lcom/cooliris/media/Vector3f;
    iget-object v4, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    .line 108
    .local v4, targetPosition:Lcom/cooliris/media/Vector3f;
    move v2, p2

    .line 109
    .local v2, seed:I
    move v1, p2

    .line 111
    .local v1, randomSeed:I
    const/4 v6, 0x3

    if-le v2, v6, :cond_18

    .line 112
    const/4 v2, 0x3

    .line 113
    const/4 v1, 0x0

    .line 116
    :cond_18
    iget-boolean v6, p0, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    if-nez v6, :cond_26

    .line 117
    invoke-virtual {v0, p1}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 118
    const/high16 v6, -0x3fc0

    int-to-float v7, p2

    mul-float/2addr v7, v11

    add-float/2addr v6, v7

    iput v6, v0, Lcom/cooliris/media/Vector3f;->z:F

    .line 121
    :cond_26
    invoke-virtual {v4, p1}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 122
    iget v6, p0, Lcom/cooliris/media/DisplayItem;->mStackId:I

    if-eq v6, p2, :cond_31

    if-ltz p2, :cond_31

    .line 123
    iput p2, p0, Lcom/cooliris/media/DisplayItem;->mStackId:I

    .line 126
    :cond_31
    if-nez v1, :cond_64

    .line 127
    if-nez p2, :cond_53

    .line 128
    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    .line 132
    :cond_37
    :goto_37
    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v6, v2

    mul-float/2addr v6, v11

    iput v6, v5, Lcom/cooliris/media/Vector3f;->z:F

    .line 133
    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v6, v2

    mul-float/2addr v6, v11

    invoke-virtual {v5, v10, v10, v6}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 146
    :cond_44
    :goto_44
    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v6, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v5, v6}, Lcom/cooliris/media/Vector3f;->add(Lcom/cooliris/media/Vector3f;)V

    .line 147
    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mStacktopPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v5, p1}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 148
    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    .line 149
    return-void

    .line 129
    :cond_53
    iget v5, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_37

    .line 130
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v5, v9, v5

    mul-float/2addr v5, v8

    iput v5, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    goto :goto_37

    .line 135
    :cond_64
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_c0

    move v3, v5

    .line 136
    .local v3, sign:I
    :goto_69
    if-eqz v2, :cond_44

    iget-object v6, p0, Lcom/cooliris/media/DisplayItem;->mStacktopPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v6, p1}, Lcom/cooliris/media/Vector3f;->equals(Lcom/cooliris/media/Vector3f;)Z

    move-result v6

    if-nez v6, :cond_44

    iget v6, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_44

    .line 137
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v6, v9, v6

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    .line 138
    iget-object v6, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v7, v3

    const/high16 v8, 0x4140

    mul-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v7, v8

    sget-object v8, Lcom/cooliris/media/DisplayItem;->random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    sub-float v8, v9, v8

    const/high16 v9, 0x4080

    mul-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v6, Lcom/cooliris/media/Vector3f;->x:F

    .line 139
    iget-object v6, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    mul-int/lit8 v7, v3, 0x4

    int-to-float v7, v7

    if-ne v3, v5, :cond_c2

    const/high16 v5, -0x3f00

    :goto_a4
    add-float/2addr v5, v7

    iput v5, v6, Lcom/cooliris/media/Vector3f;->y:F

    .line 141
    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    iget v6, v5, Lcom/cooliris/media/Vector3f;->x:F

    sget v7, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/cooliris/media/Vector3f;->x:F

    .line 142
    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    iget v6, v5, Lcom/cooliris/media/Vector3f;->y:F

    sget v7, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/cooliris/media/Vector3f;->y:F

    .line 143
    iget-object v5, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v6, v2

    mul-float/2addr v6, v11

    iput v6, v5, Lcom/cooliris/media/Vector3f;->z:F

    goto :goto_44

    .line 135
    .end local v3           #sign:I
    :cond_c0
    const/4 v3, -0x1

    goto :goto_69

    .line 139
    .restart local v3       #sign:I
    :cond_c2
    int-to-float v5, v3

    sget-object v8, Lcom/cooliris/media/DisplayItem;->random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x4180

    mul-float/2addr v5, v8

    goto :goto_a4
.end method

.method public final setHasFocus(ZZ)V
    .registers 7
    .parameter "hasFocus"
    .parameter "pushDown"

    .prologue
    const v3, 0x3e4ccccd

    .line 330
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/cooliris/media/DisplayItem;->mConvergenceSpeed:F

    .line 331
    iput-boolean p1, p0, Lcom/cooliris/media/DisplayItem;->mHasFocus:Z

    .line 332
    iget v0, p0, Lcom/cooliris/media/DisplayItem;->mStackId:I

    .line 333
    .local v0, seed:I
    const/4 v1, 0x3

    if-le v0, v1, :cond_f

    .line 334
    const/4 v0, 0x3

    .line 336
    :cond_f
    if-eqz p1, :cond_35

    .line 337
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mStacktopPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 338
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Vector3f;->add(Lcom/cooliris/media/Vector3f;)V

    .line 339
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Vector3f;->add(Lcom/cooliris/media/Vector3f;)V

    .line 340
    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v1, v0

    mul-float/2addr v3, v1

    if-eqz p2, :cond_32

    const/high16 v1, 0x3f80

    :goto_2e
    add-float/2addr v1, v3

    iput v1, v2, Lcom/cooliris/media/Vector3f;->z:F

    .line 346
    :goto_31
    return-void

    .line 340
    :cond_32
    const/high16 v1, -0x4100

    goto :goto_2e

    .line 342
    :cond_35
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mStacktopPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 343
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v2, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Vector3f;->add(Lcom/cooliris/media/Vector3f;)V

    .line 344
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v2, v0

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/cooliris/media/Vector3f;->z:F

    goto :goto_31
.end method

.method public final setOffset(ZZFFFFF)V
    .registers 22
    .parameter "useOffset"
    .parameter "pushDown"
    .parameter "span"
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 393
    iget v6, p0, Lcom/cooliris/media/DisplayItem;->mStackId:I

    .line 394
    .local v6, seed:I
    if-eqz p1, :cond_d6

    .line 395
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/cooliris/media/DisplayItem;->mPerformingScale:Z

    .line 396
    iget v10, p0, Lcom/cooliris/media/DisplayItem;->mSpan:F

    sub-float v8, p3, v10

    .line 397
    .local v8, spanDelta:F
    iget-object v10, p0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v10, v10, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v10}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v10

    int-to-float v4, v10

    .line 398
    .local v4, maxSlots:F
    const/4 v10, 0x0

    const/high16 v11, 0x4140

    invoke-static {v4, v10, v11}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v4

    .line 399
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x4120

    sget v12, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4f

    .line 401
    iget v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    iget v11, p0, Lcom/cooliris/media/DisplayItem;->mSpanDirection:F

    iget v12, p0, Lcom/cooliris/media/DisplayItem;->mSpanSpeed:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    .line 402
    iget v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    const/4 v11, 0x0

    invoke-static {v10, v11, v4}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v10

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    .line 411
    :goto_3b
    move/from16 v0, p3

    iput v0, p0, Lcom/cooliris/media/DisplayItem;->mSpan:F

    .line 412
    iget-object v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v11, p0, Lcom/cooliris/media/DisplayItem;->mStacktopPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v10, v11}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 413
    if-nez p2, :cond_c5

    .line 414
    const/high16 v10, 0x4000

    cmpg-float v10, v4, v10

    if-gez v10, :cond_77

    .line 449
    .end local v4           #maxSlots:F
    .end local v8           #spanDelta:F
    :cond_4e
    :goto_4e
    return-void

    .line 404
    .restart local v4       #maxSlots:F
    .restart local v8       #spanDelta:F
    :cond_4f
    const/high16 v10, 0x4416

    sget v11, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v10, v11

    div-float v10, p3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mSpanSpeed:F

    .line 405
    iget v10, p0, Lcom/cooliris/media/DisplayItem;->mSpanSpeed:F

    const/high16 v11, 0x4000

    cmpl-float v10, v10, v11

    if-lez v10, :cond_68

    .line 406
    const/high16 v10, 0x4000

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mSpanSpeed:F

    .line 408
    :cond_68
    iget v10, p0, Lcom/cooliris/media/DisplayItem;->mSpanSpeed:F

    const v11, 0x3dcccccd

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mSpanSpeed:F

    .line 409
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v10

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mSpanDirection:F

    goto :goto_3b

    .line 422
    :cond_77
    const/high16 v10, 0x42fa

    sget v11, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v10, v11

    div-float v10, p3, v10

    float-to-int v3, v10

    .line 423
    .local v3, maxSeedVal:I
    int-to-float v10, v3

    const/high16 v11, 0x4000

    const/high16 v12, 0x3f80

    sub-float v12, v4, v12

    invoke-static {v10, v11, v12}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v10

    float-to-int v3, v10

    .line 424
    iget v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    const/4 v11, 0x0

    int-to-float v12, v3

    sub-float v12, v4, v12

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    invoke-static {v10, v11, v12}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v9

    .line 425
    .local v9, startOffset:F
    int-to-float v10, v6

    sub-float v5, v10, v9

    .line 426
    .local v5, offsetSeed:F
    int-to-float v10, v3

    div-float v7, v5, v10

    .line 427
    .local v7, seedFactor:F
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-static {v7, v10, v11}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v7

    .line 428
    mul-float v10, p6, v7

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v7

    mul-float v11, v11, p4

    add-float v1, v10, v11

    .line 429
    .local v1, dx:F
    mul-float v10, p7, v7

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v7

    mul-float v11, v11, p5

    add-float v2, v10, v11

    .line 430
    .local v2, dy:F
    iget-object v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v11, v6

    const v12, 0x3dcccccd

    mul-float/2addr v11, v12

    invoke-virtual {v10, v1, v2, v11}, Lcom/cooliris/media/Vector3f;->add(FFF)V

    .line 431
    const/4 v10, 0x0

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    goto :goto_4e

    .line 433
    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v3           #maxSeedVal:I
    .end local v5           #offsetSeed:F
    .end local v7           #seedFactor:F
    .end local v9           #startOffset:F
    :cond_c5
    const/4 v10, 0x0

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    .line 434
    iget-object v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v11, v6

    const v12, 0x3e4ccccd

    mul-float/2addr v11, v12

    const/high16 v12, 0x4040

    add-float/2addr v11, v12

    iput v11, v10, Lcom/cooliris/media/Vector3f;->z:F

    goto/16 :goto_4e

    .line 437
    .end local v4           #maxSlots:F
    .end local v8           #spanDelta:F
    :cond_d6
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/cooliris/media/DisplayItem;->mPerformingScale:Z

    .line 438
    const/4 v10, 0x0

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mStartOffset:F

    .line 439
    const/4 v10, 0x3

    if-le v6, v10, :cond_e0

    .line 440
    const/4 v6, 0x3

    .line 442
    :cond_e0
    iget-object v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v11, p0, Lcom/cooliris/media/DisplayItem;->mStacktopPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v10, v11}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 443
    iget-object v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    iget-object v11, p0, Lcom/cooliris/media/DisplayItem;->mJitteredPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v10, v11}, Lcom/cooliris/media/Vector3f;->add(Lcom/cooliris/media/Vector3f;)V

    .line 444
    iget-object v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    int-to-float v11, v6

    const v12, 0x3e4ccccd

    mul-float/2addr v11, v12

    iput v11, v10, Lcom/cooliris/media/Vector3f;->z:F

    .line 445
    if-eqz v6, :cond_4e

    iget v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4e

    .line 446
    const/high16 v10, 0x41f0

    const/high16 v11, 0x3f00

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    double-to-float v12, v12

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    goto/16 :goto_4e
.end method

.method public final update(IF)V
    .registers 8
    .parameter "state"
    .parameter "timeElapsedInSec"

    .prologue
    .line 286
    iget-boolean v2, p0, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    if-eqz v2, :cond_58

    .line 288
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v2, :cond_59

    .line 289
    invoke-static {p1}, Lcom/quramsoft/xiv/XIVUtils;->getTimeElapsedInSec(I)F

    move-result v2

    mul-float/2addr p2, v2

    .line 294
    :goto_d
    iget-object v0, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    .line 295
    .local v0, animatedPosition:Lcom/cooliris/media/Vector3f;
    iget-object v1, p0, Lcom/cooliris/media/DisplayItem;->mTargetPosition:Lcom/cooliris/media/Vector3f;

    .line 296
    .local v1, targetPosition:Lcom/cooliris/media/Vector3f;
    iget v2, p0, Lcom/cooliris/media/DisplayItem;->mConvergenceSpeed:F

    mul-float/2addr p2, v2

    .line 297
    iget v2, v0, Lcom/cooliris/media/Vector3f;->x:F

    iget v3, v1, Lcom/cooliris/media/Vector3f;->x:F

    invoke-static {v2, v3, p2}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, v0, Lcom/cooliris/media/Vector3f;->x:F

    .line 299
    iget v2, v0, Lcom/cooliris/media/Vector3f;->y:F

    iget v3, v1, Lcom/cooliris/media/Vector3f;->y:F

    invoke-static {v2, v3, p2}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, v0, Lcom/cooliris/media/Vector3f;->y:F

    .line 301
    iget v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedTheta:F

    iget v3, p0, Lcom/cooliris/media/DisplayItem;->mTargetTheta:F

    invoke-static {v2, v3, p2}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedTheta:F

    .line 303
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v2, :cond_5d

    .line 305
    iget v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    iget v3, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    const/high16 v4, 0x4080

    div-float v4, p2, v4

    invoke-static {v2, v3, v4}, Lcom/cooliris/media/FloatUtils;->animateRotate(FFF)F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 311
    :goto_44
    iget v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPlaceholderFade:F

    const/high16 v3, 0x3f80

    invoke-static {v2, v3, p2}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedPlaceholderFade:F

    .line 313
    iget v2, v0, Lcom/cooliris/media/Vector3f;->z:F

    iget v3, v1, Lcom/cooliris/media/Vector3f;->z:F

    invoke-static {v2, v3, p2}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, v0, Lcom/cooliris/media/Vector3f;->z:F

    .line 316
    .end local v0           #animatedPosition:Lcom/cooliris/media/Vector3f;
    .end local v1           #targetPosition:Lcom/cooliris/media/Vector3f;
    :cond_58
    return-void

    .line 291
    :cond_59
    const/high16 v2, 0x3fa0

    mul-float/2addr p2, v2

    goto :goto_d

    .line 308
    .restart local v0       #animatedPosition:Lcom/cooliris/media/Vector3f;
    .restart local v1       #targetPosition:Lcom/cooliris/media/Vector3f;
    :cond_5d
    iget v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    iget v3, p0, Lcom/cooliris/media/DisplayItem;->mImageTheta:F

    invoke-static {v2, v3, p2}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    goto :goto_44
.end method
