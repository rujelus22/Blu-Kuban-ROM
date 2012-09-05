.class public final Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateCircleResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;,
        Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

.field private type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2154
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2155
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->initFields()V

    .line 2156
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1599
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1747
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedIsInitialized:B

    .line 1773
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedSerializedSize:I

    .line 1600
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1594
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;-><init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1601
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1747
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedIsInitialized:B

    .line 1773
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedSerializedSize:I

    .line 1601
    return-void
.end method

.method static synthetic access$2302(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1594
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 1

    .prologue
    .line 1605
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->id_:Ljava/lang/Object;

    .line 1689
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1690
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1692
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->id_:Ljava/lang/Object;

    .line 1695
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1730
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->name_:Ljava/lang/Object;

    .line 1731
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1732
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1734
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->name_:Ljava/lang/Object;

    .line 1737
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
    .line 1742
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    .line 1743
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->id_:Ljava/lang/Object;

    .line 1744
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1745
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->name_:Ljava/lang/Object;

    .line 1746
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 1

    .prologue
    .line 1873
    #calls: Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->access$2100()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1876
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1831
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->access$2000(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 2

    .prologue
    .line 1609
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1674
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->id_:Ljava/lang/Object;

    .line 1675
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1676
    check-cast v1, Ljava/lang/String;

    .line 1684
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1678
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1680
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1681
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1682
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1684
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1716
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->name_:Ljava/lang/Object;

    .line 1717
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1718
    check-cast v1, Ljava/lang/String;

    .line 1726
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1720
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1722
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1723
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1724
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1726
    goto :goto_8
.end method

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;
    .registers 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1775
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedSerializedSize:I

    .line 1776
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1796
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1778
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1779
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 1780
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1783
    :cond_1c
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 1784
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1787
    :cond_2b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3d

    .line 1788
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1791
    :cond_3d
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4e

    .line 1792
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1795
    :cond_4e
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 1796
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 1671
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

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
    .line 1713
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

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

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1661
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 1703
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

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

    .line 1749
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedIsInitialized:B

    .line 1750
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1753
    :goto_8
    return v1

    .line 1750
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1752
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->memoizedIsInitialized:B

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
    .line 1803
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

    .line 1758
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getSerializedSize()I

    .line 1759
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 1760
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1762
    :cond_15
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 1763
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1765
    :cond_22
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_32

    .line 1766
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1768
    :cond_32
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 1769
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1771
    :cond_41
    return-void
.end method
