.class public final Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$BatchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private response_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2400
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    .line 2401
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->initFields()V

    .line 2402
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2051
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2088
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    .line 2105
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    .line 2052
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2046
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2053
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2088
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    .line 2105
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    .line 2053
    return-void
.end method

.method static synthetic access$2900(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 1

    .prologue
    .line 2057
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2086
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    .line 2087
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 1

    .prologue
    .line 2193
    #calls: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->access$2700()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2196
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2151
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->access$2600(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 2

    .prologue
    .line 2061
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    return-object v0
.end method

.method public getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 3
    .parameter "index"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$Response;

    return-object v0
.end method

.method public getResponseCount()I
    .registers 2

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;

    return-object v0
.end method

.method public getResponseOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 2107
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    .line 2108
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 2116
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 2110
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 2111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 2112
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2111
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2115
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 2116
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2090
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    .line 2091
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2094
    :goto_8
    return v1

    .line 2091
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2093
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 2

    .prologue
    .line 2194
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 2

    .prologue
    .line 2198
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2123
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getSerializedSize()I

    .line 2100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2101
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2100
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2103
    :cond_1b
    return-void
.end method
