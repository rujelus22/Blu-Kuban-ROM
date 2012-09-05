.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$16;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$16;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 462
    const-wide/16 v2, 0x320

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_38

    .line 466
    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$16;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, i:I
    :cond_11
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2c

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$16;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->bufferingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1100(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 491
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$16;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 492
    return-void

    .line 463
    .end local v1           #i:I
    :catch_38
    move-exception v0

    .line 464
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 474
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #i:I
    :cond_3d
    const-wide/16 v2, 0x1f4

    :try_start_3f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_5b

    .line 475
    add-int/lit8 v1, v1, 0x1

    .line 481
    const/16 v2, 0xc8

    if-le v1, v2, :cond_11

    .line 482
    const-string v2, "DLNA"

    const-string v3, "bufferAnimationRunnable : timeout waiting Renderer stat, Destroy DLNAHomeScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    goto :goto_2c

    .line 478
    :catch_5b
    move-exception v0

    .line 479
    .restart local v0       #e:Ljava/lang/InterruptedException;
    goto :goto_2c
.end method
