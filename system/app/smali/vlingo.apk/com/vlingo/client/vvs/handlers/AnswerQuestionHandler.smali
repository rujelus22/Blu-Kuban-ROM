.class public Lcom/vlingo/client/vvs/handlers/AnswerQuestionHandler;
.super Ljava/lang/Object;
.source "AnswerQuestionHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 10
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 20
    const-string v5, "Question"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, question:Ljava/lang/String;
    const-string v5, "Answer"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, answer:Ljava/lang/String;
    const-string v5, "URL"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, url:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_28

    .line 25
    new-instance v4, Lcom/vlingo/client/vvs/handlers/WebSearchHandler;

    invoke-direct {v4}, Lcom/vlingo/client/vvs/handlers/WebSearchHandler;-><init>()V

    .line 26
    .local v4, webSearch:Lcom/vlingo/client/vvs/handlers/WebSearchHandler;
    const-string v5, "Search"

    invoke-virtual {p1, v5, v2}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v4, p1, p2}, Lcom/vlingo/client/vvs/handlers/WebSearchHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v1

    .line 35
    .end local v4           #webSearch:Lcom/vlingo/client/vvs/handlers/WebSearchHandler;
    :goto_27
    return-object v1

    .line 29
    :cond_28
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/vlingo/client/answers/AnswerManager;->replaceAnswerVariables(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/vlingo/client/answers/AnswersActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v1, i:Landroid/content/Intent;
    const-string v5, "com.vlingo.client.answers.question"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v5, "com.vlingo.client.answers.answer"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v5, "com.vlingo.client.answers.url"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_27
.end method
