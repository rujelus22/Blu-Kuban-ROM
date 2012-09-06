.class public final Lcom/google/googlenav/friend/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/bk;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/googlenav/friend/au;->b(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/au;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/v;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lcom/google/googlenav/friend/history/v;->a()V

    .line 88
    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_6
    const/16 v1, 0x155

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/v;->a(ZI)V

    .line 90
    return-void

    .line 88
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 42
    invoke-static {}, Lcom/google/googlenav/friend/E;->k()Z

    move-result v0

    return v0
.end method

.method public static b()Lcom/google/googlenav/friend/bk;
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/googlenav/friend/E;->i()Lcom/google/googlenav/friend/E;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/googlenav/friend/au;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()I
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/googlenav/friend/au;->q()I

    move-result v0

    return v0
.end method

.method public static e()Lcom/google/googlenav/friend/bk;
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Lcom/google/googlenav/friend/au;->i()Lcom/google/googlenav/friend/au;

    move-result-object v0

    return-object v0
.end method
