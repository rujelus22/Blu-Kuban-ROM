.class Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;

.field final synthetic val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;

    iput-object p2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;

    iget-object v1, v0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    monitor-enter v1

    .line 164
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-interface {v0, v2}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    .line 165
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #calls: Lcom/vlingo/client/car/asr/CarRecognizer;->endRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$300(Lcom/vlingo/client/car/asr/CarRecognizer;)V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0
.end method
