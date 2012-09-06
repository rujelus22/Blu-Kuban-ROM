.class public final Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GogglesReplayProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

.field private queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

.field private queryImage_:Lcom/google/goggles/GogglesProtos$Image;

.field private userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1744
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1787
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1830
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1873
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1567
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1568
    return-void
.end method

.method static synthetic access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1561
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 1

    .prologue
    .line 1561
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1609
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1612
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 1

    .prologue
    .line 1573
    new-instance v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1571
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 3

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1600
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1602
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1616
    new-instance v2, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;-><init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;Lcom/google/goggles/GogglesReplayProtos$1;)V

    .line 1617
    iget v3, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1618
    const/4 v1, 0x0

    .line 1619
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 1622
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->access$2102(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1623
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 1624
    or-int/lit8 v0, v0, 0x2

    .line 1626
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->access$2202(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image;

    .line 1627
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 1628
    or-int/lit8 v0, v0, 0x4

    .line 1630
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->access$2302(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image;

    .line 1631
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 1632
    or-int/lit8 v0, v0, 0x8

    .line 1634
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->access$2402(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1635
    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->access$2502(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;I)I

    .line 1636
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2

    .prologue
    .line 1577
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1578
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1579
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1580
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1581
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1582
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1583
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1584
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1585
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1586
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGogglesResponse()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2

    .prologue
    .line 1780
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1782
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1783
    return-object p0
.end method

.method public clearQueryImage()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2

    .prologue
    .line 1823
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1825
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1826
    return-object p0
.end method

.method public clearQueryImageThumbnail()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1866
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1868
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1869
    return-object p0
.end method

.method public clearUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2

    .prologue
    .line 1909
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1911
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1912
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3

    .prologue
    .line 1590
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

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
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2

    .prologue
    .line 1594
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    return-object v0
.end method

.method public getQueryImage()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method public getQueryImageThumbnail()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method public getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    return-object v0
.end method

.method public hasGogglesResponse()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1746
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasQueryImage()Z
    .registers 3

    .prologue
    .line 1789
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

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

.method public hasQueryImageThumbnail()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1832
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

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

.method public hasUserContributionMetadata()Z
    .registers 3

    .prologue
    .line 1875
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1657
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasGogglesResponse()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1658
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1681
    :cond_11
    :goto_11
    return v0

    .line 1663
    :cond_12
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasQueryImage()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1664
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getQueryImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1669
    :cond_22
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasQueryImageThumbnail()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1670
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getQueryImageThumbnail()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1675
    :cond_32
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasUserContributionMetadata()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1676
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1681
    :cond_42
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1640
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1653
    :cond_6
    :goto_6
    return-object p0

    .line 1641
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasGogglesResponse()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1642
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeGogglesResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    .line 1644
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasQueryImage()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1645
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getQueryImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeQueryImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    .line 1647
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasQueryImageThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1648
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getQueryImageThumbnail()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeQueryImageThumbnail(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    .line 1650
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasUserContributionMetadata()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1651
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeUserContributionMetadata(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1690
    sparse-switch v0, :sswitch_data_7e

    .line 1695
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    :sswitch_d
    return-object p0

    .line 1702
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    .line 1703
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasGogglesResponse()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1704
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    .line 1706
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1707
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->setGogglesResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    goto :goto_0

    .line 1711
    :sswitch_2a
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    .line 1712
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasQueryImage()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1713
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getQueryImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 1715
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1716
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->setQueryImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    goto :goto_0

    .line 1720
    :sswitch_46
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    .line 1721
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasQueryImageThumbnail()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1722
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getQueryImageThumbnail()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 1724
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1725
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->setQueryImageThumbnail(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    goto :goto_0

    .line 1729
    :sswitch_62
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    .line 1730
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->hasUserContributionMetadata()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1731
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    .line 1733
    :cond_73
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1734
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->setUserContributionMetadata(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    goto :goto_0

    .line 1690
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_46
        0x22 -> :sswitch_62
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
    .line 1561
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1561
    check-cast p1, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

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
    .line 1561
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGogglesResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1768
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1770
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1776
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1777
    return-object p0

    .line 1773
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    goto :goto_1f
.end method

.method public mergeQueryImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1811
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1813
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1819
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1820
    return-object p0

    .line 1816
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    goto :goto_1f
.end method

.method public mergeQueryImageThumbnail(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1854
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1856
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1862
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1863
    return-object p0

    .line 1859
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    goto :goto_1f
.end method

.method public mergeUserContributionMetadata(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1897
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1899
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1905
    :goto_20
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1906
    return-object p0

    .line 1902
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    goto :goto_20
.end method

.method public setGogglesResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1762
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1764
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1765
    return-object p0
.end method

.method public setGogglesResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1752
    if-nez p1, :cond_8

    .line 1753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1755
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1757
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1758
    return-object p0
.end method

.method public setQueryImage(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1805
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->build()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1807
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1808
    return-object p0
.end method

.method public setQueryImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1795
    if-nez p1, :cond_8

    .line 1796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1798
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1800
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1801
    return-object p0
.end method

.method public setQueryImageThumbnail(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1848
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->build()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1850
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1851
    return-object p0
.end method

.method public setQueryImageThumbnail(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1838
    if-nez p1, :cond_8

    .line 1839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1841
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1843
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1844
    return-object p0
.end method

.method public setUserContributionMetadata(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1891
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1893
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1894
    return-object p0
.end method

.method public setUserContributionMetadata(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1881
    if-nez p1, :cond_8

    .line 1882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1884
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1886
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->bitField0_:I

    .line 1887
    return-object p0
.end method
