.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreApplicationsResponseProto"
.end annotation


# instance fields
.field private asset_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17253
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->asset_:Ljava/util/List;

    .line 17308
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->cachedSize:I

    .line 17253
    return-void
.end method


# virtual methods
.method public addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17274
    if-nez p1, :cond_8

    .line 17275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17277
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 17278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->asset_:Ljava/util/List;

    .line 17280
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17281
    return-object p0
.end method

.method public getAssetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17260
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->asset_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17310
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17312
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->getSerializedSize()I

    .line 17314
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 17318
    const/4 v2, 0x0

    .line 17319
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->getAssetList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 17320
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 17323
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    :cond_1c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->cachedSize:I

    .line 17324
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17331
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17332
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 17336
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17337
    :sswitch_d
    return-object p0

    .line 17342
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;-><init>()V

    .line 17343
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 17344
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    goto :goto_0

    .line 17332
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
    .line 17251
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

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
    .line 17303
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;->getAssetList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 17304
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 17306
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    :cond_19
    return-void
.end method
