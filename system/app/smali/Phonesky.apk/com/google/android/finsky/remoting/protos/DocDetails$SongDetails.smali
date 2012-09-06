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

    .line 1758
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    .line 1780
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1800
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    .line 1817
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    .line 1851
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1906
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    .line 1758
    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1909
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 1911
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getSerializedSize()I

    .line 1913
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    return v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .registers 2

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1918
    const/4 v0, 0x0

    .line 1919
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1920
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1923
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1924
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1927
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1928
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1931
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1932
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1935
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1936
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1939
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1940
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1943
    :cond_61
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    .line 1944
    return v0
.end method

.method public getTrackNumber()I
    .registers 2

    .prologue
    .line 1818
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    return v0
.end method

.method public hasAlbumName()Z
    .registers 2

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName:Z

    return v0
.end method

.method public hasDetails()Z
    .registers 2

    .prologue
    .line 1781
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails:Z

    return v0
.end method

.method public hasDisplayArtist()Z
    .registers 2

    .prologue
    .line 1852
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 1765
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName:Z

    return v0
.end method

.method public hasPreviewUrl()Z
    .registers 2

    .prologue
    .line 1836
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl:Z

    return v0
.end method

.method public hasTrackNumber()Z
    .registers 2

    .prologue
    .line 1819
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
    .line 1952
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1953
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_46

    .line 1957
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1958
    :sswitch_d
    return-object p0

    .line 1963
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1967
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;-><init>()V

    .line 1968
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1969
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1973
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1977
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1981
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setPreviewUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1985
    :sswitch_3a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 1986
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1987
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 1953
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
    .line 1755
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName:Z

    .line 1805
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    .line 1806
    return-object p0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1784
    if-nez p1, :cond_8

    .line 1785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1787
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails:Z

    .line 1788
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1789
    return-object p0
.end method

.method public setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1855
    if-nez p1, :cond_8

    .line 1856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1858
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist:Z

    .line 1859
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1860
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName:Z

    .line 1768
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    .line 1769
    return-object p0
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl:Z

    .line 1839
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    .line 1840
    return-object p0
.end method

.method public setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber:Z

    .line 1822
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    .line 1823
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
    .line 1886
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1887
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1889
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1890
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1892
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1893
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1895
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1896
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1898
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1899
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1901
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1902
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1904
    :cond_54
    return-void
.end method
