.class public Lcom/sec/android/socialhub/dialog/ProgressDialogManager;
.super Ljava/lang/Object;
.source "ProgressDialogManager.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

.field mHandler:Landroid/os/Handler;

.field mText:Ljava/lang/String;

.field public runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "ctx"
    .parameter "h"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    .line 75
    new-instance v0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager$1;-><init>(Lcom/sec/android/socialhub/dialog/ProgressDialogManager;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->runnable:Ljava/lang/Runnable;

    .line 21
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mText:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_b
    return-void
.end method

.method public declared-synchronized startProgressDialog()V
    .registers 4

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    if-nez v1, :cond_36

    .line 42
    new-instance v1, Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    .line 43
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;->setIndeterminate(Z)V

    .line 45
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;->setCancelable(Z)V

    .line 47
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_36

    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 50
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_36

    .line 51
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;->show()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 55
    .end local v0           #activity:Landroid/app/Activity;
    :cond_36
    monitor-exit p0

    return-void

    .line 40
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopProgressDialog()V
    .registers 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    if-eqz v0, :cond_d

    .line 61
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;->dismiss()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 64
    :cond_d
    monitor-exit p0

    return-void

    .line 59
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
