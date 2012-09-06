.class final Landroid/support/place/rpc/EndpointInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/place/rpc/EndpointInfo;
    .registers 4
    .parameter

    .prologue
    .line 106
    new-instance v0, Landroid/support/place/rpc/EndpointInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/place/rpc/EndpointInfo;-><init>(Landroid/os/Parcel;Landroid/support/place/rpc/EndpointInfo$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/EndpointInfo$2;->createFromParcel(Landroid/os/Parcel;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Landroid/support/place/rpc/EndpointInfo;
    .registers 3
    .parameter

    .prologue
    .line 111
    new-array v0, p1, [Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/EndpointInfo$2;->newArray(I)[Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    return-object v0
.end method
