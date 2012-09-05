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

.field private favaRequestId_:J

.field private isMasterResponse_:Z

.field private requestId_:Ljava/lang/Object;

.field private requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

.field private responseBody_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1583
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1757
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1793
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1817
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1841
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1584
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->maybeForceBuilderInitialization()V

    .line 1585
    return-void
.end method

.method static synthetic access$1600()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 1

    .prologue
    .line 1578
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 1

    .prologue
    .line 1590
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1588
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 3

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    .line 1620
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$Response;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1621
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1623
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 6

    .prologue
    .line 1637
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$Response;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 1638
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$Response;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1639
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1640
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1641
    or-int/lit8 v2, v2, 0x1

    .line 1643
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$1802(Lcom/google/wireless/tacotruck/proto/Network$Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1645
    or-int/lit8 v2, v2, 0x2

    .line 1647
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$1902(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1648
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1649
    or-int/lit8 v2, v2, 0x4

    .line 1651
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2002(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1652
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1653
    or-int/lit8 v2, v2, 0x8

    .line 1655
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2102(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1656
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1657
    or-int/lit8 v2, v2, 0x10

    .line 1659
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2202(Lcom/google/wireless/tacotruck/proto/Network$Response;Z)Z

    .line 1660
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 1661
    or-int/lit8 v2, v2, 0x20

    .line 1663
    :cond_4f
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2302(Lcom/google/wireless/tacotruck/proto/Network$Response;J)J

    .line 1664
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$Response;->access$2402(Lcom/google/wireless/tacotruck/proto/Network$Response;I)I

    .line 1665
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3

    .prologue
    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1597
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1598
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1599
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1601
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    .line 1604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:J

    .line 1606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1607
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1834
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1835
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1837
    return-object p0
.end method

.method public clearFavaRequestId()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3

    .prologue
    .line 1900
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1901
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:J

    .line 1903
    return-object p0
.end method

.method public clearIsMasterResponse()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1879
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    .line 1882
    return-object p0
.end method

.method public clearRequestId()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1782
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1784
    return-object p0
.end method

.method public clearRequestType()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1810
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1811
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1813
    return-object p0
.end method

.method public clearResponseBody()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1858
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1859
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1861
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3

    .prologue
    .line 1611
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
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 2

    .prologue
    .line 1615
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object v0
.end method

.method public getFavaRequestId()J
    .registers 3

    .prologue
    .line 1891
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:J

    return-wide v0
.end method

.method public getIsMasterResponse()Z
    .registers 2

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1763
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1764
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1765
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1768
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
    .line 1798
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object v0
.end method

.method public getResponseBody()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasErrorCode()Z
    .registers 3

    .prologue
    .line 1819
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

.method public hasFavaRequestId()Z
    .registers 3

    .prologue
    .line 1888
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIsMasterResponse()Z
    .registers 3

    .prologue
    .line 1867
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

    .line 1759
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
    .line 1795
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
    .line 1843
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
    .line 1578
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

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
    .line 1578
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1700
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1701
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_68

    .line 1706
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1708
    :sswitch_d
    return-object p0

    .line 1713
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1714
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    goto :goto_0

    .line 1718
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1719
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    .line 1720
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    if-eqz v2, :cond_0

    .line 1721
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1722
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    goto :goto_0

    .line 1727
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1728
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v2

    .line 1729
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    if-eqz v2, :cond_0

    .line 1730
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1731
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_0

    .line 1736
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    :sswitch_41
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1737
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1741
    :sswitch_4e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1742
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    goto :goto_0

    .line 1746
    :sswitch_5b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1747
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:J

    goto :goto_0

    .line 1701
    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_41
        0x28 -> :sswitch_4e
        0x30 -> :sswitch_5b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1669
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1688
    :cond_6
    :goto_6
    return-object p0

    .line 1670
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1671
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1673
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasRequestType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1674
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setRequestType(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1676
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1677
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1679
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasResponseBody()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1680
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setResponseBody(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1682
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasIsMasterResponse()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1683
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getIsMasterResponse()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setIsMasterResponse(Z)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    .line 1685
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasFavaRequestId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1686
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getFavaRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->setFavaRequestId(J)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    goto :goto_6
.end method

.method public setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1825
    if-nez p1, :cond_8

    .line 1826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1828
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1829
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1831
    return-object p0
.end method

.method public setFavaRequestId(J)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1894
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1895
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->favaRequestId_:J

    .line 1897
    return-object p0
.end method

.method public setIsMasterResponse(Z)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1873
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1874
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->isMasterResponse_:Z

    .line 1876
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1772
    if-nez p1, :cond_8

    .line 1773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1775
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1776
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 1778
    return-object p0
.end method

.method public setRequestType(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1801
    if-nez p1, :cond_8

    .line 1802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1804
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1805
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1807
    return-object p0
.end method

.method public setResponseBody(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1849
    if-nez p1, :cond_8

    .line 1850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1852
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->bitField0_:I

    .line 1853
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1855
    return-object p0
.end method
