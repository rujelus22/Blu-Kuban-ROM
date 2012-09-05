.class public final Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$Link;",
        "Lcom/google/wireless/contacts/proto/Profile$Link$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$LinkOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private domain_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1570
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1712
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    .line 1791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    .line 1827
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    .line 1571
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->maybeForceBuilderInitialization()V

    .line 1572
    return-void
.end method

.method static synthetic access$2000()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 1

    .prologue
    .line 1565
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 1

    .prologue
    .line 1577
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1575
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 3

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    .line 1603
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$Link;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Link;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1604
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1606
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 6

    .prologue
    .line 1620
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$Link;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$Link;-><init>(Lcom/google/wireless/contacts/proto/Profile$Link$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 1621
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$Link;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1622
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1623
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1624
    or-int/lit8 v2, v2, 0x1

    .line 1626
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Link;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Link;->access$2202(Lcom/google/wireless/contacts/proto/Profile$Link;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1627
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1628
    or-int/lit8 v2, v2, 0x2

    .line 1630
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Link;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Link;->access$2302(Lcom/google/wireless/contacts/proto/Profile$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1632
    or-int/lit8 v2, v2, 0x4

    .line 1634
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Link;->domain_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Link;->access$2402(Lcom/google/wireless/contacts/proto/Profile$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1636
    or-int/lit8 v2, v2, 0x8

    .line 1638
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Link;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Link;->access$2502(Lcom/google/wireless/contacts/proto/Profile$Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    #setter for: Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$Link;->access$2602(Lcom/google/wireless/contacts/proto/Profile$Link;I)I

    .line 1640
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 2

    .prologue
    .line 1581
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1582
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1583
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    .line 1585
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    .line 1587
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    .line 1589
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1590
    return-object p0
.end method

.method public clearDomain()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 2

    .prologue
    .line 1815
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1816
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    .line 1818
    return-object p0
.end method

.method public clearLabel()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 2

    .prologue
    .line 1851
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1852
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    .line 1854
    return-object p0
.end method

.method public clearMetadata()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 2

    .prologue
    .line 1748
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1750
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1751
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 2

    .prologue
    .line 1779
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1780
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    .line 1782
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 3

    .prologue
    .line 1594
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

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
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 2

    .prologue
    .line 1598
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    .line 1797
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1798
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1799
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    .line 1802
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

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    .line 1833
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1834
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1835
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    .line 1838
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

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    .line 1761
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1762
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1763
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    .line 1766
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

.method public hasDomain()Z
    .registers 3

    .prologue
    .line 1793
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 1829
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

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

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1714
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

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
    .line 1757
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

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
    .line 1565
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

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
    .line 1565
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1669
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1670
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 1675
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1677
    :sswitch_d
    return-object p0

    .line 1682
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    .line 1683
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1684
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    .line 1686
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1687
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    goto :goto_0

    .line 1691
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1692
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 1696
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1697
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    goto :goto_0

    .line 1701
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1702
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 1670
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x22 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1644
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1657
    :cond_6
    :goto_6
    return-object p0

    .line 1645
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1646
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    .line 1648
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1649
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    .line 1651
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->hasDomain()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1652
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->setDomain(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    .line 1654
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1655
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->setLabel(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    goto :goto_6
.end method

.method public mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1736
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1738
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1744
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1745
    return-object p0

    .line 1741
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    goto :goto_1f
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1806
    if-nez p1, :cond_8

    .line 1807
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1809
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1810
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->domain_:Ljava/lang/Object;

    .line 1812
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1842
    if-nez p1, :cond_8

    .line 1843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1845
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1846
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->label_:Ljava/lang/Object;

    .line 1848
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1730
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1732
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1733
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1720
    if-nez p1, :cond_8

    .line 1721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1723
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1725
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1726
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1770
    if-nez p1, :cond_8

    .line 1771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1773
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->bitField0_:I

    .line 1774
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->url_:Ljava/lang/Object;

    .line 1776
    return-object p0
.end method
