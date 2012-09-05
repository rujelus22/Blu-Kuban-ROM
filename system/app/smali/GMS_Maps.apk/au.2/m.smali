.class public Lau/m;
.super Ljava/lang/Object;

# interfaces
.implements Lar/m;
.implements Lcom/google/googlenav/D;


# instance fields
.field protected a:Lau/a;

.field private b:Lau/s;

.field private c:I

.field private d:I

.field private e:I

.field private f:LaJ/B;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lau/s;IIILaJ/B;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lau/m;->i:Z

    iput-object p1, p0, Lau/m;->b:Lau/s;

    iput p2, p0, Lau/m;->e:I

    iput p3, p0, Lau/m;->c:I

    iput p4, p0, Lau/m;->d:I

    iput-object p5, p0, Lau/m;->f:LaJ/B;

    iput-object p6, p0, Lau/m;->g:Ljava/lang/String;

    iput v0, p0, Lau/m;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lau/m;->a:Lau/a;

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    iget-boolean v0, p0, Lau/m;->i:Z

    return v0
.end method

.method public a()LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/m;->f:LaJ/B;

    return-object v0
.end method

.method public a(LaJ/B;)V
    .registers 2

    iput-object p1, p0, Lau/m;->f:LaJ/B;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lau/m;->i:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lau/m;->b:Lau/s;

    invoke-virtual {v0}, Lau/s;->h()Lt/y;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v0

    goto :goto_c
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lau/m;->h:I

    return-void
.end method

.method public c()B
    .registers 4

    const/4 v0, 0x3

    iget v1, p0, Lau/m;->e:I

    if-nez v1, :cond_c

    iget v1, p0, Lau/m;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v0, 0x4

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lau/m;->c:I

    if-ne v1, v0, :cond_b

    const/4 v0, 0x5

    goto :goto_b
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public g()Lar/k;
    .registers 4

    iget-object v0, p0, Lau/m;->b:Lau/s;

    invoke-virtual {v0}, Lau/s;->G()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    iget-object v1, p0, Lau/m;->g:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lau/m;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    new-instance v1, Lar/k;

    const-string v2, "DirectionsFeature"

    invoke-direct {v1, v2, v0}, Lar/k;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lau/m;->c:I

    return v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lau/m;->d:I

    return v0
.end method

.method public m()Lau/s;
    .registers 2

    iget-object v0, p0, Lau/m;->b:Lau/s;

    return-object v0
.end method

.method public n()Z
    .registers 3

    iget-object v0, p0, Lau/m;->b:Lau/s;

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public o()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lau/m;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public p()Z
    .registers 3

    iget v0, p0, Lau/m;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public q()Z
    .registers 2

    iget v0, p0, Lau/m;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public r()Z
    .registers 3

    iget v0, p0, Lau/m;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public s()Z
    .registers 3

    iget v0, p0, Lau/m;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .registers 2

    invoke-virtual {p0}, Lau/m;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public v()Z
    .registers 2

    iget-object v0, p0, Lau/m;->a:Lau/a;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lau/m;->n()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lau/m;->h:I

    return v0
.end method

.method public x()Z
    .registers 2

    iget v0, p0, Lau/m;->h:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public y()I
    .registers 2

    iget v0, p0, Lau/m;->e:I

    return v0
.end method

.method public z()Lau/a;
    .registers 2

    iget-object v0, p0, Lau/m;->a:Lau/a;

    return-object v0
.end method
