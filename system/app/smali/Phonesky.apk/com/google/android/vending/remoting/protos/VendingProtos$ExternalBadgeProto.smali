.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalBadgeProto"
.end annotation


# instance fields
.field private badgeImage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasLocalizedDescription:Z

.field private hasLocalizedTitle:Z

.field private hasSearchId:Z

.field private localizedDescription_:Ljava/lang/String;

.field private localizedTitle_:Ljava/lang/String;

.field private searchId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1585
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedTitle_:Ljava/lang/String;

    .line 1607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedDescription_:Ljava/lang/String;

    .line 1623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    .line 1657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->searchId_:Ljava/lang/String;

    .line 1703
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    .line 1585
    return-void
.end method


# virtual methods
.method public addBadgeImage(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 1640
    if-nez p1, :cond_8

    .line 1641
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1643
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    .line 1646
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    return-object p0
.end method

.method public getBadgeImageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1705
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 1707
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getSerializedSize()I

    .line 1709
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    return v0
.end method

.method public getLocalizedDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->searchId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1713
    const/4 v2, 0x0

    .line 1714
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1715
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1718
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1719
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1722
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getBadgeImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    .line 1723
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_29

    .line 1726
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1727
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getSearchId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1730
    :cond_4c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    .line 1731
    return v2
.end method

.method public hasLocalizedDescription()Z
    .registers 2

    .prologue
    .line 1609
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription:Z

    return v0
.end method

.method public hasLocalizedTitle()Z
    .registers 2

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle:Z

    return v0
.end method

.method public hasSearchId()Z
    .registers 2

    .prologue
    .line 1659
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1738
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1739
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_32

    .line 1743
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1744
    :sswitch_d
    return-object p0

    .line 1749
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->setLocalizedTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1753
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->setLocalizedDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1757
    :sswitch_1e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;-><init>()V

    .line 1758
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1759
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->addBadgeImage(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1763
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->setSearchId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1739
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2a
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
    .line 1583
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    move-result-object v0

    return-object v0
.end method

.method public setLocalizedDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription:Z

    .line 1612
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedDescription_:Ljava/lang/String;

    .line 1613
    return-object p0
.end method

.method public setLocalizedTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 1594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle:Z

    .line 1595
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedTitle_:Ljava/lang/String;

    .line 1596
    return-object p0
.end method

.method public setSearchId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 1661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId:Z

    .line 1662
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->searchId_:Ljava/lang/String;

    .line 1663
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
    .line 1689
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1690
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1692
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1693
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1695
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getBadgeImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    .line 1696
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_24

    .line 1698
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1699
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getSearchId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1701
    :cond_43
    return-void
.end method
