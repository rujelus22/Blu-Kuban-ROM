.class public LacH;
.super Ljava/lang/Object;
.source "ConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gtalkservice/ConnectionError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionError;
    .registers 3
    .parameter

    .prologue
    .line 162
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError;

    invoke-direct {v0, p1}, Lcom/google/android/gtalkservice/ConnectionError;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/gtalkservice/ConnectionError;
    .registers 3
    .parameter

    .prologue
    .line 166
    new-array v0, p1, [Lcom/google/android/gtalkservice/ConnectionError;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, LacH;->a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, LacH;->a(I)[Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    return-object v0
.end method
