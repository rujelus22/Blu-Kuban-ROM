.class Lcom/vlingo/client/contacts/ContactSelectActivity$5;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "ContactSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/contacts/ContactSelectActivity;->startRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$5;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 11
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 409
    if-eqz p1, :cond_96

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->isError()Z

    move-result v7

    if-nez v7, :cond_96

    .line 410
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    .line 411
    .local v4, tg:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    if-eqz v4, :cond_96

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_96

    .line 412
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, contact:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v7

    if-eqz v7, :cond_64

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getTags()Ljava/util/Vector;

    move-result-object v7

    if-eqz v7, :cond_64

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getTags()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_64

    .line 417
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getTags()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    .line 418
    .local v3, t:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    const-string v7, "contact"

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v7

    if-eqz v7, :cond_64

    .line 419
    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .end local v3           #t:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    :cond_64
    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_95

    .line 423
    iget-object v7, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$5;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    #getter for: Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vlingo/client/contacts/ContactSelectActivity;->access$000(Lcom/vlingo/client/contacts/ContactSelectActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 425
    .local v2, m:Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 426
    iget-object v6, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$5;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    #getter for: Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/vlingo/client/contacts/ContactSelectActivity;->access$000(Lcom/vlingo/client/contacts/ContactSelectActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 427
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v1, data:Landroid/os/Bundle;
    const-string v6, "query"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 430
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 435
    .end local v0           #contact:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #m:Landroid/os/Message;
    .end local v4           #tg:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    :cond_95
    :goto_95
    return v5

    :cond_96
    move v5, v6

    goto :goto_95
.end method
