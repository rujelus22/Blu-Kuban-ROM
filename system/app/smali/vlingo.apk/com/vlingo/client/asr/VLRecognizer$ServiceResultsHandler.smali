.class Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;
.super Lcom/vlingo/client/vvs/VVSDispatcher;
.source "VLRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/VLRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceResultsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/VLRecognizer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/asr/VLRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-direct {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/asr/VLRecognizer;Lcom/vlingo/client/asr/VLRecognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;-><init>(Lcom/vlingo/client/asr/VLRecognizer;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized playTTS()V
    .registers 1

    .prologue
    .line 158
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler$1;-><init>(Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    const/4 v0, 0x1

    return v0
.end method
