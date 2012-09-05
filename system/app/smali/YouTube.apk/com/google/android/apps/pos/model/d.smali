.class final Lcom/google/android/apps/pos/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/pos/model/Plusone;

    invoke-direct {v0, p1}, Lcom/google/android/apps/pos/model/Plusone;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 16
    new-array v0, p1, [Lcom/google/android/apps/pos/model/Plusone;

    return-object v0
.end method
