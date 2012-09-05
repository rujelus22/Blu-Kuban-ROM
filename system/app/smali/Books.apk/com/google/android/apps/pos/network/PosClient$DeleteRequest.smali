.class public Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Plusone:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest",
        "<",
        "Lcom/google/android/apps/pos/model/Plusone;",
        ">;"
    }
.end annotation


# instance fields
.field private clickDeltaHex:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# virtual methods
.method public execute()Lcom/google/android/apps/pos/model/Plusone;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 896
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;,"Lcom/google/android/apps/pos/network/PosClient$DeleteRequest<TPlusone;>;"
    new-instance v3, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;->id:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;->ad:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->setAd(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;->clickDeltaHex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;->setClickDeltaHex(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    move-result-object v1

    .line 899
    .local v1, deleteRequestJson:Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 900
    .local v2, posRequestsJson:[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v3, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2000(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    .line 901
    .local v0, batchResponseItem:Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v0}, Lcom/google/android/apps/pos/network/JsonHelper;->toPlusone(Lcom/google/android/apps/pos/network/BatchResponseItemJson;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic execute()Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 860
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;,"Lcom/google/android/apps/pos/network/PosClient$DeleteRequest<TPlusone;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;->execute()Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v0

    return-object v0
.end method
