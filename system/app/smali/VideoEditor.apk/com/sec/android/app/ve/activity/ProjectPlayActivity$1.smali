.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ProjectPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 243
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, lAction:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This is inside onReceive and action is -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 253
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 254
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 255
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 257
    :cond_31
    const-string v2, "This is inside Media Removed/Ejected started onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 259
    :cond_46
    const-string v2, "PPA onPause and palying||paused"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    :cond_64
    :goto_64
    return-void

    .line 266
    :cond_65
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 268
    const-string v2, "This is inside Media Mounted onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 270
    :cond_73
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 272
    const-string v2, "This is inside Media Scanner started onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 279
    :cond_81
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This is inside Media Scanner completed onReceive method with mime type -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 284
    :cond_a0
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 286
    const-string v2, "onReceive and action is ACTION_BATTERY_LOW"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->handleLowBattery()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$4(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto :goto_64

    .line 289
    :cond_b3
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 291
    const-string v2, "onReceive and action is ACTION_BATTERY_CHANGED"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->handleBatteryLevels(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Landroid/content/Intent;)V

    goto :goto_64

    .line 295
    :cond_c6
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 297
    const-string v2, "Storage Low:::Boradcast::"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 319
    :cond_d4
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 321
    const-string v2, "This is inside Headset onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 322
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_64

    .line 325
    const-string v2, "MI@::pausing"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_64

    .line 328
    :cond_f0
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 330
    const-string v2, "Inside onReceive ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 332
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 334
    .local v0, isFromBT:Z
    if-nez v0, :cond_64

    .line 336
    const-string v2, "Inside onReceive ACTION_AUDIO_BECOMING_NOISY stopping player"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 338
    const-string v2, "PPA onPause and palying||paused"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_64

    .line 345
    .end local v0           #isFromBT:Z
    :cond_132
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 346
    const-string v2, "PPA:screen off"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_64

    .line 348
    :cond_141
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 349
    const-string v2, "PPA:screen on"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mScreenOn:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$6(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    goto/16 :goto_64

    .line 352
    :cond_155
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mScreenOn:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 354
    const-string v2, "screen unlocked"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 355
    const-string v2, "loading"

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 356
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->createPreviewPlayer()V

    .line 357
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mScreenOn:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$6(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    goto/16 :goto_64
.end method
