.class public Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
.super Landroid/os/AsyncTask;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnpluggedHeadsetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/CorePlayerService;I)V
    .registers 3
    .parameter
    .parameter "what"

    .prologue
    .line 3236
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3239
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Integer;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3243
    const-string v1, "CorePlayerService"

    const-string v2, "UnpluggedHeadsetTask...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    const/4 v0, 0x0

    .line 3247
    .local v0, changedItem:I
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v4

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_19

    .line 3248
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v2, 0x40

    aput v2, v1, v4

    .line 3249
    const/4 v0, 0x1

    .line 3252
    :cond_19
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v3

    const v2, 0x8000

    if-eq v1, v2, :cond_32

    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v3

    const/high16 v2, 0x2

    if-eq v1, v2, :cond_32

    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v3

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_46

    .line 3259
    :cond_32
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v2, 0x1000

    aput v2, v1, v3

    .line 3260
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 3261
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 3263
    const/4 v0, 0x2

    .line 3265
    :cond_46
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setEq()V
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$1700(Lcom/sec/android/app/music/CorePlayerService;)V

    .line 3267
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v2, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3231
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5
    .parameter "changedItem"

    .prologue
    .line 3273
    const/4 v0, -0x1

    .line 3274
    .local v0, strId:I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 3275
    const v0, 0x7f0900f5

    .line 3286
    :cond_b
    :goto_b
    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 3287
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2800(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3289
    :cond_17
    return-void

    .line 3276
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 3277
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$100(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$100(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3278
    const v0, 0x7f0900f7

    goto :goto_b

    .line 3279
    :cond_3b
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$100(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 3280
    const v0, 0x7f0900f8

    goto :goto_b

    .line 3281
    :cond_4b
    sget-boolean v1, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    if-nez v1, :cond_b

    .line 3282
    const v0, 0x7f0900f9

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3231
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
