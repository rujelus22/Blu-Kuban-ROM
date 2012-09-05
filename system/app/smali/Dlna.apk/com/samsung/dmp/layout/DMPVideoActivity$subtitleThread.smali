.class public Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;
.super Ljava/lang/Thread;
.source "DMPVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "subtitleThread"
.end annotation


# instance fields
.field public volatile finished:Z

.field private mSAMIReader:Lcom/samsung/dmp/layout/SAMIReader;

.field private mSubtitle:Ljava/lang/String;

.field private mSubtitleProcesser:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;Lcom/samsung/dmp/layout/SAMIReader;)V
    .registers 6
    .parameter
    .parameter "reader"

    .prologue
    const/4 v2, 0x0

    .line 2897
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2893
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 2894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSAMIReader:Lcom/samsung/dmp/layout/SAMIReader;

    .line 2895
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;

    .line 2926
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;

    .line 2898
    const-string v0, "DLNA"

    const-string v1, "subtitle contructor called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    iput-object p2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSAMIReader:Lcom/samsung/dmp/layout/SAMIReader;

    .line 2902
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 2903
    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Lcom/samsung/dmp/layout/SAMIReader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSAMIReader:Lcom/samsung/dmp/layout/SAMIReader;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2892
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2913
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSAMIReader:Lcom/samsung/dmp/layout/SAMIReader;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/SAMIReader;->Open()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 2914
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    monitor-enter v2

    .line 2916
    :try_start_10
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_26

    .line 2920
    :goto_1d
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_2b

    .line 2922
    :cond_1e
    const-string v1, "DLNA"

    const-string v2, "DONE with SUBTITLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    return-void

    .line 2917
    :catch_26
    move-exception v0

    .line 2918
    .local v0, e:Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    .line 2920
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v1
.end method
