.class public Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchGetRequest"
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
.field private getRequests:[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;)V
    .registers 3
    .parameter
    .parameter "getRequests"

    .prologue
    .line 755
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest<TPlusones;>;"
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;)V

    .line 756
    iput-object p2, p0, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;->getRequests:[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    .line 757
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 750
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest<TPlusones;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;)V

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
    .line 750
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest<TPlusones;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;->execute()Lcom/google/android/apps/pos/model/Plusones;

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
    .line 762
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest<TPlusones;>;"
    iget-object v1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;->getRequests:[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    array-length v1, v1

    if-nez v1, :cond_b

    .line 763
    new-instance v1, Lcom/google/android/apps/pos/model/Plusones;

    invoke-direct {v1}, Lcom/google/android/apps/pos/model/Plusones;-><init>()V

    .line 766
    :goto_a
    return-object v1

    .line 765
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;->getRequests:[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2900(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;

    move-result-object v0

    .line 766
    .local v0, batchResponseItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/pos/network/BatchResponseItemJson;>;"
    invoke-static {v0}, Lcom/google/android/apps/pos/network/JsonHelper;->toPlusones(Ljava/util/List;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v1

    goto :goto_a
.end method
