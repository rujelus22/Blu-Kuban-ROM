.class public final Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetailsResponse"
.end annotation


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private cachedSize:I

.field private docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

.field private docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

.field private hasAnalyticsCookie:Z

.field private hasDocV1:Z

.field private hasDocV2:Z

.field private hasUserReview:Z

.field private userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 34
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getAnalyticsCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getSerializedSize()I

    .line 132
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    return v0
.end method

.method public getDocV1()Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    return-object v0
.end method

.method public getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV1()Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 142
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 146
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 150
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->cachedSize:I

    .line 154
    return v0
.end method

.method public getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    return-object v0
.end method

.method public hasAnalyticsCookie()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasDocV1()Z
    .registers 2

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1:Z

    return v0
.end method

.method public hasDocV2()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2:Z

    return v0
.end method

.method public hasUserReview()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 162
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    :sswitch_d
    return-object p0

    .line 172
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;-><init>()V

    .line 173
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setDocV1(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 178
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 182
    :sswitch_22
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;-><init>()V

    .line 183
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setUserReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 188
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :sswitch_2e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 189
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->setDocV2(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    goto :goto_0

    .line 162
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setDocV1(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_8

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV1_:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 23
    return-object p0
.end method

.method public setDocV2(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 38
    if-nez p1, :cond_8

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->docV2_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 43
    return-object p0
.end method

.method public setUserReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 75
    if-nez p1, :cond_8

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview:Z

    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->userReview_:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 80
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
    .line 112
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV1()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV1()Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 115
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasAnalyticsCookie()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasUserReview()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 121
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 122
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 124
    :cond_38
    return-void
.end method
