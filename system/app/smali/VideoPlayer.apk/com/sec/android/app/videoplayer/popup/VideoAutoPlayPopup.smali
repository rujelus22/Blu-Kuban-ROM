.class public Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;
.super Landroid/app/Dialog;
.source "VideoAutoPlayPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoAutoPlayPopup"


# instance fields
.field private dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

.field private mContext:Landroid/content/Context;

.field private settings:Landroid/app/AlertDialog;

.field private final sortByListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;

    .line 51
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->sortByListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$2;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

    .line 22
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->createPopup()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private createPopup()V
    .registers 8

    .prologue
    .line 30
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v4

    const-string v5, "autoPlay"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadBooleanKey(Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    .local v1, isAutoPlay:Z
    if-eqz v1, :cond_3e

    .line 33
    const/4 v3, 0x0

    .line 37
    .local v3, selected:I
    :goto_10
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v2, popup:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;

    const v5, 0x7f080088

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 39
    const v4, 0x7f050004

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->sortByListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;

    .line 42
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    :try_start_38
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_40

    .line 49
    :goto_3d
    return-void

    .line 35
    .end local v2           #popup:Landroid/app/AlertDialog$Builder;
    .end local v3           #selected:I
    :cond_3e
    const/4 v3, 0x1

    .restart local v3       #selected:I
    goto :goto_10

    .line 46
    .restart local v2       #popup:Landroid/app/AlertDialog$Builder;
    :catch_40
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VideoAutoPlayPopup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show() failed. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method
