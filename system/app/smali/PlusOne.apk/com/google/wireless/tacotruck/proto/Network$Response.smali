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

.field private favaRequestId_:J

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
    .line 1910
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$Response;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    .line 1911
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->initFields()V

    .line 1912
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1256
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1431
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

    .line 1463
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    .line 1257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1258
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1431
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

    .line 1463
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    .line 1258
    return-void
.end method

.method static synthetic access$1802(Lcom/google/wireless/tacotruck/proto/Network$Response;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/wireless/tacotruck/proto/Network$Response;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/google/wireless/tacotruck/proto/Network$Response;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/tacotruck/proto/Network$Response;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 1

    .prologue
    .line 1262
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    return-object v0
.end method

.method private getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1363
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1364
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1366
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1369
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
    .registers 3

    .prologue
    .line 1424
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1425
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 1426
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1427
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    .line 1428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    .line 1429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:J

    .line 1430
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    .registers 1

    .prologue
    .line 1571
    #calls: Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->access$1600()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 2

    .prologue
    .line 1266
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Response;

    return-object v0
.end method

.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object v0
.end method

.method public getFavaRequestId()J
    .registers 3

    .prologue
    .line 1420
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:J

    return-wide v0
.end method

.method public getIsMasterResponse()Z
    .registers 2

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    .line 1349
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1350
    check-cast v1, Ljava/lang/String;

    .line 1358
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1352
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1354
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1355
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1356
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1358
    goto :goto_8
.end method

.method public getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object v0
.end method

.method public getResponseBody()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    .line 1466
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1494
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1468
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1469
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 1470
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1473
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 1474
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1477
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3d

    .line 1478
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1481
    :cond_3d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4c

    .line 1482
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1485
    :cond_4c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 1486
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1489
    :cond_5c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 1490
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1493
    :cond_6c
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedSerializedSize:I

    move v1, v0

    .line 1494
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasErrorCode()Z
    .registers 3

    .prologue
    .line 1387
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

.method public hasFavaRequestId()Z
    .registers 3

    .prologue
    .line 1417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

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
    .line 1407
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

    .line 1345
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
    .line 1377
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
    .line 1397
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

    .line 1433
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

    .line 1434
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1437
    :goto_8
    return v1

    .line 1434
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1436
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->memoizedIsInitialized:B

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
    .line 1501
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1442
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getSerializedSize()I

    .line 1443
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 1444
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1446
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 1447
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1449
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_32

    .line 1450
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1452
    :cond_32
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3f

    .line 1453
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->responseBody_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1455
    :cond_3f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 1456
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->isMasterResponse_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1458
    :cond_4d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 1459
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Response;->favaRequestId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1461
    :cond_5b
    return-void
.end method
