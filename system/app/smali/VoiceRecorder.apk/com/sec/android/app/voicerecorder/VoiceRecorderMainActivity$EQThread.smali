.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;
.super Ljava/lang/Thread;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EQThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 301
    const-string v2, "EQ Updater"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->setName(Ljava/lang/String;)V

    .line 302
    const-string v2, "VoiceRecorderMainActivity"

    const-string v3, "start EQ Updater"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 306
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->initLevelUI(Landroid/os/Handler;)V

    .line 307
    const-string v2, "VoiceRecorderMainActivity"

    const-string v3, "stop EQ Updater"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_2a
    return-void

    .line 311
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMaxAmplitude()I

    move-result v2

    sput v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->mAmplitude:I

    .line 312
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->updateUI(Landroid/os/Handler;)V

    .line 314
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_45} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_45} :catch_4f

    goto :goto_c

    .line 316
    :catch_46
    move-exception v0

    .line 317
    .local v0, ne:Ljava/lang/NullPointerException;
    const-string v2, "VoiceRecorderMainActivity"

    const-string v3, "ignore EQ update message after destroyed"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 318
    .end local v0           #ne:Ljava/lang/NullPointerException;
    :catch_4f
    move-exception v1

    .line 319
    .local v1, re:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2a
.end method
