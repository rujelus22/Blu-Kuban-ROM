.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;
.super Ljava/lang/Object;
.source "VoiceRecorderService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 992
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 8
    .parameter "focusChange"

    .prologue
    const/16 v5, 0x3eb

    const/16 v4, 0x3ea

    const/4 v3, 0x1

    .line 994
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange - focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    packed-switch p1, :pswitch_data_be

    .line 1039
    :cond_20
    :goto_20
    :pswitch_20
    return-void

    .line 999
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    if-eq v0, v4, :cond_31

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    if-ne v0, v5, :cond_37

    .line 1000
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    goto :goto_20

    .line 1001
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    goto :goto_20

    .line 1007
    :pswitch_45
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    if-eq v0, v4, :cond_55

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    if-ne v0, v5, :cond_5b

    .line 1008
    :cond_55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    goto :goto_20

    .line 1009
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1102(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z

    goto :goto_20

    .line 1021
    :pswitch_6e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1102(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z

    goto :goto_20

    .line 1028
    :pswitch_81
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1100(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Z

    move-result v0

    if-ne v0, v3, :cond_20

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1102(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1200(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startFadeIn()V

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumePlay()V

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isVoiceRecorderTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1033
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->registerNotification()Z

    goto/16 :goto_20

    .line 995
    :pswitch_data_be
    .packed-switch -0x3
        :pswitch_6e
        :pswitch_45
        :pswitch_21
        :pswitch_20
        :pswitch_81
    .end packed-switch
.end method
