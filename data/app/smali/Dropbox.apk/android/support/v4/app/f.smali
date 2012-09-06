.class final Landroid/support/v4/app/f;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;
    .registers 4
    .parameter

    .prologue
    .line 315
    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final a(I)[Landroid/support/v4/app/Fragment$SavedState;
    .registers 3
    .parameter

    .prologue
    .line 319
    new-array v0, p1, [Landroid/support/v4/app/Fragment$SavedState;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->a(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->a(I)[Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
