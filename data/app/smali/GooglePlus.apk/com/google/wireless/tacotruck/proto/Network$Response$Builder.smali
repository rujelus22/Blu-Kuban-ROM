.class public final Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$Response;",
        "Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field private favaRequestId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isMasterResponse_:Z

.field private requestId_:Ljava/lang/Object;

.field private requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

.field private responseBody_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1662
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1889
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1913
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1937
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1982
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    .line 1663
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->maybeForceBuilderInitialization()V

    .line 1664
    return-void
.end method

.method static synthetic access$1700()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 1

    .prologue
    .line 1657
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 1

    .prologue
    .line 1669
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFavaRequestIdIsMutable()V
    .registers 3

    .prologue
    .line 1984
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 1985
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    .line 1986
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1988
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1667
    return-void
.end method


# virtual methods
.method public addAllFavaRequestId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;"
        }
    .end annotation

    .prologue
    .line 2014
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->ensureFavaRequestIdIsMutable()V

    .line 2015
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2017
    return-object p0
.end method

.method public addFavaRequestId(J)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 2007
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->ensureFavaRequestIdIsMutable()V

    .line 2008
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2010
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 3

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    .line 1699
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$Response;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1700
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1702
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 6

    .prologue
    .line 1716
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$Response;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 1717
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$Response;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1718
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1719
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1720
    or-int/lit8 v2, v2, 0x1

    .line 1722
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$1902(Lcom/google/wireless/tacotruck/proto/Network$Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1724
    or-int/lit8 v2, v2, 0x2

    .line 1726
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2002(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1727
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1728
    or-int/lit8 v2, v2, 0x4

    .line 1730
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2102(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1731
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1732
    or-int/lit8 v2, v2, 0x8

    .line 1734
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2202(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1735
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1736
    or-int/lit8 v2, v2, 0x10

    .line 1738
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2302(Lcom/google/wireless/tacotruck/proto/Network$Response;Z)Z

    .line 1739
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 1740
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    .line 1741
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1743
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2402(Lcom/google/wireless/tacotruck/proto/Network$Response;Ljava/util/List;)Ljava/util/List;

    .line 1744
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2502(Lcom/google/wireless/tacotruck/proto/Network$Response;I)I

    .line 1745
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1673
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1676
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1677
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1678
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1679
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1680
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    .line 1683
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    .line 1685
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1686
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1930
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1931
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1933
    return-object p0
.end method

.method public clearFavaRequestId()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 2020
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    .line 2021
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 2023
    return-object p0
.end method

.method public clearIsMasterResponse()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1975
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    .line 1978
    return-object p0
.end method

.method public clearRequestId()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1877
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1878
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1880
    return-object p0
.end method

.method public clearRequestType()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1906
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1907
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1909
    return-object p0
.end method

.method public clearResponseBody()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1954
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1955
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1957
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3

    .prologue
    .line 1690
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 2

    .prologue
    .line 1694
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object v0
.end method

.method public getFavaRequestId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFavaRequestIdCount()I
    .registers 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFavaRequestIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsMasterResponse()Z
    .registers 2

    .prologue
    .line 1966
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1859
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1860
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1861
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1864
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object v0
.end method

.method public getResponseBody()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasErrorCode()Z
    .registers 3

    .prologue
    .line 1915
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsMasterResponse()Z
    .registers 3

    .prologue
    .line 1963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRequestId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1855
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRequestType()Z
    .registers 3

    .prologue
    .line 1891
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasResponseBody()Z
    .registers 3

    .prologue
    .line 1939
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1779
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1657
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1787
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1788
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_88

    .line 1793
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1795
    :sswitch_d
    return-object p0

    .line 1800
    :sswitch_e
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1801
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    goto :goto_0

    .line 1805
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 1806
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v4

    .line 1807
    .local v4, value:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    if-eqz v4, :cond_0

    .line 1808
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1809
    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    goto :goto_0

    .line 1814
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 1815
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v4

    .line 1816
    .local v4, value:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    if-eqz v4, :cond_0

    .line 1817
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1818
    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_0

    .line 1823
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    :sswitch_41
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1824
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1828
    :sswitch_4e
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1829
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    goto :goto_0

    .line 1833
    :sswitch_5b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->ensureFavaRequestIdIsMutable()V

    .line 1834
    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1838
    :sswitch_6c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 1839
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 1840
    .local v1, limit:I
    :goto_74
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_82

    .line 1841
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->addFavaRequestId(J)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    goto :goto_74

    .line 1843
    :cond_82
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 1788
    nop

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_41
        0x28 -> :sswitch_4e
        0x30 -> :sswitch_5b
        0x32 -> :sswitch_6c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1749
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1775
    :cond_6
    :goto_6
    return-object p0

    .line 1750
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1751
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1753
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasRequestType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1754
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setRequestType(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1756
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1757
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1759
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasResponseBody()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1760
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setResponseBody(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1762
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasIsMasterResponse()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1763
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getIsMasterResponse()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setIsMasterResponse(Z)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1765
    :cond_48
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2400(Lcom/google/wireless/tacotruck/proto/Network$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1766
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1767
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2400(Lcom/google/wireless/tacotruck/proto/Network$Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    .line 1768
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    goto :goto_6

    .line 1770
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->ensureFavaRequestIdIsMutable()V

    .line 1771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2400(Lcom/google/wireless/tacotruck/proto/Network$Response;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1921
    if-nez p1, :cond_8

    .line 1922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1924
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1925
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1927
    return-object p0
.end method

.method public setFavaRequestId(IJ)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2001
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->ensureFavaRequestIdIsMutable()V

    .line 2002
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2004
    return-object p0
.end method

.method public setIsMasterResponse(Z)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1970
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    .line 1972
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1868
    if-nez p1, :cond_8

    .line 1869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1871
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1872
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1874
    return-object p0
.end method

.method public setRequestType(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1897
    if-nez p1, :cond_8

    .line 1898
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1900
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1901
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1903
    return-object p0
.end method

.method public setResponseBody(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1945
    if-nez p1, :cond_8

    .line 1946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1948
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1949
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1951
    return-object p0
.end method
