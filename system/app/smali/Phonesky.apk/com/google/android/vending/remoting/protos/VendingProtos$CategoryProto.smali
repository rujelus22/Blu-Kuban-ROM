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
    .line 14015
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14020
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->assetType_:I

    .line 14037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryId_:Ljava/lang/String;

    .line 14054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryDisplay_:Ljava/lang/String;

    .line 14071
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categorySubtitle_:Ljava/lang/String;

    .line 14087
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    .line 14120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    .line 14153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    .line 14186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    .line 14219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    .line 14303
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    .line 14015
    return-void
.end method


# virtual methods
.method public addPromotedAssetsFree(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14236
    if-nez p1, :cond_8

    .line 14237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14239
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    .line 14242
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsFree_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14243
    return-object p0
.end method

.method public addPromotedAssetsHome(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14137
    if-nez p1, :cond_8

    .line 14138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14140
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    .line 14143
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsHome_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14144
    return-object p0
.end method

.method public addPromotedAssetsNew(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14104
    if-nez p1, :cond_8

    .line 14105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14107
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    .line 14110
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsNew_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14111
    return-object p0
.end method

.method public addPromotedAssetsPaid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14203
    if-nez p1, :cond_8

    .line 14204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14206
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    .line 14209
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14210
    return-object p0
.end method

.method public addSubCategories(Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14170
    if-nez p1, :cond_8

    .line 14171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14173
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    .line 14176
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14177
    return-object p0
.end method

.method public getAssetType()I
    .registers 2

    .prologue
    .line 14021
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->assetType_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 14305
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 14307
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getSerializedSize()I

    .line 14309
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    return v0
.end method

.method public getCategoryDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14055
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14038
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategorySubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14072
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
    .line 14222
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
    .line 14123
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
    .line 14090
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
    .line 14189
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->promotedAssetsPaid_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 14313
    const/4 v3, 0x0

    .line 14314
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 14315
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getAssetType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 14318
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 14319
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 14322
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 14323
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 14326
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategorySubtitle()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 14327
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategorySubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 14331
    :cond_41
    const/4 v0, 0x0

    .line 14332
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

    .line 14333
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4a

    .line 14336
    .end local v1           #element:Ljava/lang/String;
    :cond_5c
    add-int/2addr v3, v0

    .line 14337
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsNewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14340
    const/4 v0, 0x0

    .line 14341
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

    .line 14342
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_71

    .line 14345
    .end local v1           #element:Ljava/lang/String;
    :cond_83
    add-int/2addr v3, v0

    .line 14346
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsHomeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14348
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

    .line 14349
    .local v1, element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_97

    .line 14353
    .end local v1           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    :cond_ab
    const/4 v0, 0x0

    .line 14354
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

    .line 14355
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_b4

    .line 14358
    .end local v1           #element:Ljava/lang/String;
    :cond_c6
    add-int/2addr v3, v0

    .line 14359
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsPaidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14362
    const/4 v0, 0x0

    .line 14363
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

    .line 14364
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_db

    .line 14367
    .end local v1           #element:Ljava/lang/String;
    :cond_ed
    add-int/2addr v3, v0

    .line 14368
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getPromotedAssetsFreeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 14370
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->cachedSize:I

    .line 14371
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
    .line 14156
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->subCategories_:Ljava/util/List;

    return-object v0
.end method

.method public hasAssetType()Z
    .registers 2

    .prologue
    .line 14022
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType:Z

    return v0
.end method

.method public hasCategoryDisplay()Z
    .registers 2

    .prologue
    .line 14056
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay:Z

    return v0
.end method

.method public hasCategoryId()Z
    .registers 2

    .prologue
    .line 14039
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId:Z

    return v0
.end method

.method public hasCategorySubtitle()Z
    .registers 2

    .prologue
    .line 14073
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
    .line 14378
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14379
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 14383
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14384
    :sswitch_d
    return-object p0

    .line 14389
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14393
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14397
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14401
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->setCategorySubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14405
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsNew(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14409
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsHome(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14413
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;-><init>()V

    .line 14414
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 14415
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addSubCategories(Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14419
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsPaid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14423
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->addPromotedAssetsFree(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    goto :goto_0

    .line 14379
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
    .line 14013
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType:Z

    .line 14025
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->assetType_:I

    .line 14026
    return-object p0
.end method

.method public setCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay:Z

    .line 14059
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryDisplay_:Ljava/lang/String;

    .line 14060
    return-object p0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId:Z

    .line 14042
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categoryId_:Ljava/lang/String;

    .line 14043
    return-object p0
.end method

.method public setCategorySubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategorySubtitle:Z

    .line 14076
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->categorySubtitle_:Ljava/lang/String;

    .line 14077
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
    .line 14274
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasAssetType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 14275
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getAssetType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 14277
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryId()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 14278
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14280
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategoryDisplay()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 14281
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategoryDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14283
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->hasCategorySubtitle()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 14284
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;->getCategorySubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14286
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

    .line 14287
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_40

    .line 14289
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

    .line 14290
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_59

    .line 14292
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

    .line 14293
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$CategoryProto;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_72

    .line 14295
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

    .line 14296
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_8c

    .line 14298
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

    .line 14299
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_a6

    .line 14301
    .end local v0           #element:Ljava/lang/String;
    :cond_b8
    return-void
.end method
