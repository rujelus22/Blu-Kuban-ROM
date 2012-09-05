.class public LaY/z;
.super Ljava/lang/Object;

# interfaces
.implements LaY/r;


# instance fields
.field private a:LaY/G;


# direct methods
.method public constructor <init>(LaY/G;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/z;->a:LaY/G;

    return-void
.end method

.method private a(IZZ)Ljava/util/Vector;
    .registers 6

    invoke-direct {p0}, LaY/z;->c()Lau/b;

    move-result-object v0

    invoke-direct {p0}, LaY/z;->b()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, LaY/B;->a(Lau/b;IIZZ)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .registers 2

    invoke-direct {p0}, LaY/z;->c()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aI()I

    move-result v0

    return v0
.end method

.method private c()Lau/b;
    .registers 2

    iget-object v0, p0, LaY/z;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lau/b;

    return-object v0
.end method


# virtual methods
.method public a()Lbb/d;
    .registers 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, LaY/z;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v2

    iget-object v1, p0, LaY/z;->a:LaY/G;

    invoke-virtual {v1}, LaY/G;->bs()Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0xf1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, LaY/B;->a(Z)Lcom/google/googlenav/ui/bg;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    iget-object v1, p0, LaY/z;->a:LaY/G;

    invoke-virtual {v2, v0, v1, v4}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    invoke-direct {p0, v0, v4, v3}, LaY/z;->a(IZZ)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v4, :cond_51

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v1, p0, LaY/z;->a:LaY/G;

    invoke-virtual {v2, v0, v1, v4}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    goto :goto_39

    :cond_51
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bl;

    iget-object v3, p0, LaY/z;->a:LaY/G;

    invoke-virtual {v2, v0, v1, v3, v4}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    goto :goto_39
.end method
