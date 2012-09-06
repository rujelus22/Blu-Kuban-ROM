.class public final Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1710
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1711
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->maybeForceBuilderInitialization()V

    .line 1712
    return-void
.end method

.method static synthetic access$1900()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 1

    .prologue
    .line 1705
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 1

    .prologue
    .line 1717
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1715
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 3

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    .line 1737
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1738
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1740
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 6

    .prologue
    .line 1744
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 1745
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    .line 1746
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1747
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1748
    or-int/lit8 v2, v2, 0x1

    .line 1750
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->access$2102(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->access$2202(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;I)I

    .line 1752
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 2

    .prologue
    .line 1721
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1722
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1723
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    .line 1724
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 2

    .prologue
    .line 1829
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    .line 1830
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1832
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 3

    .prologue
    .line 1728
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

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
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1799
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1800
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1801
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1804
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1809
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1810
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1811
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1813
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1816
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 2

    .prologue
    .line 1732
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1795
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

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
    .line 1766
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1768
    const/4 v0, 0x0

    .line 1770
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1756
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1762
    :cond_6
    :goto_6
    return-object p0

    .line 1757
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1758
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    .line 1759
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->access$2100(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1777
    const/4 v2, 0x0

    .line 1779
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 1784
    if-eqz v2, :cond_10

    .line 1785
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    .line 1788
    :cond_10
    return-object p0

    .line 1780
    :catch_11
    move-exception v1

    .line 1781
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-object v2, v0

    .line 1782
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 1784
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 1785
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    :cond_21
    throw v3
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
    .line 1705
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1705
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

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
    .line 1705
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1820
    if-nez p1, :cond_8

    .line 1821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1823
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    .line 1824
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1826
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1836
    if-nez p1, :cond_8

    .line 1837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1839
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->bitField0_:I

    .line 1840
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 1842
    return-object p0
.end method
