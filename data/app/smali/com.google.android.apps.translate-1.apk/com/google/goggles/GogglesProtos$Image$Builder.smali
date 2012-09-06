.class public final Lcom/google/goggles/GogglesProtos$Image$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$ImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/goggles/GogglesProtos$Image;",
        "Lcom/google/goggles/GogglesProtos$Image$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$ImageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private docid_:Ljava/lang/Object;

.field private imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

.field private imageUrl_:Ljava/lang/Object;

.field private roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 1739
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1818
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    .line 1577
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->maybeForceBuilderInitialization()V

    .line 1578
    return-void
.end method

.method static synthetic access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1572
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 1

    .prologue
    .line 1572
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image$Builder;->create()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    .line 1618
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1619
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1622
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 1

    .prologue
    .line 1583
    new-instance v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1581
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesProtos$Image;
    .registers 3

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    .line 1609
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1610
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1612
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->build()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesProtos$Image;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1626
    new-instance v2, Lcom/google/goggles/GogglesProtos$Image;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesProtos$Image;-><init>(Lcom/google/goggles/GogglesProtos$Image$Builder;Lcom/google/goggles/GogglesProtos$1;)V

    .line 1627
    iget v3, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1628
    const/4 v1, 0x0

    .line 1629
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 1632
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    #setter for: Lcom/google/goggles/GogglesProtos$Image;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$Image;->access$2202(Lcom/google/goggles/GogglesProtos$Image;Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1633
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 1634
    or-int/lit8 v0, v0, 0x2

    .line 1636
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesProtos$Image;->imageUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$Image;->access$2302(Lcom/google/goggles/GogglesProtos$Image;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 1638
    or-int/lit8 v0, v0, 0x4

    .line 1640
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    #setter for: Lcom/google/goggles/GogglesProtos$Image;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$Image;->access$2402(Lcom/google/goggles/GogglesProtos$Image;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1641
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 1642
    or-int/lit8 v0, v0, 0x8

    .line 1644
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesProtos$Image;->docid_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$Image;->access$2502(Lcom/google/goggles/GogglesProtos$Image;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    #setter for: Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesProtos$Image;->access$2602(Lcom/google/goggles/GogglesProtos$Image;I)I

    .line 1646
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2

    .prologue
    .line 1587
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 1588
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1589
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1591
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1592
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1593
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    .line 1595
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1596
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clear()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clear()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clear()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDocid()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2

    .prologue
    .line 1885
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1886
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image;->getDocid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    .line 1888
    return-object p0
.end method

.method public clearImageData()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2

    .prologue
    .line 1775
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1777
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1778
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2

    .prologue
    .line 1806
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1807
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1809
    return-object p0
.end method

.method public clearRoi()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2

    .prologue
    .line 1854
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1856
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1857
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3

    .prologue
    .line 1600
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image$Builder;->create()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clone()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clone()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clone()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clone()Lcom/google/goggles/GogglesProtos$Image$Builder;

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
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->clone()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2

    .prologue
    .line 1604
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public getDocid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    .line 1867
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1868
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1869
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    .line 1872
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getImageData()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1788
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1789
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1790
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1793
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getRoi()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public hasDocid()Z
    .registers 3

    .prologue
    .line 1863
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

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

.method public hasImageData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1741
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasImageUrl()Z
    .registers 3

    .prologue
    .line 1784
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

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

.method public hasRoi()Z
    .registers 3

    .prologue
    .line 1820
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1668
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->hasImageData()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1669
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->getImageData()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$ImageData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1684
    :cond_11
    :goto_11
    return v0

    .line 1674
    :cond_12
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->hasRoi()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1675
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->getRoi()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1680
    :cond_22
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1684
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1650
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1664
    :goto_6
    return-object p0

    .line 1651
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->hasImageData()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1652
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->getImageData()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeImageData(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 1654
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1655
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 1657
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->hasRoi()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1658
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->getRoi()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeRoi(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 1660
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1661
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image;->getDocid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setDocid(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 1663
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1692
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1693
    sparse-switch v0, :sswitch_data_60

    .line 1698
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1700
    :sswitch_d
    return-object p0

    .line 1705
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    .line 1706
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->hasImageData()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1707
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->getImageData()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 1709
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1710
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setImageData(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    goto :goto_0

    .line 1714
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1715
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 1719
    :sswitch_37
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 1720
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->hasRoi()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1721
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->getRoi()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 1723
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1724
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setRoi(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    goto :goto_0

    .line 1728
    :sswitch_53
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1729
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    goto :goto_0

    .line 1693
    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x22 -> :sswitch_53
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1572
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1572
    check-cast p1, Lcom/google/goggles/GogglesProtos$Image;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1572
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeImageData(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1763
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1765
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1771
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1772
    return-object p0

    .line 1768
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    goto :goto_1f
.end method

.method public mergeRoi(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1842
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1844
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1850
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1851
    return-object p0

    .line 1847
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_1f
.end method

.method public setDocid(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1876
    if-nez p1, :cond_8

    .line 1877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1879
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1880
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    .line 1882
    return-object p0
.end method

.method setDocid(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1891
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1892
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->docid_:Ljava/lang/Object;

    .line 1894
    return-void
.end method

.method public setImageData(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1757
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->build()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1759
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1760
    return-object p0
.end method

.method public setImageData(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1747
    if-nez p1, :cond_8

    .line 1748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1750
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1752
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1753
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1797
    if-nez p1, :cond_8

    .line 1798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1800
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1801
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1803
    return-object p0
.end method

.method setImageUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1812
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1813
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->imageUrl_:Ljava/lang/Object;

    .line 1815
    return-void
.end method

.method public setRoi(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1836
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1838
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1839
    return-object p0
.end method

.method public setRoi(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1826
    if-nez p1, :cond_8

    .line 1827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1829
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1831
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image$Builder;->bitField0_:I

    .line 1832
    return-object p0
.end method
