.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;
.super Ljava/lang/Thread;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecIconBlinkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 364
    const-string v1, "Record indicator Updater"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->setName(Ljava/lang/String;)V

    .line 365
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "RecIcon Blink ON"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v1

    if-nez v1, :cond_33

    .line 369
    :cond_1a
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "RecIcon Blink OFF"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbe0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 380
    :goto_32
    return-void

    .line 374
    :cond_33
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbe1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 375
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_47} :catch_48

    goto :goto_c

    .line 377
    :catch_48
    move-exception v0

    .line 378
    .local v0, ne:Ljava/lang/NullPointerException;
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "ignore Rec icon blink message after destroyed"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method
