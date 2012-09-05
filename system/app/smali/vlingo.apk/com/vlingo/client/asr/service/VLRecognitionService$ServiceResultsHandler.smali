.class Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "VLRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceResultsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    return-void
.end method


# virtual methods
.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    const/4 v0, 0x1

    return v0
.end method
