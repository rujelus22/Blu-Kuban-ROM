.class public final Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$SourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Source;",
        "Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$SourceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1627
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1755
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1779
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    .line 1815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    .line 1628
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->maybeForceBuilderInitialization()V

    .line 1629
    return-void
.end method

.method static synthetic access$1600()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 1

    .prologue
    .line 1622
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 1

    .prologue
    .line 1634
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1632
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 3

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    .line 1658
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Source;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1659
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1661
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 6

    .prologue
    .line 1675
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Source;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Source;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 1676
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Source;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1677
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1678
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1679
    or-int/lit8 v2, v2, 0x1

    .line 1681
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Source;->access$1802(Lcom/google/wireless/tacotruck/proto/Data$Source;Lcom/google/wireless/tacotruck/proto/Data$Source$Type;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1682
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1683
    or-int/lit8 v2, v2, 0x2

    .line 1685
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Source;->access$1902(Lcom/google/wireless/tacotruck/proto/Data$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1687
    or-int/lit8 v2, v2, 0x4

    .line 1689
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Source;->access$2002(Lcom/google/wireless/tacotruck/proto/Data$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Source;->access$2102(Lcom/google/wireless/tacotruck/proto/Data$Source;I)I

    .line 1691
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2

    .prologue
    .line 1638
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1639
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1640
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    .line 1642
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    .line 1644
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1645
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2

    .prologue
    .line 1803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1804
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    .line 1806
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2

    .prologue
    .line 1772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1773
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1775
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2

    .prologue
    .line 1839
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1840
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    .line 1842
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 3

    .prologue
    .line 1649
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

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
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2

    .prologue
    .line 1653
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    .line 1785
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1786
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    .line 1790
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 2

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    .line 1821
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1822
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    .line 1826
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

.method public hasName()Z
    .registers 3

    .prologue
    .line 1781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

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

    .line 1757
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

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
    .line 1817
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

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
    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

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
    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1717
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1718
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 1723
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1725
    :sswitch_d
    return-object p0

    .line 1730
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1731
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v2

    .line 1732
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    if-eqz v2, :cond_0

    .line 1733
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1734
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_0

    .line 1739
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1740
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1744
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1745
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 1718
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1695
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1705
    :cond_6
    :goto_6
    return-object p0

    .line 1696
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1697
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getType()Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Source$Type;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    .line 1699
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1700
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    .line 1702
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1703
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    goto :goto_6
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1794
    if-nez p1, :cond_8

    .line 1795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1797
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1798
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->name_:Ljava/lang/Object;

    .line 1800
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Source$Type;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1763
    if-nez p1, :cond_8

    .line 1764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1766
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1767
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1769
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1830
    if-nez p1, :cond_8

    .line 1831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1833
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->bitField0_:I

    .line 1834
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->url_:Ljava/lang/Object;

    .line 1836
    return-object p0
.end method
