.class Lcom/google/android/apps/plus/api/EsRequest;
.super Ljava/lang/Object;
.source "EsRequest.java"


# instance fields
.field private final mMessage:Lcom/google/protobuf/MessageLite;

.field private final mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;


# direct methods
.method public constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V
    .registers 3
    .parameter "requestType"
    .parameter "message"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/plus/api/EsRequest;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 23
    iput-object p2, p0, Lcom/google/android/apps/plus/api/EsRequest;->mMessage:Lcom/google/protobuf/MessageLite;

    .line 24
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EsRequest;->mMessage:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EsRequest;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object v0
.end method
