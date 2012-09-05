.class public Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchInsertRequest"
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
.field private insertRequests:[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;)V
    .registers 3
    .parameter
    .parameter "insertRequests"

    .prologue
    .line 1120
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest<TPlusones;>;"
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;)V

    .line 1121
    iput-object p2, p0, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;->insertRequests:[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    .line 1122
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1115
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest<TPlusones;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;)V

    return-void
.end method


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
    .line 1115
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest<TPlusones;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;->execute()Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/google/android/apps/pos/model/Plusones;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 1127
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest<TPlusones;>;"
    iget-object v1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;->insertRequests:[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    array-length v1, v1

    if-nez v1, :cond_b

    .line 1128
    new-instance v1, Lcom/google/android/apps/pos/model/Plusones;

    invoke-direct {v1}, Lcom/google/android/apps/pos/model/Plusones;-><init>()V

    .line 1131
    :goto_a
    return-object v1

    .line 1130
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;->insertRequests:[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2400(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;

    move-result-object v0

    .line 1131
    .local v0, batchResponseItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/pos/network/BatchResponseItemJson;>;"
    invoke-static {v0}, Lcom/google/android/apps/pos/network/JsonHelper;->toPlusones(Ljava/util/List;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v1

    goto :goto_a
.end method
