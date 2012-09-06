.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategoryProto"
.end annotation


# instance fields
.field private assetType_:I

.field private cachedSize:I

.field private categoryDisplay_:Ljava/lang/String;

.field private categoryId_:Ljava/lang/String;

.field private categorySubtitle_:Ljava/lang/String;

.field private hasAssetType:Z

.field private hasCategoryDisplay:Z

.field private hasCategoryId:Z

.field private hasCategorySubtitle:Z

.field private promotedAssetsFree_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promotedAssetsHome_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promotedAssetsNew_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promotedAssetsPaid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subCategories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14325
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14330
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->assetType_:I

    .line 14347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryId_:Ljava/lang/String;

    .line 14364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryDisplay_:Ljava/lang/String;

    .line 14381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categorySubtitle_:Ljava/lang/String;

    .line 14397
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    .line 14430
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    .line 14463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    .line 14496
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    .line 14529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    .line 14614
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    .line 14325
    return-void
.end method


# virtual methods
.method public addPromotedAssetsFree(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14546
    if-nez p1, :cond_8

    .line 14547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14549
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    .line 14552
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14553
    return-object p0
.end method

.method public addPromotedAssetsHome(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14447
    if-nez p1, :cond_8

    .line 14448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14450
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    .line 14453
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14454
    return-object p0
.end method

.method public addPromotedAssetsNew(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14414
    if-nez p1, :cond_8

    .line 14415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14417
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    .line 14420
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14421
    return-object p0
.end method

.method public addPromotedAssetsPaid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14513
    if-nez p1, :cond_8

    .line 14514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14516
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    .line 14519
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14520
    return-object p0
.end method

.method public addSubCategories(Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14480
    if-nez p1, :cond_8

    .line 14481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14483
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    .line 14486
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14487
    return-object p0
.end method

.method public getAssetType()I
    .registers 2

    .prologue
    .line 14331
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->assetType_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 14617
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 14619
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getSerializedSize()I

    .line 14621
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    return v0
.end method

.method public getCategoryDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14365
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14348
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategorySubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14382
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categorySubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedAssetsFreeList()Ljava/util/List;
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
    .line 14532
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    return-object v0
.end method

.method public getPromotedAssetsHomeList()Ljava/util/List;
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
    .line 14433
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    return-object v0
.end method

.method public getPromotedAssetsNewList()Ljava/util/List;
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
    .line 14400
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    return-object v0
.end method

.method public getPromotedAssetsPaidList()Ljava/util/List;
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
    .line 14499
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 14626
    const/4 v3, 0x0

    .line 14627
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 14628
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getAssetType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 14631
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 14632
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 14635
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 14636
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 14639
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategorySubtitle()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 14640
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategorySubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 14644
    :cond_41
    const/4 v0, 0x0

    .line 14645
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsNewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14646
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4a

    .line 14649
    .end local v1           #element:Ljava/lang/String;
    :cond_5c
    add-int/2addr v3, v0

    .line 14650
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsNewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14653
    const/4 v0, 0x0

    .line 14654
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsHomeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14655
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_71

    .line 14658
    .end local v1           #element:Ljava/lang/String;
    :cond_83
    add-int/2addr v3, v0

    .line 14659
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsHomeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14661
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getSubCategoriesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_97
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    .line 14662
    .local v1, element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_97

    .line 14666
    .end local v1           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    :cond_ab
    const/4 v0, 0x0

    .line 14667
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsPaidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14668
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_b4

    .line 14671
    .end local v1           #element:Ljava/lang/String;
    :cond_c6
    add-int/2addr v3, v0

    .line 14672
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsPaidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14675
    const/4 v0, 0x0

    .line 14676
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsFreeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_db
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14677
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_db

    .line 14680
    .end local v1           #element:Ljava/lang/String;
    :cond_ed
    add-int/2addr v3, v0

    .line 14681
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsFreeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14683
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    .line 14684
    return v3
.end method

.method public getSubCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14466
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    return-object v0
.end method

.method public hasAssetType()Z
    .registers 2

    .prologue
    .line 14332
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType:Z

    return v0
.end method

.method public hasCategoryDisplay()Z
    .registers 2

    .prologue
    .line 14366
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay:Z

    return v0
.end method

.method public hasCategoryId()Z
    .registers 2

    .prologue
    .line 14349
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId:Z

    return v0
.end method

.method public hasCategorySubtitle()Z
    .registers 2

    .prologue
    .line 14383
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategorySubtitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14692
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14693
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 14697
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14698
    :sswitch_d
    return-object p0

    .line 14703
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14707
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14711
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14715
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setCategorySubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14719
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsNew(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14723
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsHome(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14727
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;-><init>()V

    .line 14728
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 14729
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addSubCategories(Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14733
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsPaid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14737
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsFree(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14693
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0x10 -> :sswitch_e
        0x1a -> :sswitch_16
        0x22 -> :sswitch_1e
        0x2a -> :sswitch_26
        0x32 -> :sswitch_2e
        0x3a -> :sswitch_36
        0x42 -> :sswitch_3e
        0x4a -> :sswitch_4a
        0x52 -> :sswitch_52
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
    .line 14323
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType:Z

    .line 14335
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->assetType_:I

    .line 14336
    return-object p0
.end method

.method public setCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay:Z

    .line 14369
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryDisplay_:Ljava/lang/String;

    .line 14370
    return-object p0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId:Z

    .line 14352
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryId_:Ljava/lang/String;

    .line 14353
    return-object p0
.end method

.method public setCategorySubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategorySubtitle:Z

    .line 14386
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categorySubtitle_:Ljava/lang/String;

    .line 14387
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14585
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 14586
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getAssetType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 14588
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 14589
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14591
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 14592
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14594
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategorySubtitle()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 14595
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategorySubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14597
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsNewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14598
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_40

    .line 14600
    .end local v0           #element:Ljava/lang/String;
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsHomeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14601
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_59

    .line 14603
    .end local v0           #element:Ljava/lang/String;
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getSubCategoriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    .line 14604
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_72

    .line 14606
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsPaidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14607
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_8c

    .line 14609
    .end local v0           #element:Ljava/lang/String;
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsFreeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14610
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_a6

    .line 14612
    .end local v0           #element:Ljava/lang/String;
    :cond_b8
    return-void
.end method
