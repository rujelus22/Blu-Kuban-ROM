.class public Lcom/google/android/apps/pos/network/PosClient$GetRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetRequest"
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
.field private maxPeople:Ljava/lang/Integer;

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
    .line 789
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$GetRequest;,"Lcom/google/android/apps/pos/network/PosClient$GetRequest<TPlusone;>;"
    new-instance v3, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequest;->id:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequest;->ad:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->setAd(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequest;->maxPeople:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;->setMaxPeople(Ljava/lang/Integer;)Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    move-result-object v1

    .line 792
    .local v1, getRequestJson:Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 793
    .local v2, posRequestsJson:[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient$GetRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v3, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2000(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    .line 794
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
    .line 753
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$GetRequest;,"Lcom/google/android/apps/pos/network/PosClient$GetRequest<TPlusone;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$GetRequest;->execute()Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v0

    return-object v0
.end method
