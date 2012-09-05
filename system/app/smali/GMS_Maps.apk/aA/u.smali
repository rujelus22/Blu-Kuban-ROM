.class public LaA/u;
.super LaA/e;


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(LaA/l;Z)V
    .registers 3

    invoke-direct {p0, p1}, LaA/e;-><init>(LaA/l;)V

    iput-boolean p2, p0, LaA/u;->b:Z

    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)LaA/f;
    .registers 10

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    sget-object v0, LaA/f;->b:LaA/f;

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->e()F

    move-result v2

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->e()F

    move-result v0

    invoke-static {v2, v0}, LaA/u;->a(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3e32b8c2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_18

    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_9

    :cond_3a
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    const v0, 0x3dcccccd

    move v2, v0

    :goto_44
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaA/h;

    invoke-virtual {v1}, LaA/h;->f()F

    move-result v1

    invoke-virtual {v0}, LaA/h;->f()F

    move-result v3

    invoke-virtual {v0}, LaA/h;->b()F

    move-result v4

    invoke-virtual {v0}, LaA/h;->c()F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v0, v4

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, v1, v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_77

    sget-object v0, LaA/f;->b:LaA/f;

    goto :goto_9

    :cond_72
    const v0, 0x3e4ccccd

    move v2, v0

    goto :goto_44

    :cond_77
    sget-object v0, LaA/f;->c:LaA/f;

    goto :goto_9
.end method

.method protected b(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/u;->a:LaA/l;

    const/4 v1, 0x0

    iget-boolean v2, p0, LaA/u;->b:Z

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

    iget-object v0, p0, LaA/u;->a:LaA/l;

    const/4 v1, 0x0

    iget-boolean v2, p0, LaA/u;->b:Z

    invoke-interface {v0, p1, v1, v2}, LaA/l;->c(LaA/v;ZZ)V

    return-void
.end method

.method protected f(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/u;->a:LaA/l;

    const/4 v1, 0x0

    iget-boolean v2, p0, LaA/u;->b:Z

    invoke-interface {v0, p1, v1, v2}, LaA/l;->a(LaA/v;ZZ)Z

    move-result v0

    return v0
.end method
