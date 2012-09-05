.class public Lcom/vlingo/client/car/vvs/handlers/CarUpdatePageHandler;
.super Ljava/lang/Object;
.source "CarUpdatePageHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field private final responderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/asr/RecoResponderChain;)V
    .registers 2
    .parameter "responderChain"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarUpdatePageHandler;->responderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    .line 22
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 4
    .parameter "action"

    .prologue
    .line 25
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "car-reco-updatepage"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/vlingo/client/car/vvs/handlers/CarUpdatePageHandler;->responderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/car/asr/RecoResponderChain;->handleUpdateAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z

    move-result v0

    return v0
.end method
