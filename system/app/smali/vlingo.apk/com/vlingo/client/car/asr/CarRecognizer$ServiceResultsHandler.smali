.class Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;
.super Lcom/vlingo/client/vvs/VVSDispatcher;
.source "CarRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/asr/CarRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceResultsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/asr/CarRecognizer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-direct {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer;Lcom/vlingo/client/car/asr/CarRecognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized playTTS()V
    .registers 1

    .prologue
    .line 174
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler$1;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    const/4 v0, 0x1

    return v0
.end method
