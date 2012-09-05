.class Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;
.super Ljava/lang/Object;
.source "PCloudRendererActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 391
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x44d

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    :goto_b
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_32

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$200(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 395
    const-wide/16 v1, 0x1f4

    :try_start_29
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_b

    .line 396
    :catch_2d
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    .line 400
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x44c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    return-void
.end method
