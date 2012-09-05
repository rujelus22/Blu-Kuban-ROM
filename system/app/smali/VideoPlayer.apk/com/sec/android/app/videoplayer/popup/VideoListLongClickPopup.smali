.class public Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;
.super Ljava/lang/Object;
.source "VideoListLongClickPopup.java"


# static fields
.field private static final DELETE:I = 0x1

.field private static final DELETE_FOR_DRM:I = 0x0

.field private static final DETAILS:I = 0x2

.field private static final DETAILS_FOR_DRM:I = 0x1

.field private static final SHARE_VIA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoListLongClickPopup"


# instance fields
.field private clickListener:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerDrm:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mSelectPopup:Landroid/app/AlertDialog;

.field private mUri:Ljava/lang/String;

.field private mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

.field private mVideoID:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "ListType"
    .parameter "id"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;

    .line 29
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mSelectPopup:Landroid/app/AlertDialog;

    .line 30
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mUri:Ljava/lang/String;

    .line 64
    new-instance v2, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    new-instance v2, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->clickListenerDrm:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;

    .line 37
    iput-wide p3, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J

    .line 38
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mUri:Ljava/lang/String;

    .line 40
    const-string v2, "VideoListLongClickPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoListLongClickPopup : mUri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, popup:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->updateOMADRMInfo(Ljava/lang/String;)Z

    .line 47
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8f

    .line 48
    const v2, 0x7f050006

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->clickListenerDrm:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    :goto_73
    invoke-virtual {v1, p5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mSelectPopup:Landroid/app/AlertDialog;

    .line 55
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mSelectPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 57
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    .line 58
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->setActivityContext(Landroid/content/Context;)V

    .line 59
    return-void

    .line 50
    :cond_8f
    const v2, 0x7f050005

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_73
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    return-object v0
.end method
