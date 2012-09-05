.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;
.super Ljava/lang/Thread;
.source "VoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryCheckThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 414
    const-string v2, "Memory Check"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->setName(Ljava/lang/String;)V

    .line 417
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$500(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    if-nez v2, :cond_14

    .line 434
    :cond_13
    :goto_13
    return-void

    .line 421
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v1

    .line 422
    .local v1, internal:Z
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$600(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getWarningSize()I

    move-result v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSize:I
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$800(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->checkAlmostFull(ZIJI)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 423
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 424
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$900(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_58} :catch_59

    goto :goto_13

    .line 432
    .end local v1           #internal:Z
    :catch_59
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_13

    .line 427
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #internal:Z
    :cond_5e
    :try_start_5e
    const-string v2, "VoiceRecorderService"

    const-string v3, "MemoryCheckThread file doesn\'t exist"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_65} :catch_59

    goto :goto_13

    .line 437
    :cond_66
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5
.end method
