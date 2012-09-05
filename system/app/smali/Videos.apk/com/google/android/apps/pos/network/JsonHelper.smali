.class Lcom/google/android/apps/pos/network/JsonHelper;
.super Ljava/lang/Object;
.source "JsonHelper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static throwPosException(Lcom/google/android/apps/pos/model/PlusoneError;)V
    .registers 3
    .parameter "posError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_e

    .line 85
    new-instance v0, Lcom/google/android/apps/pos/network/PosAuthorizationException;

    invoke-direct {v0, p0}, Lcom/google/android/apps/pos/network/PosAuthorizationException;-><init>(Lcom/google/android/apps/pos/model/PlusoneError;)V

    throw v0

    .line 87
    :cond_e
    new-instance v0, Lcom/google/android/apps/pos/network/PosException;

    invoke-direct {v0, p0}, Lcom/google/android/apps/pos/network/PosException;-><init>(Lcom/google/android/apps/pos/model/PlusoneError;)V

    throw v0
.end method

.method static toGetSignUpState(Lcom/google/android/apps/pos/network/BatchResponseItemJson;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 5
    .parameter "responseJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Lcom/google/android/apps/pos/model/SignUpState;

    invoke-direct {v1}, Lcom/google/android/apps/pos/model/SignUpState;-><init>()V

    .line 21
    .local v1, signUpState:Lcom/google/android/apps/pos/model/SignUpState;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/pos/model/SignUpState;->setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->hasError()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->getError()Lcom/google/android/apps/pos/model/PlusoneError;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/pos/network/JsonHelper;->throwPosException(Lcom/google/android/apps/pos/model/PlusoneError;)V

    .line 25
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->hasResult()Z

    move-result v2

    if-nez v2, :cond_20

    .line 29
    .end local v1           #signUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :goto_1f
    return-object v1

    .line 28
    .restart local v1       #signUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->getResult()Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    move-result-object v0

    .line 29
    .local v0, resultJson:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/pos/model/SignUpState;->setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/pos/model/SignUpState;->setEmail(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/pos/model/SignUpState;->setSignedUp(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v1

    goto :goto_1f
.end method

.method static toPlusone(Lcom/google/android/apps/pos/network/BatchResponseItemJson;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 5
    .parameter "responseJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/apps/pos/model/Plusone;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Plusone;-><init>()V

    .line 64
    .local v0, plusone:Lcom/google/android/apps/pos/model/Plusone;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/pos/model/Plusone;->setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->hasError()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->getError()Lcom/google/android/apps/pos/model/PlusoneError;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/pos/network/JsonHelper;->throwPosException(Lcom/google/android/apps/pos/model/PlusoneError;)V

    .line 68
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->hasResult()Z

    move-result v2

    if-nez v2, :cond_20

    .line 75
    .end local v0           #plusone:Lcom/google/android/apps/pos/model/Plusone;
    :cond_1f
    :goto_1f
    return-object v0

    .line 71
    .restart local v0       #plusone:Lcom/google/android/apps/pos/model/Plusone;
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->getResult()Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    move-result-object v1

    .line 72
    .local v1, resultJson:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    if-eqz v1, :cond_1f

    .line 75
    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/pos/model/Plusone;->setId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->getKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/pos/model/Plusone;->setKind(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/pos/model/Plusone;->setSetByViewer(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/pos/model/Plusone;->setMetadata(Lcom/google/android/apps/pos/model/Metadata;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v0

    goto :goto_1f
.end method

.method static toPlusones(Ljava/util/List;)Lcom/google/android/apps/pos/model/Plusones;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/pos/network/BatchResponseItemJson;",
            ">;)",
            "Lcom/google/android/apps/pos/model/Plusones;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, batchResponseItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/pos/network/BatchResponseItemJson;>;"
    new-instance v4, Lcom/google/android/apps/pos/model/Plusones;

    invoke-direct {v4}, Lcom/google/android/apps/pos/model/Plusones;-><init>()V

    .line 53
    .local v4, plusones:Lcom/google/android/apps/pos/model/Plusones;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/pos/model/Plusone;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    .line 55
    .local v0, batchResponseItem:Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v0}, Lcom/google/android/apps/pos/network/JsonHelper;->toPlusone(Lcom/google/android/apps/pos/network/BatchResponseItemJson;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v3

    .line 56
    .local v3, plusone:Lcom/google/android/apps/pos/model/Plusone;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 58
    .end local v0           #batchResponseItem:Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .end local v3           #plusone:Lcom/google/android/apps/pos/model/Plusone;
    :cond_22
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/apps/pos/model/Plusone;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/pos/model/Plusone;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/pos/model/Plusones;->setItems([Lcom/google/android/apps/pos/model/Plusone;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v5

    return-object v5
.end method
