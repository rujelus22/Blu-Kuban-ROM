.class final Lcom/android/emailcommon/provider/Policy$1;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/Policy;
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
        "Lcom/android/emailcommon/provider/Policy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/Policy;
    .registers 3
    .parameter "in"

    .prologue
    .line 476
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/Policy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Policy$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/provider/Policy;
    .registers 3
    .parameter "size"

    .prologue
    .line 480
    new-array v0, p1, [Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Policy$1;->newArray(I)[Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    return-object v0
.end method
