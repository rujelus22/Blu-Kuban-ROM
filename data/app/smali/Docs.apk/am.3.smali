.class Lam;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"


# direct methods
.method static a(Lak;)Landroid/os/Parcelable$Creator;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lak",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lal;

    invoke-direct {v0, p0}, Lal;-><init>(Lak;)V

    return-object v0
.end method
