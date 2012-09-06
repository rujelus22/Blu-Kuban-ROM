.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Availability"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    }
.end annotation


# instance fields
.field private availableIfOwned_:Z

.field private cachedSize:I

.field private filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

.field private hasAvailableIfOwned:Z

.field private hasFilterInfo:Z

.field private hasOfferType:Z

.field private hasOwnershipInfo:Z

.field private hasRestriction:Z

.field private hasRule:Z

.field private install_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Install;",
            ">;"
        }
    .end annotation
.end field

.field private offerType_:I

.field private ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

.field private perDeviceAvailabilityRestriction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;",
            ">;"
        }
    .end annotation
.end field

.field private restriction_:I

.field private rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 940
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1154
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    .line 1188
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    .line 1205
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    .line 1224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    .line 1258
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 1277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    .line 1311
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    .line 1383
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    .line 940
    return-void
.end method


# virtual methods
.method public addInstall(Lcom/google/android/finsky/remoting/protos/Common$Install;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1241
    if-nez p1, :cond_8

    .line 1242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1244
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    .line 1247
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    return-object p0
.end method

.method public addPerDeviceAvailabilityRestriction(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1294
    if-nez p1, :cond_8

    .line 1295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1297
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    .line 1300
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    return-object p0
.end method

.method public getAvailableIfOwned()Z
    .registers 2

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1386
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    if-gez v0, :cond_7

    .line 1388
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getSerializedSize()I

    .line 1390
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    return v0
.end method

.method public getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    return-object v0
.end method

.method public getInstallList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Install;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferType()I
    .registers 2

    .prologue
    .line 1190
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    return v0
.end method

.method public getOwnershipInfo()Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .registers 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    return-object v0
.end method

.method public getPerDeviceAvailabilityRestrictionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    return-object v0
.end method

.method public getRestriction()I
    .registers 2

    .prologue
    .line 1156
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    return v0
.end method

.method public getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1395
    const/4 v2, 0x0

    .line 1396
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1397
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1400
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1401
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOfferType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1404
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1405
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1408
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getPerDeviceAvailabilityRestrictionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    .line 1409
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 1412
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1413
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getAvailableIfOwned()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1416
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getInstallList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Install;

    .line 1417
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_66

    .line 1420
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    :cond_7a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1421
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1424
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 1425
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOwnershipInfo()Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1428
    :cond_9c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    .line 1429
    return v2
.end method

.method public hasAvailableIfOwned()Z
    .registers 2

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    return v0
.end method

.method public hasFilterInfo()Z
    .registers 2

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo:Z

    return v0
.end method

.method public hasOfferType()Z
    .registers 2

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType:Z

    return v0
.end method

.method public hasOwnershipInfo()Z
    .registers 2

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo:Z

    return v0
.end method

.method public hasRestriction()Z
    .registers 2

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction:Z

    return v0
.end method

.method public hasRule()Z
    .registers 2

    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1438
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_64

    .line 1442
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1443
    :sswitch_d
    return-object p0

    .line 1448
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1452
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1456
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 1457
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1458
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1462
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_2a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;-><init>()V

    .line 1463
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1464
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->addPerDeviceAvailabilityRestriction(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1468
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :sswitch_38
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setAvailableIfOwned(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1472
    :sswitch_40
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Install;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Install;-><init>()V

    .line 1473
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Install;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1474
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->addInstall(Lcom/google/android/finsky/remoting/protos/Common$Install;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1478
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Install;
    :sswitch_4c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;-><init>()V

    .line 1479
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1480
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setFilterInfo(Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1484
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    :sswitch_58
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;-><init>()V

    .line 1485
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1486
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setOwnershipInfo(Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1438
    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_d
        0x28 -> :sswitch_e
        0x30 -> :sswitch_16
        0x3a -> :sswitch_1e
        0x4b -> :sswitch_2a
        0x68 -> :sswitch_38
        0x72 -> :sswitch_40
        0x82 -> :sswitch_4c
        0x8a -> :sswitch_58
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
    .line 937
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v0

    return-object v0
.end method

.method public setAvailableIfOwned(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    .line 1176
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    .line 1177
    return-object p0
.end method

.method public setFilterInfo(Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1315
    if-nez p1, :cond_8

    .line 1316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1318
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo:Z

    .line 1319
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    .line 1320
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType:Z

    .line 1193
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    .line 1194
    return-object p0
.end method

.method public setOwnershipInfo(Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1209
    if-nez p1, :cond_8

    .line 1210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1212
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo:Z

    .line 1213
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    .line 1214
    return-object p0
.end method

.method public setRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction:Z

    .line 1159
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    .line 1160
    return-object p0
.end method

.method public setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 1262
    if-nez p1, :cond_8

    .line 1263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1265
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule:Z

    .line 1266
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 1267
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
    .line 1357
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1358
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1360
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1361
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1363
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1364
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1366
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getPerDeviceAvailabilityRestrictionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    .line 1367
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 1369
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1370
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getAvailableIfOwned()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1372
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getInstallList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Install;

    .line 1373
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_5b

    .line 1375
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1376
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1378
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1379
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOwnershipInfo()Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1381
    :cond_8b
    return-void
.end method
