.class Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;
.super Ljava/lang/Object;
.source "PresetModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PresetModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 262
    const-string v5, "DLNA"

    const-string v8, "animation thread is running"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$402(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Z)Z

    .line 264
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$502(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Z)Z

    .line 265
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v8, 0x3ef

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, checkServer:Z
    const/4 v1, 0x0

    .line 269
    .local v1, count:I
    :cond_20
    :goto_20
    if-nez v0, :cond_73

    .line 272
    const-wide/16 v8, 0x12c

    :try_start_24
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_7f
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_24 .. :try_end_27} :catch_84
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_8a

    .line 276
    :goto_27
    :try_start_27
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v4

    .line 278
    .local v4, tempDMSList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/DeviceItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a6

    .line 279
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/api/DeviceItem;

    invoke-virtual {v5}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_a4

    move v0, v6

    .line 281
    :goto_4f
    const-string v5, "DLNA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " check Server ? in thread : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_27 .. :try_end_71} :catch_84
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_71} :catch_8a

    .line 283
    if-ne v0, v6, :cond_a6

    .line 302
    .end local v4           #tempDMSList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/DeviceItem;>;"
    :cond_73
    :goto_73
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    return-void

    .line 273
    :catch_7f
    move-exception v3

    .line 274
    .local v3, ie:Ljava/lang/InterruptedException;
    :try_start_80
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_83
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_80 .. :try_end_83} :catch_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_8a

    goto :goto_27

    .line 293
    .end local v3           #ie:Ljava/lang/InterruptedException;
    :catch_84
    move-exception v2

    .line 294
    .local v2, e:Lcom/samsung/api/DMCAPIException;
    const/4 v0, 0x0

    .line 295
    :try_start_86
    invoke-virtual {v2}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_20

    .line 298
    .end local v2           #e:Lcom/samsung/api/DMCAPIException;
    :catch_8a
    move-exception v2

    .line 299
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check the Exception on preset fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #tempDMSList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/DeviceItem;>;"
    :cond_a4
    move v0, v7

    .line 279
    goto :goto_4f

    .line 286
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    .line 287
    const/16 v5, 0x1e

    if-lt v1, v5, :cond_20

    .line 288
    :try_start_ac
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 289
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z

    .line 290
    const-string v5, "DLNA"

    const-string v8, " check Server in thread timeout!!"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_ac .. :try_end_c1} :catch_84
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c1} :catch_8a

    goto :goto_73
.end method
