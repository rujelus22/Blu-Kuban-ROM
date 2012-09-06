.class public final Lcom/google/wireless/tacotruck/proto/Network$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestId_:Ljava/lang/Object;

.field private requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

.field private responseBody_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2030
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$Response;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    .line 2031
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->initFields()V

    .line 2032
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1323
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1505
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

    .line 1537
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    .line 1324
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1505
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

    .line 1537
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    .line 1325
    return-void
.end method

.method static synthetic access$1902(Lcom/google/wireless/tacotruck/proto/Network$Response;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/wireless/tacotruck/proto/Network$Response;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/google/wireless/tacotruck/proto/Network$Response;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/wireless/tacotruck/proto/Network$Response;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/tacotruck/proto/Network$Response;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 1

    .prologue
    .line 1329
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    return-object v0
.end method

.method private getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1433
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1434
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1436
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1439
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1499
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1500
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1501
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    .line 1503
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    .line 1504
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 1

    .prologue
    .line 1650
    #calls: Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->access$1700()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1653
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 2

    .prologue
    .line 1333
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    return-object v0
.end method

.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object v0
.end method

.method public getFavaRequestId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

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
    .line 1491
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

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
    .line 1488
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    return-object v0
.end method

.method public getIsMasterResponse()Z
    .registers 2

    .prologue
    .line 1480
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1419
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1420
    check-cast v1, Ljava/lang/String;

    .line 1428
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1422
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1424
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1425
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1426
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1428
    goto :goto_8
.end method

.method public getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object v0
.end method

.method public getResponseBody()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1539
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    .line 1540
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 1573
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 1542
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 1543
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1a

    .line 1544
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1547
    :cond_1a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2b

    .line 1548
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->getNumber()I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1551
    :cond_2b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3d

    .line 1552
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1555
    :cond_3d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4c

    .line 1556
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1559
    :cond_4c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5c

    .line 1560
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1564
    :cond_5c
    const/4 v0, 0x0

    .line 1565
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5e
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7a

    .line 1566
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 1565
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 1569
    :cond_7a
    add-int/2addr v2, v0

    .line 1570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getFavaRequestIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1572
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    move v3, v2

    .line 1573
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public hasErrorCode()Z
    .registers 3

    .prologue
    .line 1457
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

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
    .line 1477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

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

    .line 1415
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

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
    .line 1447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

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
    .line 1467
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1507
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

    .line 1508
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1511
    :goto_8
    return v1

    .line 1508
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1510
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1651
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 2

    .prologue
    .line 1655
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

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
    .line 1580
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getSerializedSize()I

    .line 1517
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 1518
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1520
    :cond_13
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 1521
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1523
    :cond_22
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_32

    .line 1524
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1526
    :cond_32
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3f

    .line 1527
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1529
    :cond_3f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4d

    .line 1530
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1532
    :cond_4d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4e
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 1533
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1532
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1535
    :cond_69
    return-void
.end method
