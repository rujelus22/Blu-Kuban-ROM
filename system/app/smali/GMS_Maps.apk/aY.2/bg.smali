.class public LaY/bg;
.super Ljava/lang/Object;

# interfaces
.implements LaY/r;


# instance fields
.field private a:LaY/bh;


# direct methods
.method public constructor <init>(LaY/bh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/bg;->a:LaY/bh;

    return-void
.end method

.method private b()Lau/b;
    .registers 2

    iget-object v0, p0, LaY/bg;->a:LaY/bh;

    invoke-virtual {v0}, LaY/bh;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lau/b;

    return-object v0
.end method

.method private c()I
    .registers 2

    invoke-direct {p0}, LaY/bg;->b()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aI()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lbb/d;
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, LaY/bg;->a:LaY/bh;

    invoke-virtual {v0}, LaY/bh;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v2

    invoke-direct {p0}, LaY/bg;->b()Lau/b;

    move-result-object v1

    invoke-direct {p0}, LaY/bg;->c()I

    move-result v3

    invoke-static {v1, v3, v0, v4, v5}, LaY/B;->a(Lau/b;IIZZ)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v4, :cond_2f

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v1, p0, LaY/bg;->a:LaY/bh;

    invoke-virtual {v2, v0, v1, v4}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bl;

    iget-object v3, p0, LaY/bg;->a:LaY/bh;

    invoke-virtual {v2, v0, v1, v3, v4}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    goto :goto_2e
.end method
