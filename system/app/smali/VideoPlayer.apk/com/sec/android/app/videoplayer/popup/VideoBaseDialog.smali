.class public abstract Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.super Ljava/lang/Object;
.source "VideoBaseDialog.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VideoBaseDialog"


# instance fields
.field protected dialogId:I

.field protected mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/AlertDialog;

.field private final mKeyListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 24
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->setDialogId()V

    .line 26
    return-void
.end method


# virtual methods
.method protected clear()Z
    .registers 3

    .prologue
    .line 89
    const-string v0, "VideoBaseDialog"

    const-string v1, "clear()!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 93
    const/4 v0, 0x1

    .line 96
    :goto_14
    return v0

    .line 95
    :cond_15
    const-string v0, "VideoBaseDialog"

    const-string v1, "mDialog is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected createAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected dismissOnly()V
    .registers 3

    .prologue
    .line 101
    const-string v0, "VideoBaseDialog"

    const-string v1, "dismissOnly()!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 104
    :cond_10
    return-void
.end method

.method protected getDialogId()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dialogId:I

    return v0
.end method

.method protected isShowing()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .parameter "dialogBuilder"

    .prologue
    .line 42
    return-void
.end method

.method protected setDialogExtra(Landroid/app/AlertDialog;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 46
    return-void
.end method

.method protected abstract setDialogId()V
.end method

.method protected abstract setDialogTitle(Landroid/app/AlertDialog$Builder;)V
.end method

.method protected show()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 49
    const-string v3, "VideoBaseDialog"

    const-string v4, "show()!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    sput-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    .line 52
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_26

    .line 54
    :try_start_15
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 56
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    if-eqz v3, :cond_56

    .line 57
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_26} :catch_5c

    .line 68
    :cond_26
    :goto_26
    if-eqz v1, :cond_55

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 71
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_35

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->createOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    :cond_35
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->setDialogTitle(Landroid/app/AlertDialog$Builder;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V

    .line 76
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 78
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->setDialogExtra(Landroid/app/AlertDialog;)V

    .line 80
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 82
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_55
    return-void

    .line 59
    :cond_56
    :try_start_56
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c

    goto :goto_26

    .line 62
    :catch_5c
    move-exception v2

    .line 63
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 64
    const-string v3, "VideoBaseDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show() - RemoteException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
