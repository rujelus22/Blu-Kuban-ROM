.class Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;

.field final synthetic val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;

    iput-object p2, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;

    iget-object v1, v0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    monitor-enter v1

    .line 148
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-interface {v0, v2}, Lcom/vlingo/client/asr/VLRecognizerListener;->onResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #calls: Lcom/vlingo/client/asr/VLRecognizer;->endRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$300(Lcom/vlingo/client/asr/VLRecognizer;)V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0
.end method
