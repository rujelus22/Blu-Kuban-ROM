.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppSuggestionProto"
.end annotation


# instance fields
.field private assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

.field private cachedSize:I

.field private hasAssetInfo:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17494
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 17535
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    .line 17494
    return-void
.end method


# virtual methods
.method public getAssetInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 2

    .prologue
    .line 17501
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17537
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17539
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->getSerializedSize()I

    .line 17541
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17545
    const/4 v0, 0x0

    .line 17546
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17547
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->getAssetInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17550
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    .line 17551
    return v0
.end method

.method public hasAssetInfo()Z
    .registers 2

    .prologue
    .line 17500
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17558
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17559
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 17563
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17564
    :sswitch_d
    return-object p0

    .line 17569
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 17570
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 17571
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->setAssetInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    goto :goto_0

    .line 17559
    :sswitch_data_1a
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
    .line 17492
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17503
    if-nez p1, :cond_8

    .line 17504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17506
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo:Z

    .line 17507
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 17508
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
    .line 17530
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17531
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->getAssetInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 17533
    :cond_e
    return-void
.end method
