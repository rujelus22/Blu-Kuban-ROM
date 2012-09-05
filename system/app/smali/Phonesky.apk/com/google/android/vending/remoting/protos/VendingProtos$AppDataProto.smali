.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDataProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasKey:Z

.field private hasValue:Z

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23891
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 23896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->key_:Ljava/lang/String;

    .line 23913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->value_:Ljava/lang/String;

    .line 23950
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    .line 23891
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 23952
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 23954
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getSerializedSize()I

    .line 23956
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23897
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 23960
    const/4 v0, 0x0

    .line 23961
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 23962
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23965
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 23966
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23969
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->cachedSize:I

    .line 23970
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23914
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .registers 2

    .prologue
    .line 23898
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey:Z

    return v0
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 23915
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23977
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 23978
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 23982
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23983
    :sswitch_d
    return-object p0

    .line 23988
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->setKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    goto :goto_0

    .line 23992
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->setValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    goto :goto_0

    .line 23978
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 23889
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 23900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey:Z

    .line 23901
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->key_:Ljava/lang/String;

    .line 23902
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 23917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue:Z

    .line 23918
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->value_:Ljava/lang/String;

    .line 23919
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
    .line 23942
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23943
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 23945
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 23946
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppDataProto;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 23948
    :cond_1c
    return-void
.end method
