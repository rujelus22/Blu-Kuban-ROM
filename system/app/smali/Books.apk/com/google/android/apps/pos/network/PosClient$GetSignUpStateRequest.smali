.class public Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetSignUpStateRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SignUpState:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/pos/network/PosClient$PosRequest",
        "<",
        "Lcom/google/android/apps/pos/model/SignUpState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/pos/network/PosClient;)V
    .registers 2
    .parameter

    .prologue
    .line 695
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;,"Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest<TSignUpState;>;"
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient;Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 692
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;,"Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest<TSignUpState;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;)V

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
    .line 692
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;,"Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest<TSignUpState;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;->execute()Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/google/android/apps/pos/model/SignUpState;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation

    .prologue
    .line 700
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;,"Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest<TSignUpState;>;"
    new-instance v1, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;

    invoke-direct {v1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;-><init>()V

    .line 702
    .local v1, getSignUpStateReqeustJson:Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 704
    .local v2, posRequestsJson:[Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    #calls: Lcom/google/android/apps/pos/network/PosClient;->executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v3, v2}, Lcom/google/android/apps/pos/network/PosClient;->access$2000(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    .line 705
    .local v0, batchResponseItem:Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    invoke-static {v0}, Lcom/google/android/apps/pos/network/JsonHelper;->toGetSignUpState(Lcom/google/android/apps/pos/network/BatchResponseItemJson;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v3

    return-object v3
.end method
