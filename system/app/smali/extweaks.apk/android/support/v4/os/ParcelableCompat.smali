.class public Landroid/support/v4/os/ParcelableCompat;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_b

    .line 37
    new-instance v0, Landroid/support/v4/os/b;

    invoke-direct {v0, p0}, Landroid/support/v4/os/b;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    .line 39
    :cond_b
    new-instance v0, Landroid/support/v4/os/a;

    invoke-direct {v0, p0}, Landroid/support/v4/os/a;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
