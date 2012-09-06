.class final Landroid/support/v4/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/app/d;
    .registers 3
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/support/v4/app/d;

    invoke-direct {v0, p1}, Landroid/support/v4/app/d;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/app/d;
    .registers 3
    .parameter

    .prologue
    .line 161
    new-array v0, p1, [Landroid/support/v4/app/d;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->a(Landroid/os/Parcel;)Landroid/support/v4/app/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->a(I)[Landroid/support/v4/app/d;

    move-result-object v0

    return-object v0
.end method
