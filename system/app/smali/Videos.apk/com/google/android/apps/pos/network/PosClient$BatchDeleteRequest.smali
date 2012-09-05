.class public Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchDeleteRequest"
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
.field private deleteRequests:[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;)V
    .registers 3
    .parameter
    .parameter "deleteRequests"

    .prologue
    .line 872
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest<TPlusones;>;"
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;)V

    .line 873
    iput-object p2, p0, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;->deleteRequests:[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    .line 874
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 867
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest<TPlusones;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;)V

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
    .line 867
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest<TPlusones;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;->execute()Lcom/google/android/apps/pos/model/Plusones;

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
    .line 879
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest<TPlusones;>;"
    iget-object v1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;->deleteRequests:[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    array-length v1, v1

    if-nez v1, :cond_b

    .line 880
    new-instance v1, Lcom/google/android/apps/pos/model/Plusones;

    invoke-direct {v1}, Lcom/google/android/apps/pos/model/Plusones;-><init>()V

    .line 883
    :goto_a
    return-object v1

    .line 882
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;->deleteRequests:[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2900(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;

    move-result-object v0

    .line 883
    .local v0, batchResponseItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/pos/network/BatchResponseItemJson;>;"
    invoke-static {v0}, Lcom/google/android/apps/pos/network/JsonHelper;->toPlusones(Ljava/util/List;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v1

    goto :goto_a
.end method
