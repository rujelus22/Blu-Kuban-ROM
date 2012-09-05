.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetsRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private assetType_:I

.field private badgeId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private categoryId_:Ljava/lang/String;

.field private hasAssetType:Z

.field private hasCategoryId:Z

.field private hasNumEntries:Z

.field private hasQuery:Z

.field private hasRankingType:Z

.field private hasReconstructVendingHistory:Z

.field private hasRetrieveCarrierChannel:Z

.field private hasRetrieveExtendedInfo:Z

.field private hasRetrieveVendingHistory:Z

.field private hasSortOrder:Z

.field private hasStartIndex:Z

.field private hasUnfilteredResults:Z

.field private hasViewFilter:Z

.field private numEntries_:J

.field private pendingDownloadAssetId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private query_:Ljava/lang/String;

.field private rankingType_:Ljava/lang/String;

.field private reconstructVendingHistory_:Z

.field private retrieveCarrierChannel_:Z

.field private retrieveExtendedInfo_:Z

.field private retrieveVendingHistory_:Z

.field private sortOrder_:I

.field private startIndex_:J

.field private unfilteredResults_:Z

.field private viewFilter_:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3911
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3928
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetType_:I

    .line 3945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->query_:Ljava/lang/String;

    .line 3962
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->categoryId_:Ljava/lang/String;

    .line 3978
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    .line 4012
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveVendingHistory_:Z

    .line 4029
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveExtendedInfo_:Z

    .line 4046
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->sortOrder_:I

    .line 4063
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->startIndex_:J

    .line 4080
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->numEntries_:J

    .line 4097
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->viewFilter_:I

    .line 4114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->rankingType_:Ljava/lang/String;

    .line 4131
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveCarrierChannel_:Z

    .line 4147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    .line 4181
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->reconstructVendingHistory_:Z

    .line 4198
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->unfilteredResults_:Z

    .line 4214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    .line 4322
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    .line 3911
    return-void
.end method


# virtual methods
.method public addAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3995
    if-nez p1, :cond_8

    .line 3996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3998
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    .line 4001
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4002
    return-object p0
.end method

.method public addBadgeId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4231
    if-nez p1, :cond_8

    .line 4232
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4234
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    .line 4237
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4238
    return-object p0
.end method

.method public addPendingDownloadAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4164
    if-nez p1, :cond_8

    .line 4165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4167
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    .line 4170
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4171
    return-object p0
.end method

.method public getAssetIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    return-object v0
.end method

.method public getAssetType()I
    .registers 2

    .prologue
    .line 3930
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetType_:I

    return v0
.end method

.method public getBadgeIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 4324
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 4326
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getSerializedSize()I

    .line 4328
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    return v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->categoryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumEntries()J
    .registers 3

    .prologue
    .line 4081
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->numEntries_:J

    return-wide v0
.end method

.method public getPendingDownloadAssetIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4115
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->rankingType_:Ljava/lang/String;

    return-object v0
.end method

.method public getReconstructVendingHistory()Z
    .registers 2

    .prologue
    .line 4182
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->reconstructVendingHistory_:Z

    return v0
.end method

.method public getRetrieveCarrierChannel()Z
    .registers 2

    .prologue
    .line 4132
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveCarrierChannel_:Z

    return v0
.end method

.method public getRetrieveExtendedInfo()Z
    .registers 2

    .prologue
    .line 4030
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveExtendedInfo_:Z

    return v0
.end method

.method public getRetrieveVendingHistory()Z
    .registers 2

    .prologue
    .line 4013
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveVendingHistory_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 4332
    const/4 v3, 0x0

    .line 4333
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4334
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4337
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4338
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4341
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4342
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4346
    :cond_31
    const/4 v0, 0x0

    .line 4347
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4348
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3a

    .line 4351
    .end local v1           #element:Ljava/lang/String;
    :cond_4c
    add-int/2addr v3, v0

    .line 4352
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4354
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 4355
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveVendingHistory()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4358
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 4359
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveExtendedInfo()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4362
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 4363
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getSortOrder()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4366
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 4367
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getStartIndex()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4370
    :cond_99
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 4371
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getNumEntries()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4374
    :cond_aa
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 4375
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getViewFilter()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4378
    :cond_bb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType()Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 4379
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRankingType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4382
    :cond_cc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel()Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 4383
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveCarrierChannel()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4387
    :cond_dd
    const/4 v0, 0x0

    .line 4388
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getPendingDownloadAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4389
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_e6

    .line 4392
    .end local v1           #element:Ljava/lang/String;
    :cond_f8
    add-int/2addr v3, v0

    .line 4393
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getPendingDownloadAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4395
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_115

    .line 4396
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getReconstructVendingHistory()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4399
    :cond_115
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults()Z

    move-result v4

    if-eqz v4, :cond_126

    .line 4400
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getUnfilteredResults()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4404
    :cond_126
    const/4 v0, 0x0

    .line 4405
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getBadgeIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_141

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4406
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_12f

    .line 4409
    .end local v1           #element:Ljava/lang/String;
    :cond_141
    add-int/2addr v3, v0

    .line 4410
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getBadgeIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4412
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    .line 4413
    return v3
.end method

.method public getSortOrder()I
    .registers 2

    .prologue
    .line 4048
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->sortOrder_:I

    return v0
.end method

.method public getStartIndex()J
    .registers 3

    .prologue
    .line 4064
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->startIndex_:J

    return-wide v0
.end method

.method public getUnfilteredResults()Z
    .registers 2

    .prologue
    .line 4199
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->unfilteredResults_:Z

    return v0
.end method

.method public getViewFilter()I
    .registers 2

    .prologue
    .line 4099
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->viewFilter_:I

    return v0
.end method

.method public hasAssetType()Z
    .registers 2

    .prologue
    .line 3929
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType:Z

    return v0
.end method

.method public hasCategoryId()Z
    .registers 2

    .prologue
    .line 3964
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId:Z

    return v0
.end method

.method public hasNumEntries()Z
    .registers 2

    .prologue
    .line 4082
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries:Z

    return v0
.end method

.method public hasQuery()Z
    .registers 2

    .prologue
    .line 3947
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery:Z

    return v0
.end method

.method public hasRankingType()Z
    .registers 2

    .prologue
    .line 4116
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType:Z

    return v0
.end method

.method public hasReconstructVendingHistory()Z
    .registers 2

    .prologue
    .line 4183
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory:Z

    return v0
.end method

.method public hasRetrieveCarrierChannel()Z
    .registers 2

    .prologue
    .line 4133
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel:Z

    return v0
.end method

.method public hasRetrieveExtendedInfo()Z
    .registers 2

    .prologue
    .line 4031
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo:Z

    return v0
.end method

.method public hasRetrieveVendingHistory()Z
    .registers 2

    .prologue
    .line 4014
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory:Z

    return v0
.end method

.method public hasSortOrder()Z
    .registers 2

    .prologue
    .line 4047
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder:Z

    return v0
.end method

.method public hasStartIndex()Z
    .registers 2

    .prologue
    .line 4065
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex:Z

    return v0
.end method

.method public hasUnfilteredResults()Z
    .registers 2

    .prologue
    .line 4200
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults:Z

    return v0
.end method

.method public hasViewFilter()Z
    .registers 2

    .prologue
    .line 4098
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4420
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4421
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_90

    .line 4425
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4426
    :sswitch_d
    return-object p0

    .line 4431
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4435
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4439
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4443
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->addAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4447
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4451
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveExtendedInfo(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4455
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setSortOrder(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4459
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4463
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4467
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setViewFilter(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4471
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRankingType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4475
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveCarrierChannel(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4479
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->addPendingDownloadAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4483
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setReconstructVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4487
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setUnfilteredResults(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto/16 :goto_0

    .line 4491
    :sswitch_87
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->addBadgeId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto/16 :goto_0

    .line 4421
    :sswitch_data_90
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x30 -> :sswitch_36
        0x38 -> :sswitch_3e
        0x40 -> :sswitch_46
        0x48 -> :sswitch_4e
        0x50 -> :sswitch_56
        0x5a -> :sswitch_5e
        0x60 -> :sswitch_66
        0x6a -> :sswitch_6e
        0x70 -> :sswitch_76
        0x78 -> :sswitch_7e
        0x82 -> :sswitch_87
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
    .line 3909
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType:Z

    .line 3933
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetType_:I

    .line 3934
    return-object p0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId:Z

    .line 3967
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->categoryId_:Ljava/lang/String;

    .line 3968
    return-object p0
.end method

.method public setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 4084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries:Z

    .line 4085
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->numEntries_:J

    .line 4086
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery:Z

    .line 3950
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->query_:Ljava/lang/String;

    .line 3951
    return-object p0
.end method

.method public setRankingType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType:Z

    .line 4119
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->rankingType_:Ljava/lang/String;

    .line 4120
    return-object p0
.end method

.method public setReconstructVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory:Z

    .line 4186
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->reconstructVendingHistory_:Z

    .line 4187
    return-object p0
.end method

.method public setRetrieveCarrierChannel(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel:Z

    .line 4136
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveCarrierChannel_:Z

    .line 4137
    return-object p0
.end method

.method public setRetrieveExtendedInfo(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo:Z

    .line 4034
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveExtendedInfo_:Z

    .line 4035
    return-object p0
.end method

.method public setRetrieveVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory:Z

    .line 4017
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveVendingHistory_:Z

    .line 4018
    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder:Z

    .line 4051
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->sortOrder_:I

    .line 4052
    return-object p0
.end method

.method public setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 4067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex:Z

    .line 4068
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->startIndex_:J

    .line 4069
    return-object p0
.end method

.method public setUnfilteredResults(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults:Z

    .line 4203
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->unfilteredResults_:Z

    .line 4204
    return-object p0
.end method

.method public setViewFilter(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter:Z

    .line 4102
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->viewFilter_:I

    .line 4103
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
    .line 4272
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4273
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4275
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4276
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4278
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4279
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4281
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4282
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_32

    .line 4284
    .end local v0           #element:Ljava/lang/String;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 4285
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveVendingHistory()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4287
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4288
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveExtendedInfo()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4290
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 4291
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getSortOrder()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4293
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 4294
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getStartIndex()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4296
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 4297
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getNumEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4299
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 4300
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getViewFilter()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4302
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 4303
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRankingType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4305
    :cond_a9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 4306
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveCarrierChannel()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4308
    :cond_b8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getPendingDownloadAssetIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4309
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_c0

    .line 4311
    .end local v0           #element:Ljava/lang/String;
    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 4312
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getReconstructVendingHistory()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4314
    :cond_e1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 4315
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getUnfilteredResults()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4317
    :cond_f0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getBadgeIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4318
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_f8

    .line 4320
    .end local v0           #element:Ljava/lang/String;
    :cond_10a
    return-void
.end method
