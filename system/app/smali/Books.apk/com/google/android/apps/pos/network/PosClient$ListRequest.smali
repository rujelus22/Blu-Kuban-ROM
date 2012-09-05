.class public Lcom/google/android/apps/pos/network/PosClient$ListRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Plusones:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/pos/network/PosClient$PosRequest",
        "<",
        "Lcom/google/android/apps/pos/model/Plusones;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# virtual methods
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
    .line 723
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$ListRequest;,"Lcom/google/android/apps/pos/network/PosClient$ListRequest<TPlusones;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$ListRequest;->execute()Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/google/android/apps/pos/model/Plusones;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 731
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$ListRequest;,"Lcom/google/android/apps/pos/network/PosClient$ListRequest<TPlusones;>;"
    new-instance v1, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;

    invoke-direct {v1}, Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;-><init>()V

    .line 732
    .local v1, listRequestJson:Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 733
    .local v2, posRequestsJson:[Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient$ListRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v3, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2000(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    .line 734
    .local v0, batchResponseItem:Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v0}, Lcom/google/android/apps/pos/network/JsonHelper;->toPlusones(Lcom/google/android/apps/pos/network/BatchResponseItemJson;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v3

    return-object v3
.end method
