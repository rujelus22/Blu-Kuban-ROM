.class final Lcom/sec/android/app/FileTransferClient/Data/ResultData$1;
.super Ljava/lang/Object;
.source "ResultData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/Data/ResultData;
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
        "Lcom/sec/android/app/FileTransferClient/Data/ResultData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .registers 3
    .parameter "in"

    .prologue
    .line 127
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v0, p1}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferClient/Data/ResultData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .registers 3
    .parameter "size"

    .prologue
    .line 132
    new-array v0, p1, [Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferClient/Data/ResultData$1;->newArray(I)[Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    move-result-object v0

    return-object v0
.end method
