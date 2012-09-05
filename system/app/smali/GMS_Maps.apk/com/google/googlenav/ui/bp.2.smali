.class public Lcom/google/googlenav/ui/bp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Vector;Ljava/lang/String;)Lbb/p;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    :goto_20
    new-instance v2, Lbb/p;

    new-instance v3, Lcom/google/googlenav/ui/bm;

    invoke-direct {v3}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v4, 0x62

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v3

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, v1}, Lbb/p;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    return-object v2

    :cond_45
    move-object v0, v1

    goto :goto_20
.end method

.method public static a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method
