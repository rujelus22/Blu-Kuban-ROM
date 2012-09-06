.class public Lacz;
.super Ljava/lang/Object;
.source "GoogleLoginCredentialsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gsf/GoogleLoginCredentialsResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .registers 4
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;Lacz;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .registers 3
    .parameter

    .prologue
    .line 133
    new-array v0, p1, [Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lacz;->a(Landroid/os/Parcel;)Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lacz;->a(I)[Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    move-result-object v0

    return-object v0
.end method
