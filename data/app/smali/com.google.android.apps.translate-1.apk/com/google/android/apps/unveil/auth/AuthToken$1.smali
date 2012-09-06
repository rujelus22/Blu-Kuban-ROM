.class final Lcom/google/android/apps/unveil/auth/AuthToken$1;
.super Ljava/lang/Object;
.source "AuthToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/auth/AuthToken;
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
        "Lcom/google/android/apps/unveil/auth/AuthToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/unveil/auth/AuthToken;
    .registers 6
    .parameter "source"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, tokenTypeName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, value:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    move-result-object v0

    .line 98
    .local v0, tokenType:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;
    new-instance v3, Lcom/google/android/apps/unveil/auth/AuthToken;

    invoke-direct {v3, v0, v2}, Lcom/google/android/apps/unveil/auth/AuthToken;-><init>(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/auth/AuthToken$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/unveil/auth/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/apps/unveil/auth/AuthToken;
    .registers 3
    .parameter "size"

    .prologue
    .line 103
    new-array v0, p1, [Lcom/google/android/apps/unveil/auth/AuthToken;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/auth/AuthToken$1;->newArray(I)[Lcom/google/android/apps/unveil/auth/AuthToken;

    move-result-object v0

    return-object v0
.end method
