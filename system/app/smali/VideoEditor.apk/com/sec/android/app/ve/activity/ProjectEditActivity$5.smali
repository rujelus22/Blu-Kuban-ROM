.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "ProjectEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 3224
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3232
    .local v1, lAction:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This is inside onReceive and action is -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3234
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 3235
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 3236
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3238
    :cond_30
    const-string v2, "This is inside Media Removed/Ejected started onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3239
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 3241
    const-string v2, "This is inside Media Removed/Ejected started onReceive method and calling refresh"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3242
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->refresh()V

    .line 3319
    :cond_47
    :goto_47
    return-void

    .line 3245
    :cond_48
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 3247
    const-string v2, "This is inside Media Mounted onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_47

    .line 3249
    :cond_56
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 3251
    const-string v2, "This is inside Media Scanner started onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3253
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 3255
    const-string v2, "Media Scanner started stopping Preview player "

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3256
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 3258
    :cond_75
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_47

    .line 3266
    :cond_88
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 3268
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

    .line 3269
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 3270
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    goto :goto_47

    .line 3272
    :cond_b1
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 3274
    const-string v2, "onReceive and action is ACTION_BATTERY_LOW"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3275
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-boolean v5, v2, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsBatteryLow:Z

    .line 3276
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handleLowBattery()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$14(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    goto :goto_47

    .line 3278
    :cond_c8
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 3280
    const-string v2, "onReceive and action is ACTION_BATTERY_CHANGED"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3282
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handleBatteryLevels(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V

    goto/16 :goto_47

    .line 3284
    :cond_dc
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 3286
    const-string v2, "Storage Low:::Boradcast::"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 3289
    :cond_eb
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 3291
    const-string v2, "This is inside Headset onReceive method"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3292
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_47

    .line 3295
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 3296
    const-string v2, "MI@::pausing"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3297
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseFromOutSide()V

    goto/16 :goto_47

    .line 3301
    :cond_114
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 3303
    const-string v2, "Inside onReceive ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3305
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3307
    .local v0, isFromBT:Z
    if-nez v0, :cond_13b

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    if-eqz v2, :cond_13b

    .line 3309
    const-string v2, "Inside onReceive ACTION_AUDIO_BECOMING_NOISY stopping player"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3310
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 3313
    :cond_13b
    if-nez v0, :cond_47

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 3315
    const-string v2, "Inside onReceive ACTION_AUDIO_BECOMING_NOISY stopping Music player"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3316
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseFromOutSide()V

    goto/16 :goto_47
.end method
