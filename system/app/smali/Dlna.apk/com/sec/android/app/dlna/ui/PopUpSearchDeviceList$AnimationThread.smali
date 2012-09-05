.class Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;
.super Ljava/lang/Object;
.source "PopUpSearchDeviceList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 427
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 430
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_33

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$500(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 432
    const-wide/16 v1, 0x1f4

    :try_start_2a
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_14

    .line 433
    :catch_2e
    move-exception v0

    .line 434
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    .line 437
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_33
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    return-void
.end method
