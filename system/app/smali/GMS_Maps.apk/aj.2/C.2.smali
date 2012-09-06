.class public Laj/C;
.super Laj/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Laj/l;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Laj/e;-><init>(Laj/l;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)Laj/f;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3e00

    .line 48
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    .line 49
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laj/h;

    .line 52
    invoke-virtual {v1}, Laj/h;->a()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 53
    sget-object v0, Laj/f;->a:Laj/f;

    .line 70
    :goto_1d
    return-object v0

    .line 59
    :cond_1e
    invoke-virtual {v1, v7}, Laj/h;->a(I)F

    move-result v2

    invoke-virtual {v0, v7}, Laj/h;->a(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 60
    invoke-virtual {v1, v7}, Laj/h;->b(I)F

    move-result v3

    invoke-virtual {v0, v7}, Laj/h;->b(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 61
    invoke-virtual {v1, v8}, Laj/h;->a(I)F

    move-result v4

    invoke-virtual {v0, v8}, Laj/h;->a(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 62
    invoke-virtual {v1, v8}, Laj/h;->b(I)F

    move-result v5

    invoke-virtual {v0, v8}, Laj/h;->b(I)F

    move-result v0

    sub-float v0, v5, v0

    .line 63
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Laj/h;->b()F

    move-result v5

    div-float/2addr v2, v5

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_77

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Laj/h;->c()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_77

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Laj/h;->b()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_77

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v1}, Laj/h;->c()F

    move-result v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v6

    if-lez v0, :cond_7a

    .line 67
    :cond_77
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_1d

    .line 70
    :cond_7a
    sget-object v0, Laj/f;->c:Laj/f;

    goto :goto_1d
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Laj/C;->a:Laj/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Laj/l;->b(Laj/v;ZZ)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method protected d(Laj/j;)V
    .registers 5
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Laj/C;->a:Laj/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Laj/l;->c(Laj/v;ZZ)V

    .line 81
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method protected f(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Laj/C;->a:Laj/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Laj/l;->a(Laj/v;ZZ)Z

    move-result v0

    return v0
.end method
