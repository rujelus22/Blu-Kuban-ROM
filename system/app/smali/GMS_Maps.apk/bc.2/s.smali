.class public abstract Lbc/s;
.super Lbc/h;


# instance fields
.field protected d:Lau/u;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lbc/h;-><init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V

    if-eqz p3, :cond_b

    invoke-direct {p0}, Lbc/s;->A()V

    invoke-direct {p0}, Lbc/s;->C()V

    :cond_b
    return-void
.end method

.method private A()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbc/s;->g:Ljava/lang/String;

    iget-object v0, p0, Lbc/s;->g:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0x49a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lbc/s;->g:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbc/s;->g:Ljava/lang/String;

    iput-boolean v3, p0, Lbc/s;->f:Z

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->u()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x499

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v2}, Lau/s;->v()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbc/s;->g:Ljava/lang/String;

    goto :goto_2a
.end method

.method private C()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->p()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbc/s;->h:Ljava/lang/String;

    iget-object v0, p0, Lbc/s;->h:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0x49b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lbc/s;->h:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbc/s;->h:Ljava/lang/String;

    iput-boolean v3, p0, Lbc/s;->e:Z

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->q()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x49c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v2}, Lau/s;->r()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbc/s;->h:Ljava/lang/String;

    goto :goto_2a
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lbc/s;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Z
    .registers 2

    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->P()Z

    move-result v0

    return v0
.end method

.method public E()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-static {v0}, Lbc/h;->a(Lau/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lbc/s;->a:Lau/s;

    iget-object v1, p0, Lbc/s;->b:Lau/v;

    invoke-virtual {v0, v1}, Lau/s;->a(Lau/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()I
    .registers 3

    const/4 v0, -0x1

    iget-object v1, p0, Lbc/s;->d:Lau/u;

    iget v1, v1, Lau/u;->b:I

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbc/s;->d:Lau/u;

    iget v0, v0, Lau/u;->b:I

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->c(I)I

    move-result v0

    goto :goto_7
.end method

.method public H()I
    .registers 3

    const/4 v0, -0x1

    iget-object v1, p0, Lbc/s;->d:Lau/u;

    iget v1, v1, Lau/u;->c:I

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbc/s;->d:Lau/u;

    iget v0, v0, Lau/u;->c:I

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->c(I)I

    move-result v0

    goto :goto_7
.end method

.method public I()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/s;->d:Lau/u;

    iget-object v0, v0, Lau/u;->f:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/s;->d:Lau/u;

    iget-object v0, v0, Lau/u;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected K()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/s;->h:Ljava/lang/String;

    return-object v0
.end method

.method public M()Z
    .registers 2

    iget-boolean v0, p0, Lbc/s;->e:Z

    return v0
.end method

.method public N()Z
    .registers 2

    iget-boolean v0, p0, Lbc/s;->f:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/s;->d:Lau/u;

    iget-object v0, v0, Lau/u;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    iget-object v0, p0, Lbc/s;->d:Lau/u;

    iget-wide v0, v0, Lau/u;->h:J

    return-wide v0
.end method

.method public u()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->O()[Lau/t;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_11

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lau/t;->a()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lbc/s;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
