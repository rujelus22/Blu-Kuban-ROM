.class public final Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeaderOrBuilder;"
    }
.end annotation


# instance fields
.field private actAsPrimary_:Z

.field private alreadySentToPrimary_:Z

.field private bitField0_:I

.field private countForReliabilityTest_:Z

.field private destinationPayloadsSetSender_:Z

.field private dropIfNoEndpoint_:Z

.field private dropIfNoResource_:Z

.field private individuallyRoutedPayload_:Z

.field private secondaryPayload_:Ljava/lang/Object;

.field private stateUpdate_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1776
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    .line 1777
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->maybeForceBuilderInitialization()V

    .line 1778
    return-void
.end method

.method static synthetic access$2100()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 1

    .prologue
    .line 1771
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 1

    .prologue
    .line 1783
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1781
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 3

    .prologue
    .line 1818
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    .line 1819
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1820
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1822
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 6

    .prologue
    .line 1836
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 1837
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1838
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1839
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1840
    or-int/lit8 v2, v2, 0x1

    .line 1842
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->stateUpdate_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->stateUpdate_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$2302(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1843
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1844
    or-int/lit8 v2, v2, 0x2

    .line 1846
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->alreadySentToPrimary_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->alreadySentToPrimary_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$2402(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1847
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1848
    or-int/lit8 v2, v2, 0x4

    .line 1850
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->secondaryPayload_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$2502(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1852
    or-int/lit8 v2, v2, 0x8

    .line 1854
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoEndpoint_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoEndpoint_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$2602(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1855
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1856
    or-int/lit8 v2, v2, 0x10

    .line 1858
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->actAsPrimary_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->actAsPrimary_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$2702(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1859
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 1860
    or-int/lit8 v2, v2, 0x20

    .line 1862
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoResource_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->dropIfNoResource_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$2802(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1863
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 1864
    or-int/lit8 v2, v2, 0x40

    .line 1866
    :cond_5c
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->individuallyRoutedPayload_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->individuallyRoutedPayload_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$2902(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1867
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 1868
    or-int/lit16 v2, v2, 0x80

    .line 1870
    :cond_69
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->countForReliabilityTest_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->countForReliabilityTest_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$3002(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1871
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 1872
    or-int/lit16 v2, v2, 0x100

    .line 1874
    :cond_76
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->destinationPayloadsSetSender_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->destinationPayloadsSetSender_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$3102(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;Z)Z

    .line 1875
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->access$3202(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;I)I

    .line 1876
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1787
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1788
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->stateUpdate_:Z

    .line 1789
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1790
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->alreadySentToPrimary_:Z

    .line 1791
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    .line 1793
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1794
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoEndpoint_:Z

    .line 1795
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1796
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->actAsPrimary_:Z

    .line 1797
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1798
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoResource_:Z

    .line 1799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1800
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->individuallyRoutedPayload_:Z

    .line 1801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1802
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->countForReliabilityTest_:Z

    .line 1803
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1804
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->destinationPayloadsSetSender_:Z

    .line 1805
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1806
    return-object p0
.end method

.method public clearActAsPrimary()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2097
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->actAsPrimary_:Z

    .line 2100
    return-object p0
.end method

.method public clearAlreadySentToPrimary()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2019
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->alreadySentToPrimary_:Z

    .line 2022
    return-object p0
.end method

.method public clearCountForReliabilityTest()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2160
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->countForReliabilityTest_:Z

    .line 2163
    return-object p0
.end method

.method public clearDestinationPayloadsSetSender()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2181
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->destinationPayloadsSetSender_:Z

    .line 2184
    return-object p0
.end method

.method public clearDropIfNoEndpoint()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2076
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoEndpoint_:Z

    .line 2079
    return-object p0
.end method

.method public clearDropIfNoResource()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2118
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoResource_:Z

    .line 2121
    return-object p0
.end method

.method public clearIndividuallyRoutedPayload()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2139
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->individuallyRoutedPayload_:Z

    .line 2142
    return-object p0
.end method

.method public clearSecondaryPayload()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 2050
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2051
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getSecondaryPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    .line 2053
    return-object p0
.end method

.method public clearStateUpdate()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 2

    .prologue
    .line 1998
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1999
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->stateUpdate_:Z

    .line 2001
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3

    .prologue
    .line 1810
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

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
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActAsPrimary()Z
    .registers 2

    .prologue
    .line 2088
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->actAsPrimary_:Z

    return v0
.end method

.method public getAlreadySentToPrimary()Z
    .registers 2

    .prologue
    .line 2010
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->alreadySentToPrimary_:Z

    return v0
.end method

.method public getCountForReliabilityTest()Z
    .registers 2

    .prologue
    .line 2151
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->countForReliabilityTest_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2

    .prologue
    .line 1814
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationPayloadsSetSender()Z
    .registers 2

    .prologue
    .line 2172
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->destinationPayloadsSetSender_:Z

    return v0
.end method

.method public getDropIfNoEndpoint()Z
    .registers 2

    .prologue
    .line 2067
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoEndpoint_:Z

    return v0
.end method

.method public getDropIfNoResource()Z
    .registers 2

    .prologue
    .line 2109
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoResource_:Z

    return v0
.end method

.method public getIndividuallyRoutedPayload()Z
    .registers 2

    .prologue
    .line 2130
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->individuallyRoutedPayload_:Z

    return v0
.end method

.method public getSecondaryPayload()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    .line 2032
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2033
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2034
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    .line 2037
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

.method public getStateUpdate()Z
    .registers 2

    .prologue
    .line 1989
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->stateUpdate_:Z

    return v0
.end method

.method public hasActAsPrimary()Z
    .registers 3

    .prologue
    .line 2085
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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
    .line 2007
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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
    .line 2148
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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
    .line 2169
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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
    .line 2064
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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
    .line 2106
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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
    .line 2127
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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
    .line 2028
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

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

    .line 1986
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1912
    const/4 v0, 0x1

    return v0
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
    .line 1771
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1771
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

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
    .line 1771
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1920
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1921
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_84

    .line 1926
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1928
    :sswitch_d
    return-object p0

    .line 1933
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1934
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->stateUpdate_:Z

    goto :goto_0

    .line 1938
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1939
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->alreadySentToPrimary_:Z

    goto :goto_0

    .line 1943
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1944
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 1948
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1949
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoEndpoint_:Z

    goto :goto_0

    .line 1953
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1954
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->actAsPrimary_:Z

    goto :goto_0

    .line 1958
    :sswitch_4f
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1959
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoResource_:Z

    goto :goto_0

    .line 1963
    :sswitch_5c
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1964
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->individuallyRoutedPayload_:Z

    goto :goto_0

    .line 1968
    :sswitch_69
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1969
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->countForReliabilityTest_:Z

    goto :goto_0

    .line 1973
    :sswitch_76
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1974
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->destinationPayloadsSetSender_:Z

    goto/16 :goto_0

    .line 1921
    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x32 -> :sswitch_28
        0x38 -> :sswitch_35
        0x40 -> :sswitch_42
        0x48 -> :sswitch_4f
        0x50 -> :sswitch_5c
        0x58 -> :sswitch_69
        0x60 -> :sswitch_76
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1880
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1908
    :cond_6
    :goto_6
    return-object p0

    .line 1881
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasStateUpdate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1882
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getStateUpdate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setStateUpdate(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1884
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasAlreadySentToPrimary()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1885
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getAlreadySentToPrimary()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setAlreadySentToPrimary(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1887
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasSecondaryPayload()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1888
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getSecondaryPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setSecondaryPayload(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1890
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasDropIfNoEndpoint()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1891
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDropIfNoEndpoint()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setDropIfNoEndpoint(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1893
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasActAsPrimary()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1894
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getActAsPrimary()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setActAsPrimary(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1896
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasDropIfNoResource()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1897
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDropIfNoResource()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setDropIfNoResource(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1899
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasIndividuallyRoutedPayload()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1900
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getIndividuallyRoutedPayload()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setIndividuallyRoutedPayload(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1902
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasCountForReliabilityTest()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1903
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getCountForReliabilityTest()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setCountForReliabilityTest(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 1905
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->hasDestinationPayloadsSetSender()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1906
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDestinationPayloadsSetSender()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->setDestinationPayloadsSetSender(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    goto :goto_6
.end method

.method public setActAsPrimary(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2092
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->actAsPrimary_:Z

    .line 2094
    return-object p0
.end method

.method public setAlreadySentToPrimary(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2013
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2014
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->alreadySentToPrimary_:Z

    .line 2016
    return-object p0
.end method

.method public setCountForReliabilityTest(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2154
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2155
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->countForReliabilityTest_:Z

    .line 2157
    return-object p0
.end method

.method public setDestinationPayloadsSetSender(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2175
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2176
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->destinationPayloadsSetSender_:Z

    .line 2178
    return-object p0
.end method

.method public setDropIfNoEndpoint(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2070
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2071
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoEndpoint_:Z

    .line 2073
    return-object p0
.end method

.method public setDropIfNoResource(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2112
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2113
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->dropIfNoResource_:Z

    .line 2115
    return-object p0
.end method

.method public setIndividuallyRoutedPayload(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2133
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2134
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->individuallyRoutedPayload_:Z

    .line 2136
    return-object p0
.end method

.method public setSecondaryPayload(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2041
    if-nez p1, :cond_8

    .line 2042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2044
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 2045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->secondaryPayload_:Ljava/lang/Object;

    .line 2047
    return-object p0
.end method

.method public setStateUpdate(Z)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1992
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->bitField0_:I

    .line 1993
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->stateUpdate_:Z

    .line 1995
    return-object p0
.end method
