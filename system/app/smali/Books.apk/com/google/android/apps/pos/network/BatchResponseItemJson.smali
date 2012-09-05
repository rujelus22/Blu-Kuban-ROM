.class public Lcom/google/android/apps/pos/network/BatchResponseItemJson;
.super Lcom/google/api/client/json/GenericJson;
.source "BatchResponseItemJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    }
.end annotation


# instance fields
.field private error:Lcom/google/android/apps/pos/model/PlusoneError;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public getError()Lcom/google/android/apps/pos/model/PlusoneError;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasResult()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
