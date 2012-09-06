.class public LXx;
.super Ljava/lang/Object;
.source "BundleUtility.java"


# direct methods
.method public static a(Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/Integer;

    invoke-static {v1}, LafQ;->b(Z)V

    .line 32
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p0, p1}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    instance-of v1, v0, Ljava/lang/String;

    invoke-static {v1}, LafQ;->b(Z)V

    .line 45
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)[I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {p0, p1}, LXx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    instance-of v1, v0, [I

    invoke-static {v1}, LafQ;->b(Z)V

    .line 58
    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method
