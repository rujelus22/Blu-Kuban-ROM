.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAssetRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private directDownloadKey_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasDirectDownloadKey:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12272
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->assetId_:Ljava/lang/String;

    .line 12294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->directDownloadKey_:Ljava/lang/String;

    .line 12330
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    .line 12272
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12278
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 12332
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 12334
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getSerializedSize()I

    .line 12336
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    return v0
.end method

.method public getDirectDownloadKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12295
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->directDownloadKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 12340
    const/4 v0, 0x0

    .line 12341
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 12342
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12345
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 12346
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getDirectDownloadKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12349
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    .line 12350
    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 12279
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasDirectDownloadKey()Z
    .registers 2

    .prologue
    .line 12296
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12358
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 12362
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12363
    :sswitch_d
    return-object p0

    .line 12368
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    goto :goto_0

    .line 12372
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->setDirectDownloadKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    goto :goto_0

    .line 12358
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
    .line 12270
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 12281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId:Z

    .line 12282
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->assetId_:Ljava/lang/String;

    .line 12283
    return-object p0
.end method

.method public setDirectDownloadKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 12298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey:Z

    .line 12299
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->directDownloadKey_:Ljava/lang/String;

    .line 12300
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
    .line 12322
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12323
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12325
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 12326
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getDirectDownloadKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12328
    :cond_1c
    return-void
.end method
