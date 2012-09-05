.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;
.super Landroid/os/Handler;
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
    .line 1281
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1285
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1287
    .local v0, what:I
    if-nez v0, :cond_1c

    .line 1289
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_1b

    .line 1291
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1300
    :cond_1b
    :goto_1b
    return-void

    .line 1295
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_1b

    .line 1297
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_1b
.end method
