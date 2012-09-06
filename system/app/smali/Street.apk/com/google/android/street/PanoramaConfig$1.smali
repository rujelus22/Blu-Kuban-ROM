.class final Lcom/google/android/street/PanoramaConfig$1;
.super Ljava/lang/Object;
.source "PanoramaConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/PanoramaConfig;
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
        "Lcom/google/android/street/PanoramaConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/street/PanoramaConfig;
    .registers 3
    .parameter "parcel"

    .prologue
    .line 628
    new-instance v0, Lcom/google/android/street/PanoramaConfig;

    invoke-direct {v0, p1}, Lcom/google/android/street/PanoramaConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/google/android/street/PanoramaConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/street/PanoramaConfig;
    .registers 3
    .parameter "size"

    .prologue
    .line 632
    new-array v0, p1, [Lcom/google/android/street/PanoramaConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/google/android/street/PanoramaConfig$1;->newArray(I)[Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    return-object v0
.end method
