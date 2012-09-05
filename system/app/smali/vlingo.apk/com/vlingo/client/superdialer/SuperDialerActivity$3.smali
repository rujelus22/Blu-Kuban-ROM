.class Lcom/vlingo/client/superdialer/SuperDialerActivity$3;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "SuperDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SuperDialerActivity;->startRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 12
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 407
    if-eqz p1, :cond_e0

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->isError()Z

    move-result v8

    if-nez v8, :cond_e0

    .line 408
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v5

    .line 409
    .local v5, tg:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    if-eqz v5, :cond_e0

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e0

    .line 410
    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, resultString:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v8

    if-eqz v8, :cond_72

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getTags()Ljava/util/Vector;

    move-result-object v8

    if-eqz v8, :cond_72

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getTags()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_72

    .line 416
    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getTags()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    .line 417
    .local v4, t:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    const-string v8, "vp_ls"

    iget-object v9, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->fieldId:Ljava/lang/String;
    invoke-static {v9}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$200(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 418
    const-string v8, "text"

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_72

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v8

    if-eqz v8, :cond_72

    .line 419
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v3

    .line 431
    .end local v4           #t:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    :cond_72
    :goto_72
    if-eqz v3, :cond_a3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a3

    .line 432
    iget-object v8, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$400(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v7, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$400(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 434
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v0, data:Landroid/os/Bundle;
    const-string v7, "query"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 437
    iget-object v7, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->eventHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$400(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #m:Landroid/os/Message;
    .end local v3           #resultString:Ljava/lang/String;
    .end local v5           #tg:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    :cond_a3
    :goto_a3
    return v6

    .line 422
    .restart local v3       #resultString:Ljava/lang/String;
    .restart local v4       #t:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    .restart local v5       #tg:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    :cond_a4
    const-string v8, "vp_superdial"

    iget-object v9, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->fieldId:Ljava/lang/String;
    invoke-static {v9}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$200(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 423
    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getParseType()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, parseType:Ljava/lang/String;
    iget-object v8, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$3;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    const-string v9, "dial:biz"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    #setter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->defaultToBusiness:Z
    invoke-static {v8, v9}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$302(Lcom/vlingo/client/superdialer/SuperDialerActivity;Z)Z

    .line 425
    const-string v8, "contact"

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_72

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v8

    if-eqz v8, :cond_72

    .line 426
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_72

    .end local v2           #parseType:Ljava/lang/String;
    .end local v3           #resultString:Ljava/lang/String;
    .end local v4           #t:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    .end local v5           #tg:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    :cond_e0
    move v6, v7

    .line 443
    goto :goto_a3
.end method
