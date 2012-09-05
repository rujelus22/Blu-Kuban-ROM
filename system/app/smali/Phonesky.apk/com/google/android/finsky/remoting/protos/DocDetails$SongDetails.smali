.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SongDetails"
.end annotation


# instance fields
.field private albumName_:Ljava/lang/String;

.field private cachedSize:I

.field private details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

.field private displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

.field private hasAlbumName:Z

.field private hasDetails:Z

.field private hasDisplayArtist:Z

.field private hasName:Z

.field private hasPreviewUrl:Z

.field private hasTrackNumber:Z

.field private name_:Ljava/lang/String;

.field private previewUrl_:Ljava/lang/String;

.field private trackNumber_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1567
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    .line 1589
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    .line 1626
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    .line 1643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    .line 1660
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1714
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    .line 1567
    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1716
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 1718
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getSerializedSize()I

    .line 1720
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    return v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1724
    const/4 v0, 0x0

    .line 1725
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1726
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1729
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1730
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1733
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1734
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1737
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1738
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1741
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1742
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1745
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1746
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1749
    :cond_61
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    .line 1750
    return v0
.end method

.method public getTrackNumber()I
    .registers 2

    .prologue
    .line 1627
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    return v0
.end method

.method public hasAlbumName()Z
    .registers 2

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName:Z

    return v0
.end method

.method public hasDetails()Z
    .registers 2

    .prologue
    .line 1590
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails:Z

    return v0
.end method

.method public hasDisplayArtist()Z
    .registers 2

    .prologue
    .line 1661
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 1574
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName:Z

    return v0
.end method

.method public hasPreviewUrl()Z
    .registers 2

    .prologue
    .line 1645
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl:Z

    return v0
.end method

.method public hasTrackNumber()Z
    .registers 2

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1757
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1758
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_46

    .line 1762
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1763
    :sswitch_d
    return-object p0

    .line 1768
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1772
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;-><init>()V

    .line 1773
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1774
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1778
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1782
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1786
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setPreviewUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1790
    :sswitch_3a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 1791
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1792
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1758
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
        0x20 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3a
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
    .line 1565
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName:Z

    .line 1614
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    .line 1615
    return-object p0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1593
    if-nez p1, :cond_8

    .line 1594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1596
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails:Z

    .line 1597
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1598
    return-object p0
.end method

.method public setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1664
    if-nez p1, :cond_8

    .line 1665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1667
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist:Z

    .line 1668
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1669
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName:Z

    .line 1577
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    .line 1578
    return-object p0
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl:Z

    .line 1648
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    .line 1649
    return-object p0
.end method

.method public setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber:Z

    .line 1631
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    .line 1632
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
    .line 1694
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1695
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1697
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1698
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1700
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1701
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1703
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1704
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1706
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1707
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1709
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1710
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1712
    :cond_54
    return-void
.end method
