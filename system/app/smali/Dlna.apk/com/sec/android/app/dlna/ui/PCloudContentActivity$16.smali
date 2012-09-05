.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;
.super Ljava/lang/Object;
.source "PCloudContentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 446
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 449
    .local v2, thisThread:Ljava/lang/Thread;
    const-wide/16 v3, 0x320

    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_61

    .line 453
    :goto_a
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 454
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    if-eq v3, v5, :cond_32

    .line 455
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPlayOrPause()Z

    .line 456
    :cond_32
    const/4 v1, 0x0

    .line 459
    .local v1, i:I
    :cond_33
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$200(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Ljava/lang/Thread;

    move-result-object v3

    if-eq v3, v2, :cond_4d

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    if-eq v3, v5, :cond_55

    .line 460
    :cond_4d
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$200(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Ljava/lang/Thread;

    move-result-object v3

    if-nez v3, :cond_66

    .line 479
    :cond_55
    :goto_55
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$16;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x7d1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    return-void

    .line 450
    .end local v1           #i:I
    :catch_61
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 462
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #i:I
    :cond_66
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    if-eq v3, v5, :cond_55

    .line 466
    const-wide/16 v3, 0x1f4

    :try_start_7a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_7d} :catch_96

    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 471
    const/16 v3, 0xc8

    if-le v1, v3, :cond_33

    .line 472
    const-string v3, "DLNA"

    const-string v4, "bufferAnimationRunnable : timeout waiting Renderer stat, Destroy DLNAHomeScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    goto :goto_55

    .line 468
    :catch_96
    move-exception v0

    .line 469
    .restart local v0       #e:Ljava/lang/InterruptedException;
    goto :goto_55
.end method
