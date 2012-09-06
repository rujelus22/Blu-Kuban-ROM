.class public Landroid/support/place/beacon/BeaconInfo;
.super Ljava/lang/Object;
.source "BeaconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/place/beacon/BeaconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public beaconData:Landroid/support/place/rpc/RpcData;

.field public place:Landroid/support/place/connector/PlaceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Landroid/support/place/beacon/BeaconInfo$1;

    invoke-direct {v0}, Landroid/support/place/beacon/BeaconInfo$1;-><init>()V

    sput-object v0, Landroid/support/place/beacon/BeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    iput-object v0, p0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    .line 20
    sget-object v0, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    iput-object v0, p0, Landroid/support/place/beacon/BeaconInfo;->beaconData:Landroid/support/place/rpc/RpcData;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/place/beacon/BeaconInfo;->beaconData:Landroid/support/place/rpc/RpcData;

    if-eqz v0, :cond_28

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/PlaceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/beacon/BeaconInfo;->beaconData:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_27
    return-object v0

    :cond_28
    iget-object v0, p0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/PlaceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/support/place/connector/PlaceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Landroid/support/place/beacon/BeaconInfo;->beaconData:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, p1, p2}, Landroid/support/place/rpc/RpcData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    return-void
.end method
