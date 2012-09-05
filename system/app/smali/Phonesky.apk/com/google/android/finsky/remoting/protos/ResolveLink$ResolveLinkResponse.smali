.class public final Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ResolveLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolveLinkResponse"
.end annotation


# instance fields
.field private browseUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private detailsUrl_:Ljava/lang/String;

.field private directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

.field private hasBrowseUrl:Z

.field private hasDetailsUrl:Z

.field private hasDirectPurchase:Z

.field private hasSearchUrl:Z

.field private searchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->detailsUrl_:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->browseUrl_:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->searchUrl_:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getBrowseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->browseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSerializedSize()I

    .line 117
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    return-object v0
.end method

.method public getSearchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->searchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 123
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 127
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 131
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 135
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    .line 139
    return v0
.end method

.method public hasBrowseUrl()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl:Z

    return v0
.end method

.method public hasDirectPurchase()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase:Z

    return v0
.end method

.method public hasSearchUrl()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 147
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_32

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    :sswitch_d
    return-object p0

    .line 157
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 161
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 165
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 169
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;-><init>()V

    .line 170
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setDirectPurchase(Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 147
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->browseUrl_:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->detailsUrl_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setDirectPurchase(Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 69
    if-nez p1, :cond_8

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 72
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase:Z

    .line 73
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    .line 74
    return-object p0
.end method

.method public setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->searchUrl_:Ljava/lang/String;

    .line 54
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
    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 100
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 103
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 104
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 106
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 107
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 109
    :cond_38
    return-void
.end method
