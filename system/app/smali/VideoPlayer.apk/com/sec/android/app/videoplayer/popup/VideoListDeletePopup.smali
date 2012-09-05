.class public Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;
.super Landroid/app/Activity;
.source "VideoListDeletePopup.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVideoID:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->delete_Done_click()V

    return-void
.end method

.method private createPopup()V
    .registers 4

    .prologue
    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$4;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080036

    new-instance v2, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$3;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080037

    new-instance v2, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$2;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 59
    return-void
.end method

.method private delete_Done_click()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    .line 67
    .local v0, videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    iget-wide v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mVideoID:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->setRemoveFlag(JI)I

    move-result v1

    if-nez v1, :cond_14

    .line 72
    :goto_13
    return-void

    .line 69
    :cond_14
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mVideoID:J

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->delete(J)I

    .line 70
    sput-boolean v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f08003b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 26
    const-string v0, "VideoID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mVideoID:J

    .line 27
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->createPopup()V

    .line 29
    return-void
.end method
