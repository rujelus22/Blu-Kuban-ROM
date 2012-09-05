.class public final Lcom/google/wireless/tacotruck/proto/Data$Source;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$SourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1854
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Source;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 1855
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->initFields()V

    .line 1856
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1347
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1496
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

    .line 1519
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    .line 1348
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1349
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1496
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

    .line 1519
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    .line 1349
    return-void
.end method

.method static synthetic access$1802(Lcom/google/wireless/tacotruck/proto/Data$Source;Lcom/google/wireless/tacotruck/proto/Data$Source$Type;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/wireless/tacotruck/proto/Data$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/wireless/tacotruck/proto/Data$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/wireless/tacotruck/proto/Data$Source;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1342
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 1

    .prologue
    .line 1353
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1448
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1449
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1450
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1452
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1455
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1481
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1482
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1484
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1487
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
    .line 1492
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1494
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1495
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 1

    .prologue
    .line 1615
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->access$1600()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1618
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2

    .prologue
    .line 1357
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1434
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1435
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1436
    check-cast v1, Ljava/lang/String;

    .line 1444
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1438
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1440
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1441
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1442
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1444
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1521
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    .line 1522
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1538
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1524
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1525
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 1526
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1529
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 1530
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1533
    :cond_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 1534
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1537
    :cond_3b
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    move v1, v0

    .line 1538
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1467
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1468
    check-cast v1, Ljava/lang/String;

    .line 1476
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1470
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1472
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1473
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1474
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1476
    goto :goto_8
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 1431
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1421
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 1463
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1498
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

    .line 1499
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1502
    :goto_8
    return v1

    .line 1499
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1501
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

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
    .line 1545
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getSerializedSize()I

    .line 1508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 1509
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1511
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 1512
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1514
    :cond_21
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 1515
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1517
    :cond_30
    return-void
.end method
