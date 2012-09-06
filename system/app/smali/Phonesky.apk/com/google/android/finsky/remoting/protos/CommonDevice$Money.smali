.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Money"
.end annotation


# instance fields
.field private cachedSize:I

.field private currencyCode_:Ljava/lang/String;

.field private formattedAmount_:Ljava/lang/String;

.field private hasCurrencyCode:Z

.field private hasFormattedAmount:Z

.field private hasMicros:Z

.field private micros_:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->micros_:J

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->currencyCode_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->formattedAmount_:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->cachedSize:I

    if-gez v0, :cond_7

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getSerializedSize()I

    .line 98
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->cachedSize:I

    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->formattedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getMicros()J
    .registers 3

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->micros_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasMicros()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getMicros()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasCurrencyCode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 109
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasFormattedAmount()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 113
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->cachedSize:I

    .line 117
    return v0
.end method

.method public hasCurrencyCode()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasCurrencyCode:Z

    return v0
.end method

.method public hasFormattedAmount()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasFormattedAmount:Z

    return v0
.end method

.method public hasMicros()Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasMicros:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 126
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :sswitch_d
    return-object p0

    .line 136
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->setMicros(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    goto :goto_0

    .line 140
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    goto :goto_0

    .line 144
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    goto :goto_0

    .line 126
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    move-result-object v0

    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    .registers 3
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasCurrencyCode:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->currencyCode_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    .registers 3
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasFormattedAmount:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->formattedAmount_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setMicros(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    .registers 4
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasMicros:Z

    .line 20
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->micros_:J

    .line 21
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
    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasMicros()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getMicros()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 83
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasCurrencyCode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 86
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->hasFormattedAmount()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 87
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 89
    :cond_2a
    return-void
.end method
