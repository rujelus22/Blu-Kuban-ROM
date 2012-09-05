.class Lcom/vlingo/client/asr/service/VLRecognitionService$1$1;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$1;->cancel()V
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
    .line 97
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    monitor-enter v1

    .line 102
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->cancelRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    .line 110
    :cond_16
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method
