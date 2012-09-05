.class public final Lcom/google/android/finsky/remoting/protos/ReviewResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ReviewResponse.java"


# instance fields
.field private cachedSize:I

.field private getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

.field private hasGetResponse:Z

.field private hasNextPageUrl:Z

.field private nextPageUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->nextPageUrl_:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getSerializedSize()I

    .line 76
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->cachedSize:I

    return v0
.end method

.method public getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    return-object v0
.end method

.method public getNextPageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->nextPageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasGetResponse()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasNextPageUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 86
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getNextPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->cachedSize:I

    .line 90
    return v0
.end method

.method public hasGetResponse()Z
    .registers 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasGetResponse:Z

    return v0
.end method

.method public hasNextPageUrl()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasNextPageUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ReviewResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 98
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_22

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :sswitch_d
    return-object p0

    .line 108
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;-><init>()V

    .line 109
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->setGetResponse(Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;)Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    goto :goto_0

    .line 114
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    goto :goto_0

    .line 98
    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    move-result-object v0

    return-object v0
.end method

.method public setGetResponse(Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;)Lcom/google/android/finsky/remoting/protos/ReviewResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 16
    if-nez p1, :cond_8

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasGetResponse:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    .line 21
    return-object p0
.end method

.method public setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ReviewResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasNextPageUrl:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->nextPageUrl_:Ljava/lang/String;

    .line 38
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
    .line 62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasGetResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 65
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->hasNextPageUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 68
    :cond_1c
    return-void
.end method
