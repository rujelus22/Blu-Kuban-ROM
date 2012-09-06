.class final Landroid/support/place/connector/PlaceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/place/connector/PlaceInfo;
    .registers 3
    .parameter

    .prologue
    .line 130
    new-instance v0, Landroid/support/place/connector/PlaceInfo;

    invoke-direct {v0, p1}, Landroid/support/place/connector/PlaceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/support/place/connector/PlaceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Landroid/support/place/connector/PlaceInfo;
    .registers 3
    .parameter

    .prologue
    .line 135
    new-array v0, p1, [Landroid/support/place/connector/PlaceInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/support/place/connector/PlaceInfo$1;->newArray(I)[Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    return-object v0
.end method
