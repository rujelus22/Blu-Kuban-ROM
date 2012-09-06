.class public Lcom/google/googlenav/ui/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Vector;Ljava/lang/String;)Lcom/google/googlenav/ui/view/v;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 26
    .line 27
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 28
    new-instance v0, Lcom/google/googlenav/ui/be;

    invoke-direct {v0}, Lcom/google/googlenav/ui/be;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {p1, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    move-result-object v0

    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 33
    :goto_20
    new-instance v2, Lcom/google/googlenav/ui/view/v;

    new-instance v3, Lcom/google/googlenav/ui/be;

    invoke-direct {v3}, Lcom/google/googlenav/ui/be;-><init>()V

    const/16 v4, 0x6b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    move-result-object v3

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/google/googlenav/ui/view/v;-><init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;)V

    .line 40
    return-object v2

    :cond_45
    move-object v0, v1

    goto :goto_20
.end method
