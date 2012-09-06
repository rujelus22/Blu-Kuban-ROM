.class final Landroid/support/place/rpc/RpcData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/place/rpc/RpcData;
    .registers 3
    .parameter

    .prologue
    .line 538
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Landroid/support/place/rpc/RpcData;
    .registers 3
    .parameter

    .prologue
    .line 543
    new-array v0, p1, [Landroid/support/place/rpc/RpcData;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData$1;->newArray(I)[Landroid/support/place/rpc/RpcData;

    move-result-object v0

    return-object v0
.end method
