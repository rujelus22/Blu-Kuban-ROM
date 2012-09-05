.class Lcom/cooliris/media/Util$BackgroundJob;
.super Lcom/cooliris/media/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/cooliris/media/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/cooliris/media/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .registers 6
    .parameter "activity"
    .parameter "job"
    .parameter "dialog"
    .parameter "handler"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/cooliris/media/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 221
    new-instance v0, Lcom/cooliris/media/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Util$BackgroundJob$1;-><init>(Lcom/cooliris/media/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 231
    iput-object p1, p0, Lcom/cooliris/media/Util$BackgroundJob;->mActivity:Lcom/cooliris/media/MonitoredActivity;

    .line 232
    iput-object p3, p0, Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 233
    iput-object p2, p0, Lcom/cooliris/media/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 234
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mActivity:Lcom/cooliris/media/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/cooliris/media/MonitoredActivity;->addLifeCycleListener(Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;)V

    .line 235
    iput-object p4, p0, Lcom/cooliris/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/Util$BackgroundJob;)Lcom/cooliris/media/MonitoredActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mActivity:Lcom/cooliris/media/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cooliris/media/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/cooliris/media/MonitoredActivity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 251
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public onActivityStarted(Lcom/cooliris/media/MonitoredActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 264
    :cond_9
    return-void
.end method

.method public onActivityStopped(Lcom/cooliris/media/MonitoredActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 258
    :cond_9
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    .line 242
    iget-object v0, p0, Lcom/cooliris/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void

    .line 242
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/cooliris/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cooliris/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
