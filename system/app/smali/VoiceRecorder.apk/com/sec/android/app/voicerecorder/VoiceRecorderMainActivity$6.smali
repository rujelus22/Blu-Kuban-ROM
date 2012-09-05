.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;
.super Landroid/os/Handler;
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
    .line 918
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 921
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "Background Checker Starts"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06003c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-class v3, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->finish()V

    .line 930
    :goto_33
    return-void

    .line 929
    :cond_34
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "Background Checker Ends"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method
