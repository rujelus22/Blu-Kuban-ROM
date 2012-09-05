.class public Lcom/google/android/apps/pos/network/PosClient$InsertRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsertRequest"
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
.field private abtk:Ljava/lang/String;

.field private adGroupId:Ljava/lang/Integer;

.field private clickDeltaHex:Ljava/lang/String;

.field private creativeId:Ljava/lang/Integer;

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
    .line 1051
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$InsertRequest;,"Lcom/google/android/apps/pos/network/PosClient$InsertRequest<TPlusone;>;"
    new-instance v3, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->id:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->ad:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setAd(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->abtk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->adGroupId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setAdGroupId(Ljava/lang/Integer;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->clickDeltaHex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setClickDeltaHex(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->creativeId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setCreativeId(Ljava/lang/Integer;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    move-result-object v1

    .line 1057
    .local v1, insertRequestJson:Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1058
    .local v2, posRequestsJson:[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v3, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2000(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    .line 1059
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
    .line 967
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$InsertRequest;,"Lcom/google/android/apps/pos/network/PosClient$InsertRequest<TPlusone;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$InsertRequest;->execute()Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v0

    return-object v0
.end method
