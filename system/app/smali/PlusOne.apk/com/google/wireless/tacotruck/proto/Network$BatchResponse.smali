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
    .line 2280
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    .line 2281
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->initFields()V

    .line 2282
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1931
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1968
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    .line 1985
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    .line 1932
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1926
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1933
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1968
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    .line 1985
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    .line 1933
    return-void
.end method

.method static synthetic access$2800(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 1

    .prologue
    .line 1937
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    .line 1967
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 1

    .prologue
    .line 2073
    #calls: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->access$2600()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

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
    .line 2031
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->access$2500(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 2

    .prologue
    .line 1941
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    return-object v0
.end method

.method public getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 3
    .parameter "index"

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$Response;

    return-object v0
.end method

.method public getResponseCount()I
    .registers 2

    .prologue
    .line 1955
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
    .line 1948
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1962
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
    .line 1952
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1987
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    .line 1988
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 1996
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 1990
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 1991
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 1992
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1991
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1995
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 1996
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1970
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    .line 1971
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1974
    :goto_8
    return v1

    .line 1971
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1973
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2003
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
    .line 1979
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getSerializedSize()I

    .line 1980
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1981
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1983
    :cond_1b
    return-void
.end method
