.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$4;
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
    .line 401
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$4;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 404
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMemoryCheckHandler 10sec left, duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$4;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mRecordedDurationMSec:I
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$400(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$4;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$4;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const v2, 0x7f06003f

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 407
    return-void
.end method
