.class final Landroid/support/v4/app/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackState;
    .registers 3
    .parameter

    .prologue
    .line 152
    new-instance v0, Landroid/support/v4/app/BackStackState;

    invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final a(I)[Landroid/support/v4/app/BackStackState;
    .registers 3
    .parameter

    .prologue
    .line 156
    new-array v0, p1, [Landroid/support/v4/app/BackStackState;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/support/v4/app/d;->a(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/support/v4/app/d;->a(I)[Landroid/support/v4/app/BackStackState;

    move-result-object v0

    return-object v0
.end method
