.class public Lcom/vlingo/client/car/asr/RecoResponderChain;
.super Ljava/lang/Object;
.source "RecoResponderChain.java"


# instance fields
.field private final responderChain:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/vlingo/client/car/asr/RecoResponder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/asr/RecoResponderChain;->responderChain:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vlingo/client/car/asr/RecoResponderChain;->responderChain:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/asr/RecoResponder;

    return-object v0
.end method

.method protected handleAction(Ljava/lang/Object;Z)Z
    .registers 7
    .parameter "action"
    .parameter "isLPAction"

    .prologue
    const/4 v3, 0x1

    .line 25
    iget-object v2, p0, Lcom/vlingo/client/car/asr/RecoResponderChain;->responderChain:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_2e

    .line 26
    iget-object v2, p0, Lcom/vlingo/client/car/asr/RecoResponderChain;->responderChain:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/asr/RecoResponder;

    .line 27
    .local v1, responder:Lcom/vlingo/client/car/asr/RecoResponder;
    if-eqz p2, :cond_20

    move-object v2, p1

    .line 28
    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/asr/RecoResponder;->handleLPAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v3

    .line 38
    .end local v1           #responder:Lcom/vlingo/client/car/asr/RecoResponder;
    :goto_1f
    return v2

    .restart local v1       #responder:Lcom/vlingo/client/car/asr/RecoResponder;
    :cond_20
    move-object v2, p1

    .line 33
    check-cast v2, Lcom/vlingo/client/core/vlservice/response/Action;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/asr/RecoResponder;->handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v3

    .line 34
    goto :goto_1f

    .line 25
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 38
    .end local v1           #responder:Lcom/vlingo/client/car/asr/RecoResponder;
    :cond_2e
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/car/asr/RecoResponderChain;->handleAction(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public handleUpdateAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/car/asr/RecoResponderChain;->handleAction(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public pushResponderOnToChain(Lcom/vlingo/client/car/asr/RecoResponder;)V
    .registers 3
    .parameter "responder"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vlingo/client/car/asr/RecoResponderChain;->responderChain:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public removeAllResponders()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vlingo/client/car/asr/RecoResponderChain;->responderChain:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 51
    return-void
.end method
