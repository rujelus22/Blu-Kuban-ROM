.class public abstract LaA/B;
.super LaA/e;


# instance fields
.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:F


# direct methods
.method public constructor <init>(LaA/l;)V
    .registers 3

    invoke-direct {p0, p1}, LaA/e;-><init>(LaA/l;)V

    const v0, 0x3f490fdb

    iput v0, p0, LaA/B;->b:F

    const/high16 v0, 0x3e80

    iput v0, p0, LaA/B;->c:F

    const/high16 v0, 0x3e00

    iput v0, p0, LaA/B;->d:F

    const/high16 v0, 0x3f80

    iput v0, p0, LaA/B;->e:F

    return-void
.end method


# virtual methods
.method protected abstract a(F)F
.end method

.method protected abstract a(LaA/h;I)F
.end method

.method public a(JLjava/util/LinkedList;Ljava/util/List;)LaA/f;
    .registers 15

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    sget-object v0, LaA/f;->b:LaA/f;

    :goto_9
    return-object v0

    :cond_a
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->e()F

    move-result v7

    invoke-virtual {p0, v7}, LaA/B;->a(F)F

    move-result v7

    invoke-virtual {v0}, LaA/h;->f()F

    move-result v8

    invoke-virtual {v0}, LaA/h;->b()F

    move-result v9

    div-float/2addr v8, v9

    iget v9, p0, LaA/B;->b:F

    cmpl-float v7, v7, v9

    if-gez v7, :cond_41

    iget v7, p0, LaA/B;->c:F

    cmpg-float v7, v8, v7

    if-gez v7, :cond_44

    :cond_41
    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_9

    :cond_44
    if-eqz v1, :cond_f3

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, LaA/B;->a(LaA/h;I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, LaA/B;->a(LaA/h;I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, LaA/B;->b(LaA/h;I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, LaA/B;->b(LaA/h;I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, LaA/B;->a(LaA/h;I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, LaA/B;->a(LaA/h;I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v4, v7

    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, LaA/B;->b(LaA/h;I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, LaA/B;->b(LaA/h;I)F

    move-result v1

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_8a
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_18

    :cond_90
    add-float v0, v5, v4

    add-float v1, v3, v2

    iget v2, p0, LaA/B;->e:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9f

    sget-object v0, LaA/f;->a:LaA/f;

    goto/16 :goto_9

    :cond_9f
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaA/h;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaA/B;->b(LaA/h;I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, LaA/B;->b(LaA/h;I)F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, LaA/B;->b(LaA/h;I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, LaA/B;->b(LaA/h;I)F

    move-result v0

    sub-float v0, v3, v0

    mul-float v3, v2, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_cd

    sget-object v0, LaA/f;->a:LaA/f;

    goto/16 :goto_9

    :cond_cd
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, LaA/h;->c()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, LaA/B;->d:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_eb

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v1}, LaA/h;->c()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, LaA/B;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ef

    :cond_eb
    sget-object v0, LaA/f;->b:LaA/f;

    goto/16 :goto_9

    :cond_ef
    sget-object v0, LaA/f;->c:LaA/f;

    goto/16 :goto_9

    :cond_f3
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_8a
.end method

.method protected abstract b(LaA/h;I)F
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
