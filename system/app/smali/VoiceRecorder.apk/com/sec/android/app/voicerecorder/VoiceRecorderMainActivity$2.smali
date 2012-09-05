.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;
.super Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback$Stub;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public messageCallback(I)V
    .registers 6
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    const/16 v0, 0xc08

    if-eq p1, v0, :cond_20

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_20

    .line 391
    const-string v0, "VoiceRecorderMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Callback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    :cond_39
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_72

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->skipSetResult:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getLastSavedFileUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setResult(ILandroid/content/Intent;)V

    .line 402
    :cond_72
    sparse-switch p1, :sswitch_data_9c

    .line 417
    :cond_75
    :goto_75
    return-void

    .line 408
    :sswitch_76
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCommandReturnedTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1802(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;J)J

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbfe

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_75

    .line 402
    nop

    :sswitch_data_9c
    .sparse-switch
        0x3e8 -> :sswitch_76
        0x3e9 -> :sswitch_76
        0x3ea -> :sswitch_76
        0x3eb -> :sswitch_76
        0x7d1 -> :sswitch_76
    .end sparse-switch
.end method
