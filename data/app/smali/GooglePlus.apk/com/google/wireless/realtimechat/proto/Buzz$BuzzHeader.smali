.class public final Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuzzHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

.field private static final serialVersionUID:J


# instance fields
.field private actAsPrimary_:Z

.field private alreadySentToPrimary_:Z

.field private bitField0_:I

.field private countForReliabilityTest_:Z

.field private destinationPayloadsSetSender_:Z

.field private dropIfNoEndpoint_:Z

.field private dropIfNoResource_:Z

.field private individuallyRoutedPayload_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private secondaryPayload_:Ljava/lang/Object;

.field private stateUpdate_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2191
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2192
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->initFields()V

    .line 2193
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1466
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1603
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedIsInitialized:B

    .line 1644
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedSerializedSize:I

    .line 1467
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1468
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1603
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedIsInitialized:B

    .line 1644
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedSerializedSize:I

    .line 1468
    return-void
.end method

.method static synthetic access$2302(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->stateUpdate_:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->alreadySentToPrimary_:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->secondaryPayload_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoEndpoint_:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->actAsPrimary_:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoResource_:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->individuallyRoutedPayload_:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->countForReliabilityTest_:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->destinationPayloadsSetSender_:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1461
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 1

    .prologue
    .line 1472
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object v0
.end method

.method private getSecondaryPayloadBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1521
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->secondaryPayload_:Ljava/lang/Object;

    .line 1522
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1523
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1525
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->secondaryPayload_:Ljava/lang/Object;

    .line 1528
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
    const/4 v1, 0x0

    .line 1593
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->stateUpdate_:Z

    .line 1594
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->alreadySentToPrimary_:Z

    .line 1595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->secondaryPayload_:Ljava/lang/Object;

    .line 1596
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoEndpoint_:Z

    .line 1597
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->actAsPrimary_:Z

    .line 1598
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoResource_:Z

    .line 1599
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->individuallyRoutedPayload_:Z

    .line 1600
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->countForReliabilityTest_:Z

    .line 1601
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->destinationPayloadsSetSender_:Z

    .line 1602
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 1

    .prologue
    .line 1764
    #calls: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->access$2100()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1767
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActAsPrimary()Z
    .registers 2

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->actAsPrimary_:Z

    return v0
.end method

.method public getAlreadySentToPrimary()Z
    .registers 2

    .prologue
    .line 1497
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->alreadySentToPrimary_:Z

    return v0
.end method

.method public getCountForReliabilityTest()Z
    .registers 2

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->countForReliabilityTest_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2

    .prologue
    .line 1476
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object v0
.end method

.method public getDestinationPayloadsSetSender()Z
    .registers 2

    .prologue
    .line 1589
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->destinationPayloadsSetSender_:Z

    return v0
.end method

.method public getDropIfNoEndpoint()Z
    .registers 2

    .prologue
    .line 1539
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoEndpoint_:Z

    return v0
.end method

.method public getDropIfNoResource()Z
    .registers 2

    .prologue
    .line 1559
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoResource_:Z

    return v0
.end method

.method public getIndividuallyRoutedPayload()Z
    .registers 2

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->individuallyRoutedPayload_:Z

    return v0
.end method

.method public getSecondaryPayload()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->secondaryPayload_:Ljava/lang/Object;

    .line 1508
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1509
    check-cast v1, Ljava/lang/String;

    .line 1517
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1511
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1513
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1514
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1515
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->secondaryPayload_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1517
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedSerializedSize:I

    .line 1647
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    move v1, v0

    .line 1687
    .end local v0           #size:I
    .local v1, size:I
    :goto_a
    return v1

    .line 1649
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_b
    const/4 v0, 0x0

    .line 1650
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 1651
    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->stateUpdate_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1654
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 1655
    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->alreadySentToPrimary_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1658
    :cond_26
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 1659
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getSecondaryPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1662
    :cond_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v5, :cond_45

    .line 1663
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoEndpoint_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1666
    :cond_45
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 1667
    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->actAsPrimary_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1670
    :cond_54
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_65

    .line 1671
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoResource_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1674
    :cond_65
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_76

    .line 1675
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->individuallyRoutedPayload_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1678
    :cond_76
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_87

    .line 1679
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->countForReliabilityTest_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1682
    :cond_87
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_98

    .line 1683
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->destinationPayloadsSetSender_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1686
    :cond_98
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedSerializedSize:I

    move v1, v0

    .line 1687
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_a
.end method

.method public getStateUpdate()Z
    .registers 2

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->stateUpdate_:Z

    return v0
.end method

.method public hasActAsPrimary()Z
    .registers 3

    .prologue
    .line 1546
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

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

.method public hasAlreadySentToPrimary()Z
    .registers 3

    .prologue
    .line 1494
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

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

.method public hasCountForReliabilityTest()Z
    .registers 3

    .prologue
    .line 1576
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDestinationPayloadsSetSender()Z
    .registers 3

    .prologue
    .line 1586
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDropIfNoEndpoint()Z
    .registers 3

    .prologue
    .line 1536
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

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

.method public hasDropIfNoResource()Z
    .registers 3

    .prologue
    .line 1556
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

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

.method public hasIndividuallyRoutedPayload()Z
    .registers 3

    .prologue
    .line 1566
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSecondaryPayload()Z
    .registers 3

    .prologue
    .line 1504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

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

.method public hasStateUpdate()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1484
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1605
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedIsInitialized:B

    .line 1606
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1609
    :goto_8
    return v1

    .line 1606
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1608
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 1765
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->toBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 1769
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

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
    .line 1694
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
    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1614
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getSerializedSize()I

    .line 1615
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 1616
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->stateUpdate_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1618
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 1619
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->alreadySentToPrimary_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1621
    :cond_1d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 1622
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getSecondaryPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1624
    :cond_2c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_38

    .line 1625
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoEndpoint_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1627
    :cond_38
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 1628
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->actAsPrimary_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1630
    :cond_45
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_54

    .line 1631
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoResource_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1633
    :cond_54
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_63

    .line 1634
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->individuallyRoutedPayload_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1636
    :cond_63
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_72

    .line 1637
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->countForReliabilityTest_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1639
    :cond_72
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_81

    .line 1640
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->destinationPayloadsSetSender_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1642
    :cond_81
    return-void
.end method
