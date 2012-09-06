.class public LcJ;
.super Ljava/lang/Object;
.source "GuiceUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Lans;
    .registers 3
    .parameter

    .prologue
    .line 33
    instance-of v0, p0, LcK;

    if-nez v0, :cond_c

    .line 34
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Context must be InjectorProvider"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 37
    :cond_c
    check-cast p0, LcK;

    invoke-interface {p0}, LcK;->a()Lans;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-static {p0}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    .line 47
    invoke-static {v0, p0}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static a(Lans;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    const-class v0, Lck;

    invoke-interface {p0, v0}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    .line 23
    invoke-interface {v0, p1}, Lck;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method
