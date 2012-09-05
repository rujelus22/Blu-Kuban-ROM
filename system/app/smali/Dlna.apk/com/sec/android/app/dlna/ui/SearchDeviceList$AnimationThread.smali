.class Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;
.super Ljava/lang/Object;
.source "SearchDeviceList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/SearchDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 292
    const-wide/16 v1, 0x2bc

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_38

    .line 298
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    :goto_19
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3d

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 303
    const-wide/16 v1, 0x1f4

    :try_start_2f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_19

    .line 304
    :catch_33
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19

    .line 293
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_38
    move-exception v0

    .line 294
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 308
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    return-void
.end method
