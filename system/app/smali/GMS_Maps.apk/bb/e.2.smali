.class public abstract Lbb/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbb/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbb/e;
    .registers 1

    sget-object v0, Lbb/e;->a:Lbb/e;

    return-object v0
.end method

.method public static a(Lbb/e;)V
    .registers 1

    sput-object p0, Lbb/e;->a:Lbb/e;

    return-void
.end method


# virtual methods
.method public abstract a(ILbb/c;Ljava/lang/String;)Lbb/d;
.end method

.method public a(Lau/b;Lcom/google/googlenav/ui/p;Z)Lbb/d;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;
.end method

.method public a(Lcom/google/googlenav/ui/bl;Lbb/c;ZLaJ/B;)Lbb/d;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;
    .registers 8

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v1}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p2, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    iget v1, p1, Lcom/google/googlenav/ui/bl;->k:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(I)Lcom/google/googlenav/ui/bm;

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->b(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    iget v1, p1, Lcom/google/googlenav/ui/bl;->r:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/bm;

    iget v1, p1, Lcom/google/googlenav/ui/bl;->u:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->e(I)Lcom/google/googlenav/ui/bm;

    iget-boolean v1, p1, Lcom/google/googlenav/ui/bl;->v:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Z)Lcom/google/googlenav/ui/bm;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->b()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    :cond_4a
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->d()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->g(I)Lcom/google/googlenav/ui/bm;

    :cond_57
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public abstract a(II)V
.end method

.method public a(Lcom/google/googlenav/ui/bh;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public abstract c()Lcom/google/googlenav/ui/android/ButtonContainer;
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method
