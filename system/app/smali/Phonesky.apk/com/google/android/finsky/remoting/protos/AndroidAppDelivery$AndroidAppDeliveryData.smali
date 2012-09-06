.class public final Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidAppDeliveryData"
.end annotation


# instance fields
.field private additionalFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private downloadAuthCookie_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field private downloadSize_:J

.field private downloadUrl_:Ljava/lang/String;

.field private encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

.field private forwardLocked_:Z

.field private hasDownloadSize:Z

.field private hasDownloadUrl:Z

.field private hasEncryptionParams:Z

.field private hasForwardLocked:Z

.field private hasImmediateStartNeeded:Z

.field private hasPatchData:Z

.field private hasPostInstallRefundWindowMillis:Z

.field private hasRefundTimeout:Z

.field private hasServerInitiated:Z

.field private hasSignature:Z

.field private immediateStartNeeded_:Z

.field private patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

.field private postInstallRefundWindowMillis_:J

.field private refundTimeout_:J

.field private serverInitiated_:Z

.field private signature_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 891
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 896
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize_:J

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature_:Ljava/lang/String;

    .line 930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl_:Ljava/lang/String;

    .line 947
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    .line 966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    .line 999
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    .line 1033
    iput-boolean v3, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked_:Z

    .line 1050
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout_:J

    .line 1067
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis_:J

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated_:Z

    .line 1101
    iput-boolean v3, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded_:Z

    .line 1118
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    .line 1206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    .line 891
    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1348
    new-instance v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method


# virtual methods
.method public addAdditionalFile(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 983
    if-nez p1, :cond_8

    .line 984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 986
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    .line 989
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    return-object p0
.end method

.method public addDownloadAuthCookie(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 1016
    if-nez p1, :cond_8

    .line 1017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1019
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    .line 1022
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    return-object p0
.end method

.method public getAdditionalFile(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .registers 3
    .parameter "index"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    return-object v0
.end method

.method public getAdditionalFileCount()I
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalFileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1209
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    if-gez v0, :cond_7

    .line 1211
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSerializedSize()I

    .line 1213
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    return v0
.end method

.method public getDownloadAuthCookie(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    .registers 3
    .parameter "index"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    return-object v0
.end method

.method public getDownloadAuthCookieCount()I
    .registers 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDownloadAuthCookieList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadSize()J
    .registers 3

    .prologue
    .line 897
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize_:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    .registers 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    return-object v0
.end method

.method public getForwardLocked()Z
    .registers 2

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked_:Z

    return v0
.end method

.method public getImmediateStartNeeded()Z
    .registers 2

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded_:Z

    return v0
.end method

.method public getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .registers 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    return-object v0
.end method

.method public getPostInstallRefundWindowMillis()J
    .registers 3

    .prologue
    .line 1068
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis_:J

    return-wide v0
.end method

.method public getRefundTimeout()J
    .registers 3

    .prologue
    .line 1051
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1218
    const/4 v2, 0x0

    .line 1219
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1220
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1223
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1224
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1227
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1228
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1231
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 1232
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 1235
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookieList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    .line 1236
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_54

    .line 1239
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1240
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getForwardLocked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1243
    :cond_77
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1244
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getRefundTimeout()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1247
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 1248
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getServerInitiated()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1251
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1252
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPostInstallRefundWindowMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1255
    :cond_a9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1256
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getImmediateStartNeeded()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1259
    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData()Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 1260
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1263
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams()Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 1264
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1267
    :cond_dc
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    .line 1268
    return v2
.end method

.method public getServerInitiated()Z
    .registers 2

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated_:Z

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDownloadSize()Z
    .registers 2

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    return v0
.end method

.method public hasDownloadUrl()Z
    .registers 2

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    return v0
.end method

.method public hasEncryptionParams()Z
    .registers 2

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams:Z

    return v0
.end method

.method public hasForwardLocked()Z
    .registers 2

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    return v0
.end method

.method public hasImmediateStartNeeded()Z
    .registers 2

    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    return v0
.end method

.method public hasPatchData()Z
    .registers 2

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData:Z

    return v0
.end method

.method public hasPostInstallRefundWindowMillis()Z
    .registers 2

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    return v0
.end method

.method public hasRefundTimeout()Z
    .registers 2

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    return v0
.end method

.method public hasServerInitiated()Z
    .registers 2

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    return v0
.end method

.method public hasSignature()Z
    .registers 2

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1276
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1277
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_7e

    .line 1281
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1282
    :sswitch_d
    return-object p0

    .line 1287
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1291
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1295
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1299
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;-><init>()V

    .line 1300
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1301
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addAdditionalFile(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1305
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;-><init>()V

    .line 1306
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1307
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addDownloadAuthCookie(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1311
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setForwardLocked(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1315
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setRefundTimeout(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1319
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setServerInitiated(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1323
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setPostInstallRefundWindowMillis(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1327
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setImmediateStartNeeded(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1331
    :sswitch_66
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;-><init>()V

    .line 1332
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1333
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setPatchData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1337
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    :sswitch_72
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;-><init>()V

    .line 1338
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1339
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setEncryptionParams(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1277
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_32
        0x30 -> :sswitch_3e
        0x38 -> :sswitch_46
        0x40 -> :sswitch_4e
        0x48 -> :sswitch_56
        0x50 -> :sswitch_5e
        0x5a -> :sswitch_66
        0x62 -> :sswitch_72
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
    .line 888
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 4
    .parameter "value"

    .prologue
    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    .line 901
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize_:J

    .line 902
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    .line 935
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl_:Ljava/lang/String;

    .line 936
    return-object p0
.end method

.method public setEncryptionParams(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 951
    if-nez p1, :cond_8

    .line 952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 954
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams:Z

    .line 955
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    .line 956
    return-object p0
.end method

.method public setForwardLocked(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    .line 1038
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked_:Z

    .line 1039
    return-object p0
.end method

.method public setImmediateStartNeeded(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    .line 1106
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded_:Z

    .line 1107
    return-object p0
.end method

.method public setPatchData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 1122
    if-nez p1, :cond_8

    .line 1123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1125
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData:Z

    .line 1126
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    .line 1127
    return-object p0
.end method

.method public setPostInstallRefundWindowMillis(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 4
    .parameter "value"

    .prologue
    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    .line 1072
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis_:J

    .line 1073
    return-object p0
.end method

.method public setRefundTimeout(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 4
    .parameter "value"

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    .line 1055
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout_:J

    .line 1056
    return-object p0
.end method

.method public setServerInitiated(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    .line 1089
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated_:Z

    .line 1090
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 3
    .parameter "value"

    .prologue
    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    .line 918
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature_:Ljava/lang/String;

    .line 919
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
    .line 1168
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1169
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1171
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1172
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1174
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1175
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1177
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 1178
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 1180
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookieList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    .line 1181
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_4b

    .line 1183
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1184
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getForwardLocked()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1186
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1187
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getRefundTimeout()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1189
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1190
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getServerInitiated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1192
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1193
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPostInstallRefundWindowMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1195
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1196
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getImmediateStartNeeded()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1198
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1199
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1201
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1202
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1204
    :cond_c3
    return-void
.end method
