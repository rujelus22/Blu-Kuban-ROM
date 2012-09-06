.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingCredentials"
.end annotation


# instance fields
.field private cachedSize:I

.field private expiration_:J

.field private hasExpiration:Z

.field private hasValue:Z

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1216
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->value_:Ljava/lang/String;

    .line 1233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->expiration_:J

    .line 1269
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    .line 1211
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1272
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    if-gez v0, :cond_7

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getSerializedSize()I

    .line 1276
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    return v0
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 1234
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->expiration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1283
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1286
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1287
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getExpiration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1290
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    .line 1291
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasExpiration()Z
    .registers 2

    .prologue
    .line 1235
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration:Z

    return v0
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1299
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1300
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1304
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1305
    :sswitch_d
    return-object p0

    .line 1310
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    goto :goto_0

    .line 1314
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->setExpiration(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    goto :goto_0

    .line 1300
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
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
    .line 1208
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    move-result-object v0

    return-object v0
.end method

.method public setExpiration(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .registers 4
    .parameter "value"

    .prologue
    .line 1237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration:Z

    .line 1238
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->expiration_:J

    .line 1239
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .registers 3
    .parameter "value"

    .prologue
    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue:Z

    .line 1221
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->value_:Ljava/lang/String;

    .line 1222
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
    .line 1261
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1264
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1265
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getExpiration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1267
    :cond_1c
    return-void
.end method
