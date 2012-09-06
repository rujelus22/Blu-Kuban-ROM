.class public Landroid/support/place/connector/PlaceInfo;
.super Ljava/lang/Object;
.source "PlaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/place/connector/PlaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static FIELD_EXTRAS:Ljava/lang/String;

.field private static FIELD_MASTER_SESSION_ID:Ljava/lang/String;

.field private static FIELD_PLACE_ID:Ljava/lang/String;

.field private static FIELD_PLACE_NAME:Ljava/lang/String;

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Landroid/support/place/connector/PlaceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMaster:Landroid/support/place/rpc/EndpointInfo;

.field private mMasterSessionId:Ljava/lang/String;

.field private mPlaceExtras:Landroid/support/place/rpc/RpcData;

.field private mPlaceId:Ljava/lang/String;

.field private mPlaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "placeId"

    sput-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_PLACE_ID:Ljava/lang/String;

    .line 12
    const-string v0, "placeName"

    sput-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_PLACE_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "masterSessionId"

    sput-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_MASTER_SESSION_ID:Ljava/lang/String;

    .line 14
    const-string v0, "extras"

    sput-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_EXTRAS:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/support/place/connector/PlaceInfo$1;

    invoke-direct {v0}, Landroid/support/place/connector/PlaceInfo$1;-><init>()V

    sput-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 139
    new-instance v0, Landroid/support/place/connector/PlaceInfo$2;

    invoke-direct {v0}, Landroid/support/place/connector/PlaceInfo$2;-><init>()V

    sput-object v0, Landroid/support/place/connector/PlaceInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .parameter "in"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    move v1, v0

    .line 41
    .local v1, hasMaster:Z
    :goto_19
    if-eqz v1, :cond_49

    .line 42
    sget-object v3, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/rpc/EndpointInfo;

    iput-object v3, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    .line 46
    :goto_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    move v2, v0

    .line 47
    .local v2, hasMasterSessionId:Z
    :goto_2c
    if-eqz v2, :cond_4e

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    .line 52
    :goto_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_51

    .line 53
    .local v0, hasExtras:Z
    :goto_3a
    if-eqz v0, :cond_53

    .line 54
    sget-object v3, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/rpc/RpcData;

    iput-object v3, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    .line 58
    :goto_46
    return-void

    .end local v0           #hasExtras:Z
    .end local v1           #hasMaster:Z
    .end local v2           #hasMasterSessionId:Z
    :cond_47
    move v1, v4

    .line 40
    goto :goto_19

    .line 44
    .restart local v1       #hasMaster:Z
    :cond_49
    iput-object v5, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    goto :goto_25

    :cond_4c
    move v2, v4

    .line 46
    goto :goto_2c

    .line 50
    .restart local v2       #hasMasterSessionId:Z
    :cond_4e
    iput-object v5, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    goto :goto_34

    :cond_51
    move v0, v4

    .line 52
    goto :goto_3a

    .line 56
    .restart local v0       #hasExtras:Z
    :cond_53
    iput-object v5, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    goto :goto_46
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_PLACE_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_PLACE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;

    .line 66
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 67
    sget-object v0, Landroid/support/place/rpc/EndpointInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-interface {v0, p1}, Landroid/support/place/rpc/Flattenable$Creator;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    .line 70
    :cond_25
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_MASTER_SESSION_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 71
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_MASTER_SESSION_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    .line 74
    :cond_35
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 75
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    .line 77
    :cond_45
    return-void
.end method

.method private static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 257
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 258
    const/4 v0, 0x1

    .line 262
    :goto_5
    return v0

    .line 259
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    .line 260
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 262
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getMaster()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;

    return-object v0
.end method

.method public hasSameExtras(Landroid/support/place/connector/PlaceInfo;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/support/place/connector/PlaceInfo;->isGuestModeEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->isGuestModeEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasSameMaster(Landroid/support/place/connector/PlaceInfo;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    iget-object v1, p1, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    invoke-static {v0, v1}, Landroid/support/place/connector/PlaceInfo;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    iget-object v1, p1, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/place/connector/PlaceInfo;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isGuestModeEnabled()Z
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    const-string v1, "guest_mode"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 281
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    const-string v1, "guest_mode"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 283
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaceInfo(mPlaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPlaceName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" master="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " masterSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Extras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    if-eqz v0, :cond_31

    .line 89
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, p1, p2}, Landroid/support/place/rpc/EndpointInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_18
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 95
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    :goto_24
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    if-eqz v0, :cond_39

    .line 101
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1, p2}, Landroid/support/place/rpc/RpcData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_30
    return-void

    .line 92
    :cond_31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 98
    :cond_35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 104
    :cond_39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "dest"

    .prologue
    .line 110
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_PLACE_ID:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_PLACE_NAME:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    if-eqz v0, :cond_17

    .line 114
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMaster:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, p1}, Landroid/support/place/rpc/EndpointInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 117
    :cond_17
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 118
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_MASTER_SESSION_ID:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mMasterSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_22
    iget-object v0, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    if-eqz v0, :cond_2d

    .line 122
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/place/connector/PlaceInfo;->mPlaceExtras:Landroid/support/place/rpc/RpcData;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 124
    :cond_2d
    return-void
.end method
