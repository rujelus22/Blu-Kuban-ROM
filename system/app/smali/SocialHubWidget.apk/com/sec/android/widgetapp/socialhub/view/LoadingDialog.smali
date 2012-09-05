.class public Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;
.super Landroid/app/ProgressDialog;
.source "LoadingDialog.java"


# static fields
.field private static POPUP_DISMISSED:Z

.field private static POPUP_READY:Z

.field private static instance:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public runnable:Ljava/lang/Runnable;

.field private runtimePopupStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->instance:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->POPUP_READY:Z

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->POPUP_DISMISSED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog$1;-><init>(Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->runnable:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->Initialize()V

    .line 28
    return-void
.end method

.method private Initialize()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->setIndeterminate(Z)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->setCancelable(Z)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->mHandler:Landroid/os/Handler;

    .line 47
    sget-boolean v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->POPUP_DISMISSED:Z

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->runtimePopupStatus:Z

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;
    .registers 3
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->instance:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    if-nez v0, :cond_f

    .line 34
    const-class v1, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    monitor-enter v1

    .line 36
    :try_start_7
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->instance:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    .line 37
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 39
    :cond_f
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->instance:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    return-object v0

    .line 37
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 59
    sget-boolean v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->POPUP_DISMISSED:Z

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->runtimePopupStatus:Z

    .line 60
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 61
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 53
    sget-boolean v0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->POPUP_READY:Z

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->runtimePopupStatus:Z

    .line 54
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method public declared-synchronized startProgressDialog()V
    .registers 4

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->runtimePopupStatus:Z

    sget-boolean v2, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->POPUP_READY:Z

    if-ne v1, v2, :cond_26

    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 77
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_26

    .line 79
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 83
    .end local v0           #activity:Landroid/app/Activity;
    :cond_26
    monitor-exit p0

    return-void

    .line 74
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method
