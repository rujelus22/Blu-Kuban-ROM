.class final Lcom/android/athome/picker/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/android/athome/picker/MediaOutput;

    invoke-direct {v0, p1}, Lcom/android/athome/picker/MediaOutput;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 68
    new-array v0, p1, [Lcom/android/athome/picker/MediaOutput;

    return-object v0
.end method
