.class Lcom/vlingo/client/keyboard/VlingoLatinIM$1;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "VlingoLatinIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/keyboard/VlingoLatinIM;->handleVlingoKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;


# direct methods
.method constructor <init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$1;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 7
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 275
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v1

    .local v1, results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    .line 277
    iget-object v3, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$1;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    iget-object v3, v3, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$1;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    iget-object v2, v2, Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_VLHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    const/4 v2, 0x1

    .line 281
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    :cond_21
    return v2
.end method
