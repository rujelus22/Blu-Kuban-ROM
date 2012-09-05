.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArtistDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private detailsUrl_:Ljava/lang/String;

.field private externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

.field private hasDetailsUrl:Z

.field private hasExternalLinks:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1814
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1819
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    .line 1836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    .line 1853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    .line 1895
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    .line 1814
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1897
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 1899
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getSerializedSize()I

    .line 1901
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .registers 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1905
    const/4 v0, 0x0

    .line 1906
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1907
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1910
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1911
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1914
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1915
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1918
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    .line 1919
    return v0
.end method

.method public hasDetailsUrl()Z
    .registers 2

    .prologue
    .line 1821
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl:Z

    return v0
.end method

.method public hasExternalLinks()Z
    .registers 2

    .prologue
    .line 1854
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 1838
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1926
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1927
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2a

    .line 1931
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1932
    :sswitch_d
    return-object p0

    .line 1937
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 1941
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 1945
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;-><init>()V

    .line 1946
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1947
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setExternalLinks(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 1927
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    .line 1812
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    return-object v0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl:Z

    .line 1824
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    .line 1825
    return-object p0
.end method

.method public setExternalLinks(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1857
    if-nez p1, :cond_8

    .line 1858
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1860
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks:Z

    .line 1861
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    .line 1862
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 1840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName:Z

    .line 1841
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    .line 1842
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
    .line 1884
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1885
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1887
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1888
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1890
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1891
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1893
    :cond_2a
    return-void
.end method
