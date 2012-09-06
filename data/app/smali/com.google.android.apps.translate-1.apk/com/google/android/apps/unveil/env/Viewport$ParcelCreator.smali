.class Lcom/google/android/apps/unveil/env/Viewport$ParcelCreator;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/apps/unveil/env/Viewport;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/env/Viewport$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/Viewport$ParcelCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/unveil/env/Viewport;
    .registers 5
    .parameter "source"

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .local v0, naturalOrientation:I
    new-instance v1, Lcom/google/android/apps/unveil/env/Viewport;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/env/Viewport;-><init>(I)V

    .line 386
    .local v1, viewport:Lcom/google/android/apps/unveil/env/Viewport;
    const-class v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/Viewport;->setLatestBarcodeQueryCrop(Landroid/graphics/Rect;)V

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/Viewport;->setLatestBarcodeQueryRotation(I)V

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/Viewport;->setPreviewSize(Lcom/google/android/apps/unveil/env/Size;)V

    .line 389
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/Viewport$ParcelCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/unveil/env/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/apps/unveil/env/Viewport;
    .registers 3
    .parameter "size"

    .prologue
    .line 394
    new-array v0, p1, [Lcom/google/android/apps/unveil/env/Viewport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/Viewport$ParcelCreator;->newArray(I)[Lcom/google/android/apps/unveil/env/Viewport;

    move-result-object v0

    return-object v0
.end method
