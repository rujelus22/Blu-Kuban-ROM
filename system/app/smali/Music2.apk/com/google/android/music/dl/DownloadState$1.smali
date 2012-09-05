.class final Lcom/google/android/music/dl/DownloadState$1;
.super Ljava/lang/Object;
.source "DownloadState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadState;
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
        "Lcom/google/android/music/dl/DownloadState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/dl/DownloadState;
    .registers 3
    .parameter "p"

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/music/dl/DownloadState;

    invoke-direct {v0, p1}, Lcom/google/android/music/dl/DownloadState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/dl/DownloadState;
    .registers 3
    .parameter "size"

    .prologue
    .line 92
    new-array v0, p1, [Lcom/google/android/music/dl/DownloadState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadState$1;->newArray(I)[Lcom/google/android/music/dl/DownloadState;

    move-result-object v0

    return-object v0
.end method
