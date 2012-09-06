.class public final Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormCheckbox"
.end annotation


# instance fields
.field private cachedSize:I

.field private checked_:Z

.field private description_:Ljava/lang/String;

.field private hasChecked:Z

.field private hasDescription:Z

.field private hasId:Z

.field private hasRequired:Z

.field private id_:Ljava/lang/String;

.field private required_:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1114
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->description_:Ljava/lang/String;

    .line 1136
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->checked_:Z

    .line 1153
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->required_:Z

    .line 1170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->id_:Ljava/lang/String;

    .line 1214
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->cachedSize:I

    .line 1114
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1217
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->cachedSize:I

    if-gez v0, :cond_7

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getSerializedSize()I

    .line 1221
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->cachedSize:I

    return v0
.end method

.method public getChecked()Z
    .registers 2

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->checked_:Z

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequired()Z
    .registers 2

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->required_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1226
    const/4 v0, 0x0

    .line 1227
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1228
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1231
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasChecked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1232
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1235
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasRequired()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1236
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getRequired()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1239
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasId()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1240
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1243
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->cachedSize:I

    .line 1244
    return v0
.end method

.method public hasChecked()Z
    .registers 2

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasChecked:Z

    return v0
.end method

.method public hasDescription()Z
    .registers 2

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasDescription:Z

    return v0
.end method

.method public hasId()Z
    .registers 2

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasId:Z

    return v0
.end method

.method public hasRequired()Z
    .registers 2

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasRequired:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1253
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 1257
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1258
    :sswitch_d
    return-object p0

    .line 1263
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    goto :goto_0

    .line 1267
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->setChecked(Z)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    goto :goto_0

    .line 1271
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->setRequired(Z)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    goto :goto_0

    .line 1275
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    goto :goto_0

    .line 1253
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 1111
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    move-result-object v0

    return-object v0
.end method

.method public setChecked(Z)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .registers 3
    .parameter "value"

    .prologue
    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasChecked:Z

    .line 1141
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->checked_:Z

    .line 1142
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .registers 3
    .parameter "value"

    .prologue
    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasDescription:Z

    .line 1124
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->description_:Ljava/lang/String;

    .line 1125
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .registers 3
    .parameter "value"

    .prologue
    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasId:Z

    .line 1175
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->id_:Ljava/lang/String;

    .line 1176
    return-object p0
.end method

.method public setRequired(Z)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .registers 3
    .parameter "value"

    .prologue
    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasRequired:Z

    .line 1158
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->required_:Z

    .line 1159
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
    .line 1200
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1201
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1203
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1204
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1206
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasRequired()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1207
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getRequired()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1209
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->hasId()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1210
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1212
    :cond_38
    return-void
.end method
