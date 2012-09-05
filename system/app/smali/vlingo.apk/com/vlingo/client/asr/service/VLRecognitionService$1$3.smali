.class Lcom/vlingo/client/asr/service/VLRecognitionService$1$3;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$1;->stopListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$3;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$3;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    monitor-enter v1

    .line 170
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$3;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1b

    .line 171
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$3;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    const/4 v2, 0x4

    #setter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v0, v2}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$102(Lcom/vlingo/client/asr/service/VLRecognitionService;I)I

    .line 172
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 174
    :cond_1b
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v0
.end method
