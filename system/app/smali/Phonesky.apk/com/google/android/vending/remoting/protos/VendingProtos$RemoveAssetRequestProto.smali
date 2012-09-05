.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoveAssetRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11296
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->assetId_:Ljava/lang/String;

    .line 11333
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->cachedSize:I

    .line 11296
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11302
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 11335
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 11337
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->getSerializedSize()I

    .line 11339
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 11343
    const/4 v0, 0x0

    .line 11344
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 11345
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11348
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->cachedSize:I

    .line 11349
    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 11303
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->hasAssetId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11356
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11357
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 11361
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11362
    :sswitch_d
    return-object p0

    .line 11367
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    goto :goto_0

    .line 11357
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
    .line 11294
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->hasAssetId:Z

    .line 11306
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->assetId_:Ljava/lang/String;

    .line 11307
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
    .line 11328
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11329
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11331
    :cond_e
    return-void
.end method
