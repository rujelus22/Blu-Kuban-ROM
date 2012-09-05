.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;
.super Ljava/lang/Thread;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigitBlinkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 332
    const-string v1, "Digit blink Updater"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->setName(Ljava/lang/String;)V

    .line 335
    :cond_5
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v1

    if-nez v1, :cond_23

    .line 336
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbd3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 352
    :goto_22
    return-void

    .line 340
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbd2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 342
    const-wide/16 v1, 0x258

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 345
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbd1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 347
    const-wide/16 v1, 0x258

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_57} :catch_58

    goto :goto_5

    .line 349
    :catch_58
    move-exception v0

    .line 350
    .local v0, ne:Ljava/lang/NullPointerException;
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "ignore Digit blink update message after destroyed"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
