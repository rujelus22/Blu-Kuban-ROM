.class final Lcom/google/android/vending/model/Asset$1;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/model/Asset;
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
        "Lcom/google/android/vending/model/Asset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/vending/model/Asset;
    .registers 4
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 86
    new-instance v1, Lcom/google/android/vending/model/Asset;

    invoke-direct {v1, v0}, Lcom/google/android/vending/model/Asset;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/vending/model/Asset$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/vending/model/Asset;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/vending/model/Asset;
    .registers 3
    .parameter "size"

    .prologue
    .line 91
    new-array v0, p1, [Lcom/google/android/vending/model/Asset;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/vending/model/Asset$1;->newArray(I)[Lcom/google/android/vending/model/Asset;

    move-result-object v0

    return-object v0
.end method
