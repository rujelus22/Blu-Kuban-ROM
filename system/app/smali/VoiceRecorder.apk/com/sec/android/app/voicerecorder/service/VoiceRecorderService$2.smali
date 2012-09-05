.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

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

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 261
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 263
    .local v1, bFromBT:Z
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 299
    .end local v1           #bFromBT:Z
    :cond_1e
    :goto_1e
    return-void

    .line 286
    :cond_1f
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->headsetConnected:Z
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$300(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_41

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->headsetConnected:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$302(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z

    goto :goto_1e

    .line 290
    :cond_41
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->headsetConnected:Z
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$300(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1e

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->headsetConnected:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$302(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    goto :goto_1e
.end method
