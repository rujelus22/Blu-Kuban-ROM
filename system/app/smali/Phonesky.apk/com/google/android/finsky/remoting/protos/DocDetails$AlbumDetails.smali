.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

.field private displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

.field private hasDetails:Z

.field private hasDisplayArtist:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1593
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->name_:Ljava/lang/String;

    .line 1615
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1635
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1678
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    .line 1593
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1681
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 1683
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getSerializedSize()I

    .line 1685
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    return v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1690
    const/4 v0, 0x0

    .line 1691
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1692
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1695
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1696
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1700
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    .line 1704
    return v0
.end method

.method public hasDetails()Z
    .registers 2

    .prologue
    .line 1616
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails:Z

    return v0
.end method

.method public hasDisplayArtist()Z
    .registers 2

    .prologue
    .line 1636
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1713
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 1717
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1718
    :sswitch_d
    return-object p0

    .line 1723
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    goto :goto_0

    .line 1727
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;-><init>()V

    .line 1728
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1729
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    goto :goto_0

    .line 1733
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    :sswitch_22
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 1734
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1735
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    goto :goto_0

    .line 1713
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
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
    .line 1590
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    return-object v0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1619
    if-nez p1, :cond_8

    .line 1620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1622
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails:Z

    .line 1623
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1624
    return-object p0
.end method

.method public setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1639
    if-nez p1, :cond_8

    .line 1640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1642
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist:Z

    .line 1643
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1644
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName:Z

    .line 1603
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->name_:Ljava/lang/String;

    .line 1604
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1668
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1670
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1671
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1673
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1674
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1676
    :cond_2a
    return-void
.end method
