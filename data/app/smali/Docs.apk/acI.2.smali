.class public LacI;
.super Ljava/lang/Object;
.source "ConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gtalkservice/ConnectionState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionState;
    .registers 3
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionState;

    invoke-direct {v0, p1}, Lcom/google/android/gtalkservice/ConnectionState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/gtalkservice/ConnectionState;
    .registers 3
    .parameter

    .prologue
    .line 136
    new-array v0, p1, [Lcom/google/android/gtalkservice/ConnectionState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1}, LacI;->a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1}, LacI;->a(I)[Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    return-object v0
.end method
