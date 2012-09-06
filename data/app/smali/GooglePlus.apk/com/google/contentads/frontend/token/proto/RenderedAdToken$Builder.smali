.class public final Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderedAdToken.java"

# interfaces
.implements Lcom/google/contentads/frontend/token/proto/RenderedAdTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdToken;",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;",
        ">;",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdTokenOrBuilder;"
    }
.end annotation


# instance fields
.field private adgroupId_:J

.field private attribution_:Ljava/lang/Object;

.field private bitField0_:I

.field private clickUrl_:Ljava/lang/Object;

.field private creativeId_:J

.field private creativeType_:I

.field private textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

.field private visibleUrl_:Ljava/lang/Object;

.field private visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1604
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clickUrl_:Ljava/lang/Object;

    .line 1911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visibleUrl_:Ljava/lang/Object;

    .line 1947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->attribution_:Ljava/lang/Object;

    .line 1983
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .line 2026
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    .line 1605
    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->maybeForceBuilderInitialization()V

    .line 1606
    return-void
.end method

.method static synthetic access$1900()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 1

    .prologue
    .line 1599
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 1

    .prologue
    .line 1611
    new-instance v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    invoke-direct {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1609
    return-void
.end method


# virtual methods
.method public build()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
    .registers 3

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v0

    .line 1645
    .local v0, result:Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1646
    invoke-static {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1648
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->build()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
    .registers 6

    .prologue
    .line 1662
    new-instance v1, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;-><init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$1;)V

    .line 1663
    .local v1, result:Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1664
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1665
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1666
    or-int/lit8 v2, v2, 0x1

    .line 1668
    :cond_10
    iget v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeType_:I

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeType_:I
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2102(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;I)I

    .line 1669
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1670
    or-int/lit8 v2, v2, 0x2

    .line 1672
    :cond_1c
    iget-wide v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeId_:J

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeId_:J
    invoke-static {v1, v3, v4}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2202(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;J)J

    .line 1673
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1674
    or-int/lit8 v2, v2, 0x4

    .line 1676
    :cond_28
    iget-wide v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->adgroupId_:J

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->adgroupId_:J
    invoke-static {v1, v3, v4}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2302(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;J)J

    .line 1677
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1678
    or-int/lit8 v2, v2, 0x8

    .line 1680
    :cond_35
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clickUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->clickUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2402(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1682
    or-int/lit8 v2, v2, 0x10

    .line 1684
    :cond_42
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visibleUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visibleUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2502(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 1686
    or-int/lit8 v2, v2, 0x20

    .line 1688
    :cond_4f
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->attribution_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->attribution_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2602(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 1690
    or-int/lit8 v2, v2, 0x40

    .line 1692
    :cond_5c
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2702(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .line 1693
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 1694
    or-int/lit16 v2, v2, 0x80

    .line 1696
    :cond_69
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2802(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    .line 1697
    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->access$2902(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;I)I

    .line 1698
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1615
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1616
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeType_:I

    .line 1617
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1618
    iput-wide v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeId_:J

    .line 1619
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1620
    iput-wide v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->adgroupId_:J

    .line 1621
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clickUrl_:Ljava/lang/Object;

    .line 1623
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1624
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visibleUrl_:Ljava/lang/Object;

    .line 1625
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->attribution_:Ljava/lang/Object;

    .line 1627
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1628
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .line 1629
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1630
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    .line 1631
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1632
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 3

    .prologue
    .line 1636
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

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
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdgroupId()J
    .registers 3

    .prologue
    .line 1859
    iget-wide v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->adgroupId_:J

    return-wide v0
.end method

.method public getAttribution()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->attribution_:Ljava/lang/Object;

    .line 1953
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1954
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->attribution_:Ljava/lang/Object;

    .line 1958
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

.method public getClickUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clickUrl_:Ljava/lang/Object;

    .line 1881
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1882
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clickUrl_:Ljava/lang/Object;

    .line 1886
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

.method public getCreativeId()J
    .registers 3

    .prologue
    .line 1838
    iget-wide v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeId_:J

    return-wide v0
.end method

.method public getCreativeType()I
    .registers 2

    .prologue
    .line 1817
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeType_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
    .registers 2

    .prologue
    .line 1640
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v0

    return-object v0
.end method

.method public getTextElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    .registers 2

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    return-object v0
.end method

.method public getVisibleUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visibleUrl_:Ljava/lang/Object;

    .line 1917
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1918
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1919
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visibleUrl_:Ljava/lang/Object;

    .line 1922
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

.method public getVisualElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    .registers 2

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    return-object v0
.end method

.method public hasAttribution()Z
    .registers 3

    .prologue
    .line 1949
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

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

.method public hasTextElement()Z
    .registers 3

    .prologue
    .line 2028
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

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

.method public hasVisualElement()Z
    .registers 3

    .prologue
    .line 1985
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1731
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->hasVisualElement()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1732
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getVisualElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1734
    const/4 v0, 0x0

    .line 1737
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1702
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1727
    :cond_6
    :goto_6
    return-object p0

    .line 1703
    :cond_7
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasCreativeType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1704
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getCreativeType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setCreativeType(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    .line 1706
    :cond_14
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasCreativeId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1707
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getCreativeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setCreativeId(J)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    .line 1709
    :cond_21
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasAdgroupId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1710
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getAdgroupId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setAdgroupId(J)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    .line 1712
    :cond_2e
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasClickUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1713
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setClickUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    .line 1715
    :cond_3b
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasVisibleUrl()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1716
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getVisibleUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setVisibleUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    .line 1718
    :cond_48
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasAttribution()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1719
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getAttribution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setAttribution(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    .line 1721
    :cond_55
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasVisualElement()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1722
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getVisualElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->mergeVisualElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    .line 1724
    :cond_62
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->hasTextElement()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1725
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getTextElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->mergeTextElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1745
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1746
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_9a

    .line 1751
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1753
    :sswitch_d
    return-object p0

    .line 1758
    :sswitch_e
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1759
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeType_:I

    goto :goto_0

    .line 1763
    :sswitch_1b
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1764
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clickUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 1768
    :sswitch_28
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1769
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visibleUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 1773
    :sswitch_35
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    .line 1774
    .local v0, subBuilder:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->hasVisualElement()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1775
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getVisualElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    .line 1777
    :cond_46
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1778
    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setVisualElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    goto :goto_0

    .line 1782
    .end local v0           #subBuilder:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    :sswitch_52
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    .line 1783
    .local v0, subBuilder:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->hasTextElement()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1784
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getTextElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    .line 1786
    :cond_63
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1787
    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->setTextElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    goto :goto_0

    .line 1791
    .end local v0           #subBuilder:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    :sswitch_70
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1792
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeId_:J

    goto :goto_0

    .line 1796
    :sswitch_7d
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1797
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->adgroupId_:J

    goto/16 :goto_0

    .line 1801
    :sswitch_8b
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1802
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->attribution_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1746
    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x23 -> :sswitch_35
        0x4b -> :sswitch_52
        0x68 -> :sswitch_70
        0x70 -> :sswitch_7d
        0x9a -> :sswitch_8b
    .end sparse-switch
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
    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1599
    check-cast p1, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

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
    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTextElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2050
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2052
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    invoke-static {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->newBuilder(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    .line 2058
    :goto_20
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 2059
    return-object p0

    .line 2055
    :cond_27
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    goto :goto_20
.end method

.method public mergeVisualElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2007
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2009
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    invoke-static {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->newBuilder(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .line 2015
    :goto_20
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 2016
    return-object p0

    .line 2012
    :cond_27
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    goto :goto_20
.end method

.method public setAdgroupId(J)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1862
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1863
    iput-wide p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->adgroupId_:J

    .line 1865
    return-object p0
.end method

.method public setAttribution(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1962
    if-nez p1, :cond_8

    .line 1963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1965
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1966
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->attribution_:Ljava/lang/Object;

    .line 1968
    return-object p0
.end method

.method public setClickUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1890
    if-nez p1, :cond_8

    .line 1891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1893
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1894
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->clickUrl_:Ljava/lang/Object;

    .line 1896
    return-object p0
.end method

.method public setCreativeId(J)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1841
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1842
    iput-wide p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeId_:J

    .line 1844
    return-object p0
.end method

.method public setCreativeType(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1820
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1821
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->creativeType_:I

    .line 1823
    return-object p0
.end method

.method public setTextElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2034
    if-nez p1, :cond_8

    .line 2035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2037
    :cond_8
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    .line 2039
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 2040
    return-object p0
.end method

.method public setVisibleUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1926
    if-nez p1, :cond_8

    .line 1927
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1929
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1930
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visibleUrl_:Ljava/lang/Object;

    .line 1932
    return-object p0
.end method

.method public setVisualElement(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1991
    if-nez p1, :cond_8

    .line 1992
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1994
    :cond_8
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .line 1996
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->bitField0_:I

    .line 1997
    return-object p0
.end method
