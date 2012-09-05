.class final Lcom/google/android/finsky/navigationmanager/NavigationState$1;
.super Ljava/lang/Object;
.source "NavigationState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/navigationmanager/NavigationState;
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
        "Lcom/google/android/finsky/navigationmanager/NavigationState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/navigationmanager/NavigationState;
    .registers 4
    .parameter "in"

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/finsky/navigationmanager/NavigationState;->values()[Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/navigationmanager/NavigationState;
    .registers 3
    .parameter "size"

    .prologue
    .line 42
    new-array v0, p1, [Lcom/google/android/finsky/navigationmanager/NavigationState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationState$1;->newArray(I)[Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v0

    return-object v0
.end method
