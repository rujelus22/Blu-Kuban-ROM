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
    .line 2010
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2015
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    .line 2032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    .line 2049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    .line 2092
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    .line 2010
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2095
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 2097
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getSerializedSize()I

    .line 2099
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .registers 2

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2104
    const/4 v0, 0x0

    .line 2105
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2106
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2109
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2110
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2113
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2114
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2117
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    .line 2118
    return v0
.end method

.method public hasDetailsUrl()Z
    .registers 2

    .prologue
    .line 2017
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl:Z

    return v0
.end method

.method public hasExternalLinks()Z
    .registers 2

    .prologue
    .line 2050
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 2034
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
    .line 2126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2127
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2a

    .line 2131
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2132
    :sswitch_d
    return-object p0

    .line 2137
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 2141
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 2145
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;-><init>()V

    .line 2146
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2147
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setExternalLinks(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 2127
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
    .line 2007
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    return-object v0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl:Z

    .line 2020
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    .line 2021
    return-object p0
.end method

.method public setExternalLinks(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2053
    if-nez p1, :cond_8

    .line 2054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2056
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks:Z

    .line 2057
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    .line 2058
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName:Z

    .line 2037
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    .line 2038
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
    .line 2081
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2082
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2084
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2085
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2087
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2088
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2090
    :cond_2a
    return-void
.end method
