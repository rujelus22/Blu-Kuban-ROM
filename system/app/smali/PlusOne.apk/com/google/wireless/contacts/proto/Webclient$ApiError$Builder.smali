.class public final Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$ApiErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$ApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$ApiError;",
        "Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Webclient$ApiErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:I

.field private msg_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1753
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    .line 1644
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->maybeForceBuilderInitialization()V

    .line 1645
    return-void
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 1

    .prologue
    .line 1650
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1648
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ApiError;
    .registers 6

    .prologue
    .line 1689
    new-instance v1, Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;-><init>(Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V

    .line 1690
    .local v1, result:Lcom/google/wireless/contacts/proto/Webclient$ApiError;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1691
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1692
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1693
    or-int/lit8 v2, v2, 0x1

    .line 1695
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ApiError;->msg_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->access$2602(Lcom/google/wireless/contacts/proto/Webclient$ApiError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1697
    or-int/lit8 v2, v2, 0x2

    .line 1699
    :cond_1c
    iget v3, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->code_:I

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ApiError;->code_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->access$2702(Lcom/google/wireless/contacts/proto/Webclient$ApiError;I)I

    .line 1700
    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->access$2802(Lcom/google/wireless/contacts/proto/Webclient$ApiError;I)I

    .line 1701
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 2

    .prologue
    .line 1654
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    .line 1656
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1657
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->code_:I

    .line 1658
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1659
    return-object p0
.end method

.method public clearCode()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 2

    .prologue
    .line 1803
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1804
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->code_:I

    .line 1806
    return-object p0
.end method

.method public clearMsg()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 2

    .prologue
    .line 1777
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1778
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    .line 1780
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 3

    .prologue
    .line 1663
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ApiError;)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

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
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 1794
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ApiError;
    .registers 2

    .prologue
    .line 1667
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    .line 1759
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1760
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1761
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    .line 1764
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

.method public hasCode()Z
    .registers 3

    .prologue
    .line 1791
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

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

.method public hasMsg()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1755
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 1638
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

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
    .line 1638
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1724
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1725
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 1730
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1732
    :sswitch_d
    return-object p0

    .line 1737
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1738
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    goto :goto_0

    .line 1742
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->code_:I

    goto :goto_0

    .line 1725
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ApiError;)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1705
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1712
    :cond_6
    :goto_6
    return-object p0

    .line 1706
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->hasMsg()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1707
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->setMsg(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    .line 1709
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1710
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->setCode(I)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;

    goto :goto_6
.end method

.method public setCode(I)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1797
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1798
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->code_:I

    .line 1800
    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1768
    if-nez p1, :cond_8

    .line 1769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1771
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->bitField0_:I

    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;->msg_:Ljava/lang/Object;

    .line 1774
    return-object p0
.end method
