.class public final Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickLogEvent"
.end annotation


# instance fields
.field private cachedSize:I

.field private eventTime_:J

.field private hasEventTime:Z

.field private hasListId:Z

.field private hasReferrerListId:Z

.field private hasReferrerUrl:Z

.field private hasUrl:Z

.field private listId_:Ljava/lang/String;

.field private referrerListId_:Ljava/lang/String;

.field private referrerUrl_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->eventTime_:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->url_:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->listId_:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->referrerUrl_:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->referrerListId_:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->cachedSize:I

    if-gez v0, :cond_7

    .line 133
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getSerializedSize()I

    .line 135
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->cachedSize:I

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->eventTime_:J

    return-wide v0
.end method

.method public getListId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->listId_:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerListId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->referrerListId_:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->referrerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasEventTime()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 145
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasListId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 149
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getListId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerUrl()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 153
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getReferrerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerListId()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 157
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getReferrerListId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->cachedSize:I

    .line 161
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEventTime()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasEventTime:Z

    return v0
.end method

.method public hasListId()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasListId:Z

    return v0
.end method

.method public hasReferrerListId()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerListId:Z

    return v0
.end method

.method public hasReferrerUrl()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerUrl:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 169
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :sswitch_d
    return-object p0

    .line 179
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setEventTime(J)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    goto :goto_0

    .line 183
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    goto :goto_0

    .line 187
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    goto :goto_0

    .line 191
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setReferrerUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    goto :goto_0

    .line 195
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setReferrerListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    goto :goto_0

    .line 169
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public setEventTime(J)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .registers 4
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasEventTime:Z

    .line 19
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->eventTime_:J

    .line 20
    return-object p0
.end method

.method public setListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .registers 3
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasListId:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->listId_:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setReferrerListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .registers 3
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerListId:Z

    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->referrerListId_:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setReferrerUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .registers 3
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerUrl:Z

    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->referrerUrl_:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasUrl:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->url_:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasEventTime()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 115
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasListId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getListId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 121
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerUrl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 122
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 124
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->hasReferrerListId()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 125
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->getReferrerListId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 127
    :cond_46
    return-void
.end method
