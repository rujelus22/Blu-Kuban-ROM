.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingParameterProto"
.end annotation


# instance fields
.field private apiVersion_:I

.field private applicationId_:Ljava/lang/String;

.field private backendUrl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private billingInstrumentType_:I

.field private cachedSize:I

.field private hasApiVersion:Z

.field private hasApplicationId:Z

.field private hasBillingInstrumentType:Z

.field private hasIconId:Z

.field private hasId:Z

.field private hasInstrumentTosRequired:Z

.field private hasName:Z

.field private hasPerTransactionCredentialsRequired:Z

.field private hasSendSubscriberIdWithCarrierBillingRequests:Z

.field private hasTosUrl:Z

.field private iconId_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private instrumentTosRequired_:Z

.field private mncMcc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private perTransactionCredentialsRequired_:Z

.field private sendSubscriberIdWithCarrierBillingRequests_:Z

.field private tosUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15159
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->id_:Ljava/lang/String;

    .line 15181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->name_:Ljava/lang/String;

    .line 15197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    .line 15230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    .line 15264
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->iconId_:Ljava/lang/String;

    .line 15281
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->billingInstrumentType_:I

    .line 15298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->applicationId_:Ljava/lang/String;

    .line 15315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->tosUrl_:Ljava/lang/String;

    .line 15332
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->instrumentTosRequired_:Z

    .line 15349
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->apiVersion_:I

    .line 15366
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->perTransactionCredentialsRequired_:Z

    .line 15383
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->sendSubscriberIdWithCarrierBillingRequests_:Z

    .line 15460
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    .line 15159
    return-void
.end method


# virtual methods
.method public addBackendUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15247
    if-nez p1, :cond_8

    .line 15248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15250
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    .line 15253
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15254
    return-object p0
.end method

.method public addMncMcc(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15214
    if-nez p1, :cond_8

    .line 15215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15217
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    .line 15220
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15221
    return-object p0
.end method

.method public getApiVersion()I
    .registers 2

    .prologue
    .line 15350
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->apiVersion_:I

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15299
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackendUrl(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 15237
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBackendUrlList()Ljava/util/List;
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
    .line 15233
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    return-object v0
.end method

.method public getBillingInstrumentType()I
    .registers 2

    .prologue
    .line 15283
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->billingInstrumentType_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 15462
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 15464
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getSerializedSize()I

    .line 15466
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    return v0
.end method

.method public getIconId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15265
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->iconId_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15165
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentTosRequired()Z
    .registers 2

    .prologue
    .line 15333
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->instrumentTosRequired_:Z

    return v0
.end method

.method public getMncMccList()Ljava/util/List;
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
    .line 15200
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15182
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPerTransactionCredentialsRequired()Z
    .registers 2

    .prologue
    .line 15367
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->perTransactionCredentialsRequired_:Z

    return v0
.end method

.method public getSendSubscriberIdWithCarrierBillingRequests()Z
    .registers 2

    .prologue
    .line 15384
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->sendSubscriberIdWithCarrierBillingRequests_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 15470
    const/4 v3, 0x0

    .line 15471
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 15472
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15475
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 15476
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15480
    :cond_21
    const/4 v0, 0x0

    .line 15481
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getMncMccList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15482
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2a

    .line 15485
    .end local v1           #element:Ljava/lang/String;
    :cond_3c
    add-int/2addr v3, v0

    .line 15486
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getMncMccList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 15489
    const/4 v0, 0x0

    .line 15490
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15491
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_51

    .line 15494
    .end local v1           #element:Ljava/lang/String;
    :cond_63
    add-int/2addr v3, v0

    .line 15495
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 15497
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 15498
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getIconId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15501
    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 15502
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBillingInstrumentType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 15505
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 15506
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15509
    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 15510
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getTosUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15513
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 15514
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getInstrumentTosRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15517
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 15518
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApiVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 15521
    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 15522
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPerTransactionCredentialsRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15525
    :cond_e3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 15526
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15529
    :cond_f4
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    .line 15530
    return v3
.end method

.method public getTosUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15316
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->tosUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApiVersion()Z
    .registers 2

    .prologue
    .line 15351
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion:Z

    return v0
.end method

.method public hasApplicationId()Z
    .registers 2

    .prologue
    .line 15300
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId:Z

    return v0
.end method

.method public hasBillingInstrumentType()Z
    .registers 2

    .prologue
    .line 15282
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType:Z

    return v0
.end method

.method public hasIconId()Z
    .registers 2

    .prologue
    .line 15266
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId:Z

    return v0
.end method

.method public hasId()Z
    .registers 2

    .prologue
    .line 15166
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId:Z

    return v0
.end method

.method public hasInstrumentTosRequired()Z
    .registers 2

    .prologue
    .line 15334
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 15183
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName:Z

    return v0
.end method

.method public hasPerTransactionCredentialsRequired()Z
    .registers 2

    .prologue
    .line 15368
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired:Z

    return v0
.end method

.method public hasSendSubscriberIdWithCarrierBillingRequests()Z
    .registers 2

    .prologue
    .line 15385
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    return v0
.end method

.method public hasTosUrl()Z
    .registers 2

    .prologue
    .line 15317
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15537
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 15538
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6e

    .line 15542
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15543
    :sswitch_d
    return-object p0

    .line 15548
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15552
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15556
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->addMncMcc(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15560
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->addBackendUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15564
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setIconId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15568
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15572
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setApplicationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15576
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setTosUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15580
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setInstrumentTosRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15584
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15588
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setPerTransactionCredentialsRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15592
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setSendSubscriberIdWithCarrierBillingRequests(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15538
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x30 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_46
        0x48 -> :sswitch_4e
        0x50 -> :sswitch_56
        0x58 -> :sswitch_5e
        0x60 -> :sswitch_66
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
    .line 15157
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    move-result-object v0

    return-object v0
.end method

.method public setApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion:Z

    .line 15354
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->apiVersion_:I

    .line 15355
    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId:Z

    .line 15303
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->applicationId_:Ljava/lang/String;

    .line 15304
    return-object p0
.end method

.method public setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType:Z

    .line 15286
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->billingInstrumentType_:I

    .line 15287
    return-object p0
.end method

.method public setIconId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId:Z

    .line 15269
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->iconId_:Ljava/lang/String;

    .line 15270
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId:Z

    .line 15169
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->id_:Ljava/lang/String;

    .line 15170
    return-object p0
.end method

.method public setInstrumentTosRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired:Z

    .line 15337
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->instrumentTosRequired_:Z

    .line 15338
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName:Z

    .line 15186
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->name_:Ljava/lang/String;

    .line 15187
    return-object p0
.end method

.method public setPerTransactionCredentialsRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired:Z

    .line 15371
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->perTransactionCredentialsRequired_:Z

    .line 15372
    return-object p0
.end method

.method public setSendSubscriberIdWithCarrierBillingRequests(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    .line 15388
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->sendSubscriberIdWithCarrierBillingRequests_:Z

    .line 15389
    return-object p0
.end method

.method public setTosUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl:Z

    .line 15320
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->tosUrl_:Ljava/lang/String;

    .line 15321
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
    .line 15422
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 15423
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15425
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 15426
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15428
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getMncMccList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15429
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_24

    .line 15431
    .end local v0           #element:Ljava/lang/String;
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15432
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_3d

    .line 15434
    .end local v0           #element:Ljava/lang/String;
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 15435
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getIconId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15437
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 15438
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBillingInstrumentType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15440
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 15441
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15443
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 15444
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getTosUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15446
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 15447
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getInstrumentTosRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15449
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 15450
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApiVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15452
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 15453
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPerTransactionCredentialsRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15455
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 15456
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15458
    :cond_c3
    return-void
.end method
