.class public Lcom/vlingo/client/car/vvs/handlers/AnswerQuestionHandler;
.super Ljava/lang/Object;
.source "AnswerQuestionHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field private final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/AnswerQuestionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 24
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 7
    .parameter "action"

    .prologue
    .line 27
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "car-reco-answer"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/vlingo/client/car/answers/AnswerController;

    iget-object v3, p0, Lcom/vlingo/client/car/vvs/handlers/AnswerQuestionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v0, v3}, Lcom/vlingo/client/car/answers/AnswerController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 29
    .local v0, ac:Lcom/vlingo/client/car/answers/AnswerController;
    const-string v3, "Question"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, question:Ljava/lang/String;
    const-string v3, "Answer"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, answer:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/car/vvs/handlers/AnswerQuestionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/vlingo/client/answers/AnswerManager;->replaceAnswerVariables(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/vlingo/client/car/answers/AnswerController;->startAnswerView(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v3, 0x1

    return v3
.end method
