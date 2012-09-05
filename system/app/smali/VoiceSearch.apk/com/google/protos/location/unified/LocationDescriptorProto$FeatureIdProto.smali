.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;


# instance fields
.field private bitField0_:I

.field private cellId_:J

.field private fprint_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1681
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1961
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1962
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->initFields()V

    .line 1963
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1642
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1721
    iput-byte v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1741
    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1643
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->initFields()V

    .line 1644
    const/4 v2, 0x0

    .line 1646
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1647
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 1648
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1649
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 1654
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1656
    const/4 v0, 0x1

    goto :goto_d

    .line 1651
    :sswitch_1e
    const/4 v0, 0x1

    .line 1652
    goto :goto_d

    .line 1661
    :sswitch_20
    iget v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 1662
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 1672
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 1673
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 1678
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->makeExtensionsImmutable()V

    throw v4

    .line 1666
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 1667
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 1674
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 1675
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 1678
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->makeExtensionsImmutable()V

    .line 1680
    return-void

    .line 1649
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0x9 -> :sswitch_20
        0x11 -> :sswitch_38
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1620
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1625
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1721
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1741
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1627
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1620
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1628
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1721
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1741
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1628
    return-void
.end method

.method static synthetic access$1802(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1620
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1620
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1620
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .registers 1

    .prologue
    .line 1632
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1718
    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 1719
    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 1720
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .registers 1

    .prologue
    .line 1818
    #calls: Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->access$1600()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1821
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCellId()J
    .registers 3

    .prologue
    .line 1704
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .registers 2

    .prologue
    .line 1636
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getFprint()J
    .registers 3

    .prologue
    .line 1714
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1743
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1744
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1756
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1746
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1747
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 1748
    iget-wide v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1751
    :cond_17
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 1752
    iget-wide v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1755
    :cond_24
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    move v1, v0

    .line 1756
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCellId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1701
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFprint()Z
    .registers 3

    .prologue
    .line 1711
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1723
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1724
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1727
    :goto_8
    return v1

    .line 1724
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1726
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .registers 2

    .prologue
    .line 1819
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .registers 2

    .prologue
    .line 1823
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

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
    .line 1762
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1732
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getSerializedSize()I

    .line 1733
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 1734
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1736
    :cond_10
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 1737
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1739
    :cond_1b
    return-void
.end method
