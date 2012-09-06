.class public final Lcom/google/wireless/realtimechat/proto/Data$Location;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private static final serialVersionUID:J


# instance fields
.field private accuracy_:D

.field private bitField0_:I

.field private latitude_:D

.field private longitude_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2035
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Location;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Location;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2036
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Location;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->initFields()V

    .line 2037
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1575
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1657
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedIsInitialized:B

    .line 1683
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedSerializedSize:I

    .line 1576
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1570
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1577
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1657
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedIsInitialized:B

    .line 1683
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedSerializedSize:I

    .line 1577
    return-void
.end method

.method static synthetic access$2102(Lcom/google/wireless/realtimechat/proto/Data$Location;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1570
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/google/wireless/realtimechat/proto/Data$Location;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1570
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/google/wireless/realtimechat/proto/Data$Location;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1570
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->accuracy_:D

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/realtimechat/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/realtimechat/proto/Data$Location;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1570
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 1

    .prologue
    .line 1581
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Location;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1640
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 1641
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1642
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1644
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 1647
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
    const-wide/16 v0, 0x0

    .line 1652
    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->latitude_:D

    .line 1653
    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->longitude_:D

    .line 1654
    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->accuracy_:D

    .line 1655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 1656
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 1783
    #calls: Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->access$1900()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1786
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccuracy()D
    .registers 3

    .prologue
    .line 1616
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->accuracy_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1570
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 1585
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Location;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 1596
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 1606
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->longitude_:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1626
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 1627
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1628
    check-cast v1, Ljava/lang/String;

    .line 1636
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1630
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1632
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1633
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1634
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1636
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1685
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedSerializedSize:I

    .line 1686
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1706
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1688
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1689
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 1690
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->latitude_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 1693
    :cond_18
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 1694
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->longitude_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 1697
    :cond_25
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_33

    .line 1698
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->accuracy_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 1701
    :cond_33
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 1702
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1705
    :cond_44
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedSerializedSize:I

    move v1, v0

    .line 1706
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasAccuracy()Z
    .registers 3

    .prologue
    .line 1613
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

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

.method public hasLatitude()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1593
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitude()Z
    .registers 3

    .prologue
    .line 1603
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 1623
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

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

    .line 1659
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedIsInitialized:B

    .line 1660
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1663
    :goto_8
    return v1

    .line 1660
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1662
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1570
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 1784
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1570
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->toBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 1788
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

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
    .line 1713
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

    .line 1668
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getSerializedSize()I

    .line 1669
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 1670
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->latitude_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 1672
    :cond_11
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 1673
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->longitude_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 1675
    :cond_1c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_28

    .line 1676
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->accuracy_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 1678
    :cond_28
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 1679
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1681
    :cond_37
    return-void
.end method
