.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingAddressSpec"
.end annotation


# instance fields
.field private billingAddressType_:I

.field private cachedSize:I

.field private hasBillingAddressType:Z

.field private requiredField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1689
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1701
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->billingAddressType_:I

    .line 1717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    .line 1765
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    .line 1689
    return-void
.end method


# virtual methods
.method public addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .registers 4
    .parameter "value"

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    .line 1734
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    return-object p0
.end method

.method public getBillingAddressType()I
    .registers 2

    .prologue
    .line 1703
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->billingAddressType_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1768
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    if-gez v0, :cond_7

    .line 1770
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getSerializedSize()I

    .line 1772
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    return v0
.end method

.method public getRequiredFieldCount()I
    .registers 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequiredFieldList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1777
    const/4 v3, 0x0

    .line 1778
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1779
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1783
    :cond_11
    const/4 v0, 0x0

    .line 1784
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1785
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1a

    .line 1788
    .end local v1           #element:Ljava/lang/Integer;
    :cond_30
    add-int/2addr v3, v0

    .line 1789
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1791
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    .line 1792
    return v3
.end method

.method public hasBillingAddressType()Z
    .registers 2

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1800
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1801
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1805
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1806
    :sswitch_d
    return-object p0

    .line 1811
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->setBillingAddressType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    goto :goto_0

    .line 1815
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    goto :goto_0

    .line 1801
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1686
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method public setBillingAddressType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .registers 3
    .parameter "value"

    .prologue
    .line 1705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType:Z

    .line 1706
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->billingAddressType_:I

    .line 1707
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1757
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1758
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1760
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1761
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_16

    .line 1763
    .end local v0           #element:Ljava/lang/Integer;
    :cond_2b
    return-void
.end method
