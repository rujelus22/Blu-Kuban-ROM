.class final Lcom/google/android/location/clientlib/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/location/clientlib/c;
    .registers 4
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/location/clientlib/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/clientlib/c;-><init>(Landroid/os/Parcel;Lcom/google/android/location/clientlib/d;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/location/clientlib/c;
    .registers 3
    .parameter

    .prologue
    .line 154
    new-array v0, p1, [Lcom/google/android/location/clientlib/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/location/clientlib/d;->a(Landroid/os/Parcel;)Lcom/google/android/location/clientlib/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/location/clientlib/d;->a(I)[Lcom/google/android/location/clientlib/c;

    move-result-object v0

    return-object v0
.end method
