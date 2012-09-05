.class public Lcom/google/android/vending/model/Asset;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/vending/model/Asset$1;

    invoke-direct {v0}, Lcom/google/android/vending/model/Asset$1;-><init>()V

    sput-object v0, Lcom/google/android/vending/model/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)V
    .registers 2
    .parameter "externalAsset"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getAverageRating()D
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAverageRating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDevName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
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
    .line 54
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getApplicationPermissionIdList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRatingCount()J
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getNumRatings()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequiredInstallationSize()J
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getRequiredInstallationSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()J
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersionCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasRating()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating()Z

    move-result v0

    return v0
.end method

.method public hasRequiredInstallationSize()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRequiredInstallationSize()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Asset package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/vending/model/Asset;->getVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/vending/model/Asset;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
