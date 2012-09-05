.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetsResponseProto"
.end annotation


# instance fields
.field private altAsset_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation
.end field

.field private asset_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private correctedQuery_:Ljava/lang/String;

.field private hasCorrectedQuery:Z

.field private hasHeader:Z

.field private hasListType:Z

.field private hasNumCorrectedEntries:Z

.field private hasNumTotalEntries:Z

.field private header_:Ljava/lang/String;

.field private listType_:I

.field private numCorrectedEntries_:J

.field private numTotalEntries_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 4513
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4522
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    .line 4556
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numTotalEntries_:J

    .line 4573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->correctedQuery_:Ljava/lang/String;

    .line 4589
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    .line 4623
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numCorrectedEntries_:J

    .line 4640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->header_:Ljava/lang/String;

    .line 4657
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->listType_:I

    .line 4718
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    .line 4513
    return-void
.end method


# virtual methods
.method public addAltAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4606
    if-nez p1, :cond_8

    .line 4607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4609
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    .line 4612
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4613
    return-object p0
.end method

.method public addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4539
    if-nez p1, :cond_8

    .line 4540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4542
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    .line 4545
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4546
    return-object p0
.end method

.method public getAltAssetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4592
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->altAsset_:Ljava/util/List;

    return-object v0
.end method

.method public getAssetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->asset_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 4720
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 4722
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getSerializedSize()I

    .line 4724
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    return v0
.end method

.method public getCorrectedQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->correctedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4641
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getListType()I
    .registers 2

    .prologue
    .line 4659
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->listType_:I

    return v0
.end method

.method public getNumCorrectedEntries()J
    .registers 3

    .prologue
    .line 4624
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numCorrectedEntries_:J

    return-wide v0
.end method

.method public getNumTotalEntries()J
    .registers 3

    .prologue
    .line 4557
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numTotalEntries_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 4728
    const/4 v2, 0x0

    .line 4729
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAssetList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4730
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 4733
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 4734
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumTotalEntries()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4737
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 4738
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4741
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAltAssetList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4742
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_44

    .line 4745
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 4746
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumCorrectedEntries()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4749
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 4750
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4753
    :cond_77
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 4754
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getListType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4757
    :cond_87
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->cachedSize:I

    .line 4758
    return v2
.end method

.method public hasCorrectedQuery()Z
    .registers 2

    .prologue
    .line 4575
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery:Z

    return v0
.end method

.method public hasHeader()Z
    .registers 2

    .prologue
    .line 4642
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader:Z

    return v0
.end method

.method public hasListType()Z
    .registers 2

    .prologue
    .line 4658
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType:Z

    return v0
.end method

.method public hasNumCorrectedEntries()Z
    .registers 2

    .prologue
    .line 4625
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries:Z

    return v0
.end method

.method public hasNumTotalEntries()Z
    .registers 2

    .prologue
    .line 4558
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4765
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4766
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4e

    .line 4770
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4771
    :sswitch_d
    return-object p0

    .line 4776
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 4777
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4778
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->addAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4782
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4786
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setCorrectedQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4790
    :sswitch_2a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 4791
    .restart local v1       #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4792
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->addAltAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4796
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setNumCorrectedEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4800
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setHeader(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4804
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->setListType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    goto :goto_0

    .line 4766
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x28 -> :sswitch_36
        0x32 -> :sswitch_3e
        0x38 -> :sswitch_46
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
    .line 4511
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setCorrectedQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery:Z

    .line 4578
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->correctedQuery_:Ljava/lang/String;

    .line 4579
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader:Z

    .line 4645
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->header_:Ljava/lang/String;

    .line 4646
    return-object p0
.end method

.method public setListType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType:Z

    .line 4662
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->listType_:I

    .line 4663
    return-object p0
.end method

.method public setNumCorrectedEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 4627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries:Z

    .line 4628
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numCorrectedEntries_:J

    .line 4629
    return-object p0
.end method

.method public setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 4560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries:Z

    .line 4561
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->numTotalEntries_:J

    .line 4562
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4695
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAssetList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4696
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 4698
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumTotalEntries()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4699
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumTotalEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4701
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasCorrectedQuery()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4702
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4704
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAltAssetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 4705
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3d

    .line 4707
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasNumCorrectedEntries()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 4708
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getNumCorrectedEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4710
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 4711
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4713
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->hasListType()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 4714
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getListType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4716
    :cond_78
    return-void
.end method
