.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalCreateAccountResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private createAccountKey_:Ljava/lang/String;

.field private hasCreateAccountKey:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10064
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10069
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->createAccountKey_:Ljava/lang/String;

    .line 10100
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    .line 10064
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 10102
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 10104
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->getSerializedSize()I

    .line 10106
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    return v0
.end method

.method public getCreateAccountKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10070
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->createAccountKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 10110
    const/4 v0, 0x0

    .line 10111
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10112
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->getCreateAccountKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10115
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->cachedSize:I

    .line 10116
    return v0
.end method

.method public hasCreateAccountKey()Z
    .registers 2

    .prologue
    .line 10071
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10124
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 10128
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10129
    :sswitch_d
    return-object p0

    .line 10134
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->setCreateAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    goto :goto_0

    .line 10124
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 10062
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setCreateAccountKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 10073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey:Z

    .line 10074
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->createAccountKey_:Ljava/lang/String;

    .line 10075
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
    .line 10095
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->hasCreateAccountKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10096
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;->getCreateAccountKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10098
    :cond_e
    return-void
.end method
