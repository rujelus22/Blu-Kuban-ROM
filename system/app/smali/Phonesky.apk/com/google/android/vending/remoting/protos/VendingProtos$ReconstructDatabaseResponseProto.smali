.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReconstructDatabaseResponseProto"
.end annotation


# instance fields
.field private asset_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20312
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->asset_:Ljava/util/List;

    .line 20367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->cachedSize:I

    .line 20312
    return-void
.end method


# virtual methods
.method public addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20333
    if-nez p1, :cond_8

    .line 20334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20336
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 20337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->asset_:Ljava/util/List;

    .line 20339
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20340
    return-object p0
.end method

.method public getAssetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20319
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->asset_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 20369
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 20371
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->getSerializedSize()I

    .line 20373
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 20377
    const/4 v2, 0x0

    .line 20378
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    .line 20379
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 20382
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    :cond_1c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->cachedSize:I

    .line 20383
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20391
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 20395
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20396
    :sswitch_d
    return-object p0

    .line 20401
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;-><init>()V

    .line 20402
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 20403
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    goto :goto_0

    .line 20391
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
    .line 20310
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v0

    return-object v0
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
    .line 20362
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    .line 20363
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 20365
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    :cond_19
    return-void
.end method
