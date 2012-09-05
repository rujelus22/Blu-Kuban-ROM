.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputValidationError"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorMessage:Z

.field private hasInputField:Z

.field private inputField_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1068
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1073
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->inputField_:I

    .line 1090
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 1126
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->cachedSize:I

    .line 1068
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1128
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->cachedSize:I

    if-gez v0, :cond_7

    .line 1130
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getSerializedSize()I

    .line 1132
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->cachedSize:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputField()I
    .registers 2

    .prologue
    .line 1075
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->inputField_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasInputField()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1138
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getInputField()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1141
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1142
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1145
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->cachedSize:I

    .line 1146
    return v0
.end method

.method public hasErrorMessage()Z
    .registers 2

    .prologue
    .line 1092
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasErrorMessage:Z

    return v0
.end method

.method public hasInputField()Z
    .registers 2

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasInputField:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1154
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1158
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    :sswitch_d
    return-object p0

    .line 1164
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    goto :goto_0

    .line 1168
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    goto :goto_0

    .line 1154
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
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
    .line 1066
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    .registers 3
    .parameter "value"

    .prologue
    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasErrorMessage:Z

    .line 1095
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 1096
    return-object p0
.end method

.method public setInputField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;
    .registers 3
    .parameter "value"

    .prologue
    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasInputField:Z

    .line 1078
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->inputField_:I

    .line 1079
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
    .line 1118
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasInputField()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1119
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getInputField()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1121
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1122
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1124
    :cond_1c
    return-void
.end method
