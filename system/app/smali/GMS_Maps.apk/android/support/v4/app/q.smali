.class final Landroid/support/v4/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/app/p;
    .registers 3
    .parameter

    .prologue
    .line 365
    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0, p1}, Landroid/support/v4/app/p;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/app/p;
    .registers 3
    .parameter

    .prologue
    .line 369
    new-array v0, p1, [Landroid/support/v4/app/p;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Landroid/support/v4/app/q;->a(Landroid/os/Parcel;)Landroid/support/v4/app/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Landroid/support/v4/app/q;->a(I)[Landroid/support/v4/app/p;

    move-result-object v0

    return-object v0
.end method
