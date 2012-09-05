.class public LaA/s;
.super LaA/e;


# direct methods
.method public constructor <init>(LaA/l;)V
    .registers 2

    invoke-direct {p0, p1}, LaA/e;-><init>(LaA/l;)V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)LaA/f;
    .registers 11

    const/high16 v5, 0x3f00

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/e;

    invoke-virtual {v0}, LaA/e;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, LaA/f;->a:LaA/f;

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_25

    sget-object v0, LaA/f;->b:LaA/f;

    goto :goto_1a

    :cond_25
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaA/h;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    const v2, 0x3db2b8c2

    :goto_3a
    invoke-virtual {v0}, LaA/h;->e()F

    move-result v3

    invoke-virtual {v1}, LaA/h;->e()F

    move-result v4

    invoke-static {v3, v4}, LaA/s;->a(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_55

    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_1a

    :cond_51
    const v2, 0x3e32b8c2

    goto :goto_3a

    :cond_55
    invoke-virtual {v1}, LaA/h;->b()F

    move-result v2

    invoke-virtual {v1}, LaA/h;->c()F

    move-result v4

    add-float/2addr v2, v4

    mul-float/2addr v2, v5

    invoke-virtual {v1}, LaA/h;->f()F

    move-result v1

    div-float/2addr v1, v2

    const/high16 v4, 0x3f40

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6d

    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_1a

    :cond_6d
    invoke-virtual {v0}, LaA/h;->f()F

    move-result v0

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_90

    div-float v0, v3, v0

    cmpg-float v1, v0, v5

    if-gez v1, :cond_86

    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_1a

    :cond_86
    const v1, 0x3f666666

    cmpg-float v0, v0, v1

    if-gez v0, :cond_90

    sget-object v0, LaA/f;->b:LaA/f;

    goto :goto_1a

    :cond_90
    sget-object v0, LaA/f;->c:LaA/f;

    goto :goto_1a
.end method

.method protected b(LaA/j;)Z
    .registers 3

    const-string v0, "r"

    invoke-virtual {p0, v0}, LaA/s;->a(Ljava/lang/String;)V

    iget-object v0, p0, LaA/s;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->e(LaA/j;)Z

    move-result v0

    return v0
.end method

.method protected d(LaA/j;)V
    .registers 3

    iget-object v0, p0, LaA/s;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->f(LaA/j;)V

    return-void
.end method

.method protected f(LaA/j;)Z
    .registers 3

    iget-object v0, p0, LaA/s;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->d(LaA/j;)Z

    move-result v0

    return v0
.end method
