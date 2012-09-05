.class public LaA/C;
.super LaA/e;


# direct methods
.method public constructor <init>(LaA/l;)V
    .registers 2

    invoke-direct {p0, p1}, LaA/e;-><init>(LaA/l;)V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)LaA/f;
    .registers 14

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3e00

    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaA/h;

    invoke-virtual {v1}, LaA/h;->a()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    sget-object v0, LaA/f;->a:LaA/f;

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {v1, v7}, LaA/h;->a(I)F

    move-result v2

    invoke-virtual {v0, v7}, LaA/h;->a(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v7}, LaA/h;->b(I)F

    move-result v3

    invoke-virtual {v0, v7}, LaA/h;->b(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v8}, LaA/h;->a(I)F

    move-result v4

    invoke-virtual {v0, v8}, LaA/h;->a(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v8}, LaA/h;->b(I)F

    move-result v5

    invoke-virtual {v0, v8}, LaA/h;->b(I)F

    move-result v0

    sub-float v0, v5, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, LaA/h;->b()F

    move-result v5

    div-float/2addr v2, v5

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_77

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, LaA/h;->c()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_77

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, LaA/h;->b()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_77

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v1}, LaA/h;->c()F

    move-result v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v6

    if-lez v0, :cond_7a

    :cond_77
    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_1d

    :cond_7a
    sget-object v0, LaA/f;->c:LaA/f;

    goto :goto_1d
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected b(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/C;->a:LaA/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, LaA/l;->b(LaA/v;ZZ)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected d(LaA/j;)V
    .registers 5

    iget-object v0, p0, LaA/C;->a:LaA/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, LaA/l;->c(LaA/v;ZZ)V

    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected f(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/C;->a:LaA/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, LaA/l;->a(LaA/v;ZZ)Z

    move-result v0

    return v0
.end method
