.class final Lcom/google/android/finsky/billing/IabParameters$1;
.super Ljava/lang/Object;
.source "IabParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/IabParameters;
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
        "Lcom/google/android/finsky/billing/IabParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/IabParameters;
    .registers 7
    .parameter "parcel"

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 17
    .local v3, packageVersionCode:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, packageSignatureHash:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, developerPayload:Ljava/lang/String;
    new-instance v4, Lcom/google/android/finsky/billing/IabParameters;

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/google/android/finsky/billing/IabParameters;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/IabParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/IabParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/billing/IabParameters;
    .registers 3
    .parameter "i"

    .prologue
    .line 25
    new-array v0, p1, [Lcom/google/android/finsky/billing/IabParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/IabParameters$1;->newArray(I)[Lcom/google/android/finsky/billing/IabParameters;

    move-result-object v0

    return-object v0
.end method
