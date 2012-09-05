.class public Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;
.super Ljava/lang/Object;
.source "ThumbnailCacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;,
        Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;,
        Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;,
        Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;
    }
.end annotation


# static fields
.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final MEDIA_DATA:Ljava/lang/String; = "_data"

.field public static final MEDIA_EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MEDIA_IMAGE_EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MIME_TYPE_IND:Ljava/lang/String; = "mime_type"

.field public static final SUPPORTED_BY_ENGINE:I = 0x1

.field public static final _DURATION:Ljava/lang/String; = "duration"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static mConteHan:Landroid/os/Handler;

.field private static mImageCursorCnt:I

.field public static mImageFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mImageFilePathsTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mImageFilter:[Ljava/lang/String;

.field public static final mImageProj:[Ljava/lang/String;

.field public static mImageRefresh:Z

.field public static mImageThumbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/ve/data/VideoThumb;",
            ">;"
        }
    .end annotation
.end field

.field public static mImageThumbnailCreateThread:Ljava/lang/Thread;

.field private static mImgThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

.field public static mIsVideoRefresh:Z

.field private static mMyContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

.field private static mMyImageContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

.field private static mVideoCursorCnt:I

.field public static mVideoFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mVideoFilePathsTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mVideoFilter:[Ljava/lang/String;

.field public static final mVideoProj:[Ljava/lang/String;

.field public static mVideoThumbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/ve/data/VideoThumb;",
            ">;"
        }
    .end annotation
.end field

.field public static mVideoThumbnailCreateThread:Ljava/lang/Thread;

.field private static mVideoThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    .line 44
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePathsTemp:Ljava/util/ArrayList;

    .line 45
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePathsTemp:Ljava/util/ArrayList;

    .line 47
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbnailCreateThread:Ljava/lang/Thread;

    .line 49
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbnailCreateThread:Ljava/lang/Thread;

    .line 51
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->MEDIA_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 52
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->MEDIA_IMAGE_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 67
    const-string v1, "duration"

    aput-object v1, v0, v5

    .line 68
    const-string v1, "_data"

    aput-object v1, v0, v6

    .line 69
    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 70
    const-string v2, "date_modified"

    aput-object v2, v0, v1

    .line 66
    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoProj:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 73
    const-string v1, "_data"

    aput-object v1, v0, v5

    .line 74
    const-string v1, "date_modified"

    aput-object v1, v0, v6

    .line 75
    const-string v1, "mime_type"

    aput-object v1, v0, v7

    .line 72
    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageProj:[Ljava/lang/String;

    .line 78
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v3

    .line 79
    const-string v1, "video/3gpp"

    aput-object v1, v0, v5

    .line 78
    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilter:[Ljava/lang/String;

    .line 81
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v3

    .line 82
    const-string v1, "image/jpg"

    aput-object v1, v0, v5

    .line 81
    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilter:[Ljava/lang/String;

    .line 85
    sput-boolean v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mIsVideoRefresh:Z

    .line 88
    sput-boolean v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageRefresh:Z

    .line 94
    sput v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoCursorCnt:I

    .line 96
    sput v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageCursorCnt:I

    .line 99
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    .line 119
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImgThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    .line 769
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    .line 846
    sput-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyImageContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    .line 890
    new-instance v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mConteHan:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 890
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mConteHan:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()I
    .registers 1

    .prologue
    .line 94
    sget v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoCursorCnt:I

    return v0
.end method

.method static synthetic access$10()V
    .registers 0

    .prologue
    .line 724
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->reloadVideoThumbnails()V

    return-void
.end method

.method static synthetic access$11(I)V
    .registers 1
    .parameter

    .prologue
    .line 94
    sput p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoCursorCnt:I

    return-void
.end method

.method static synthetic access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    return-object v0
.end method

.method static synthetic access$13()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePathsTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14()V
    .registers 0

    .prologue
    .line 744
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->removeDeletedVideoThumbs()V

    return-void
.end method

.method static synthetic access$2()I
    .registers 1

    .prologue
    .line 808
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getVideoCursorCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3()I
    .registers 1

    .prologue
    .line 96
    sget v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageCursorCnt:I

    return v0
.end method

.method static synthetic access$4()I
    .registers 1

    .prologue
    .line 827
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getImageCursorCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5()V
    .registers 0

    .prologue
    .line 734
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->reloadImageThumbnails()V

    return-void
.end method

.method static synthetic access$6(I)V
    .registers 1
    .parameter

    .prologue
    .line 96
    sput p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageCursorCnt:I

    return-void
.end method

.method static synthetic access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImgThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    return-object v0
.end method

.method static synthetic access$8()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePathsTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9()V
    .registers 0

    .prologue
    .line 753
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->removeDeletedImageThumbs()V

    return-void
.end method

.method public static getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "aFilepath"

    .prologue
    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, lBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    .line 152
    sget-object v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 154
    :try_start_e
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VideoThumb;

    .line 155
    .local v1, videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    :goto_1c
    monitor-exit v3

    .line 167
    :goto_1d
    return-object v0

    :cond_1e
    move-object v0, v2

    .line 155
    goto :goto_1c

    .line 152
    .end local v1           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw v2

    .line 160
    :cond_23
    sget-object v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 162
    :try_start_26
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VideoThumb;

    .line 163
    .restart local v1       #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :goto_34
    monitor-exit v3

    goto :goto_1d

    .end local v1           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_36

    throw v2

    .restart local v1       #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_39
    move-object v0, v2

    .line 163
    goto :goto_34
.end method

.method public static getCachedVideoThumb(Ljava/lang/String;)Lcom/sec/android/app/ve/data/VideoThumb;
    .registers 5
    .parameter "aFilepath"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 176
    sget-object v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 178
    :try_start_d
    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/ve/data/VideoThumb;

    move-object v1, v0

    .line 176
    monitor-exit v3

    .line 190
    :goto_18
    return-object v1

    .line 176
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v2

    .line 184
    :cond_1c
    sget-object v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 186
    :try_start_1f
    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/ve/data/VideoThumb;

    move-object v1, v0

    .line 184
    monitor-exit v3

    goto :goto_18

    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public static getContentObsInstance()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;
    .registers 1

    .prologue
    .line 765
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    if-nez v0, :cond_b

    .line 766
    new-instance v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    .line 767
    :cond_b
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    return-object v0
.end method

.method private static getImageCursorCount()I
    .registers 7

    .prologue
    .line 829
    const-string v2, "date_added DESC"

    .line 831
    .local v2, lSortOrder:Ljava/lang/String;
    const/4 v0, 0x0

    .line 833
    .local v0, lCursCount:I
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 834
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageProj:[Ljava/lang/String;

    .line 835
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getVideoFilterString()Ljava/lang/String;

    move-result-object v5

    .line 836
    sget-object v6, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilter:[Ljava/lang/String;

    .line 833
    invoke-static {v3, v4, v5, v6, v2}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getThumbCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 838
    .local v1, lCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1a

    .line 840
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 841
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 843
    :cond_1a
    return v0
.end method

.method public static getMyImageContentObs()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;
    .registers 1

    .prologue
    .line 850
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyImageContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    if-nez v0, :cond_b

    .line 851
    new-instance v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyImageContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    .line 852
    :cond_b
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mMyImageContentObs:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    return-object v0
.end method

.method public static getThumbCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "aUri"
    .parameter "aProjection"
    .parameter "aSelection"
    .parameter "aSelectionArgs"
    .parameter "aSortOrder"

    .prologue
    .line 196
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 198
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 205
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static getThumbhasMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/ve/data/VideoThumb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailType:I

    if-nez v0, :cond_b

    .line 142
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    .line 144
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    goto :goto_a
.end method

.method private static getVideoCursorCount()I
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 810
    const-string v2, "date_added DESC"

    .line 812
    .local v2, lSortOrder:Ljava/lang/String;
    const/4 v0, 0x0

    .line 814
    .local v0, lCursCount:I
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 815
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoProj:[Ljava/lang/String;

    .line 814
    invoke-static {v3, v4, v5, v5, v2}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getThumbCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 819
    .local v1, lCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_15

    .line 821
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 822
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 824
    :cond_15
    return v0
.end method

.method public static getVideoFilterString()Ljava/lang/String;
    .registers 3

    .prologue
    const/16 v2, 0x3f

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "mime_type IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 910
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadImageThumbs(Landroid/content/Context;Z)V
    .registers 4
    .parameter "aContext"
    .parameter "isImgReload"

    .prologue
    .line 213
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;

    invoke-direct {v1, p1}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbnailCreateThread:Ljava/lang/Thread;

    .line 429
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 430
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbnailCreateThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 431
    return-void
.end method

.method public static loadVideoThumbs(Landroid/content/Context;Z)V
    .registers 4
    .parameter "aContext"
    .parameter "isReload"

    .prologue
    .line 439
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;

    invoke-direct {v1, p1}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbnailCreateThread:Ljava/lang/Thread;

    .line 719
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 720
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbnailCreateThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 721
    return-void
.end method

.method private static reloadImageThumbnails()V
    .registers 2

    .prologue
    .line 736
    const-string v0, "This is inside reloadImageThumbnails"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePathsTemp:Ljava/util/ArrayList;

    .line 738
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImgThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    if-eqz v0, :cond_18

    .line 739
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImgThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 741
    :cond_18
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 743
    return-void
.end method

.method private static reloadVideoThumbnails()V
    .registers 2

    .prologue
    .line 726
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePathsTemp:Ljava/util/ArrayList;

    .line 727
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    if-eqz v0, :cond_13

    .line 729
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 731
    :cond_13
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 732
    return-void
.end method

.method private static removeDeletedImageThumbs()V
    .registers 3

    .prologue
    .line 755
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePathsTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 759
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePathsTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 760
    return-void

    .line 757
    :cond_f
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePathsTemp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static removeDeletedVideoThumbs()V
    .registers 3

    .prologue
    .line 746
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePathsTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 750
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePathsTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 751
    return-void

    .line 748
    :cond_f
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePathsTemp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setImageThumbsCreationCompleteCallback(Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;)V
    .registers 1
    .parameter "aImgThumbsCreationCompleteCallback"

    .prologue
    .line 135
    sput-object p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImgThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    .line 136
    return-void
.end method

.method public static setVideoThumbsCreationCompleteCallback(Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;)V
    .registers 1
    .parameter "aThumbsCreationCompleteCallback"

    .prologue
    .line 115
    sput-object p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbsCreationCompleteCallback:Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    .line 116
    return-void
.end method
