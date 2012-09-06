.class public final Ldbxyzptlk/b/a;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Ldbxyzptlk/b/c;)Landroid/os/Parcelable$Creator;
    .registers 3
    .parameter

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_9

    .line 37
    invoke-static {p0}, Ldbxyzptlk/b/e;->a(Ldbxyzptlk/b/c;)Landroid/os/Parcelable$Creator;

    .line 39
    :cond_9
    new-instance v0, Ldbxyzptlk/b/b;

    invoke-direct {v0, p0}, Ldbxyzptlk/b/b;-><init>(Ldbxyzptlk/b/c;)V

    return-object v0
.end method
