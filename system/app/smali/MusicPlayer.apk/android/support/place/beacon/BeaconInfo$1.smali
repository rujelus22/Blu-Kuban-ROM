.class final Landroid/support/place/beacon/BeaconInfo$1;
.super Ljava/lang/Object;
.source "BeaconInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/beacon/BeaconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/place/beacon/BeaconInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/place/beacon/BeaconInfo;
    .registers 3
    .parameter "in"

    .prologue
    .line 37
    new-instance v0, Landroid/support/place/beacon/BeaconInfo;

    invoke-direct {v0, p1}, Landroid/support/place/beacon/BeaconInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/support/place/beacon/BeaconInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/place/beacon/BeaconInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/place/beacon/BeaconInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 42
    new-array v0, p1, [Landroid/support/place/beacon/BeaconInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/support/place/beacon/BeaconInfo$1;->newArray(I)[Landroid/support/place/beacon/BeaconInfo;

    move-result-object v0

    return-object v0
.end method
