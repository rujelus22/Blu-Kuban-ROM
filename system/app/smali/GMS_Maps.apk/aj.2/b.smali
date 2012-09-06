.class public abstract Laj/B;
.super Laj/e;
.source "SourceFile"


# instance fields
.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:F


# direct methods
.method public constructor <init>(Laj/l;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Laj/e;-><init>(Laj/l;)V

    .line 51
    const v0, 0x3f490fdb

    iput v0, p0, Laj/B;->b:F

    .line 54
    const/high16 v0, 0x3e80

    iput v0, p0, Laj/B;->c:F

    .line 57
    const/high16 v0, 0x3e00

    iput v0, p0, Laj/B;->d:F

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Laj/B;->e:F

    .line 64
    return-void
.end method


# virtual methods
.method protected abstract a(F)F
.end method

.method protected abstract a(Laj/h;I)F
.end method

.method public a(JLjava/util/LinkedList;Ljava/util/List;)Laj/f;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    .line 92
    sget-object v0, Laj/f;->b:Laj/f;

    .line 146
    :goto_9
    return-object v0

    .line 95
    :cond_a
    const/4 v4, 0x0

    .line 96
    const/4 v3, 0x0

    .line 97
    const/4 v2, 0x0

    .line 98
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
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

    check-cast v0, Laj/h;

    .line 103
    invoke-virtual {v0}, Laj/h;->e()F

    move-result v7

    .line 104
    invoke-virtual {p0, v7}, Laj/B;->a(F)F

    move-result v7

    .line 108
    invoke-virtual {v0}, Laj/h;->f()F

    move-result v8

    invoke-virtual {v0}, Laj/h;->b()F

    move-result v9

    div-float/2addr v8, v9

    .line 109
    iget v9, p0, Laj/B;->b:F

    cmpl-float v7, v7, v9

    if-gez v7, :cond_41

    iget v7, p0, Laj/B;->c:F

    cmpg-float v7, v8, v7

    if-gez v7, :cond_44

    .line 111
    :cond_41
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_9

    .line 115
    :cond_44
    if-eqz v1, :cond_f3

    .line 116
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Laj/B;->a(Laj/h;I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, Laj/B;->a(Laj/h;I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v5, v7

    .line 117
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Laj/B;->b(Laj/h;I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, Laj/B;->b(Laj/h;I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    .line 118
    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Laj/B;->a(Laj/h;I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Laj/B;->a(Laj/h;I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v4, v7

    .line 119
    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Laj/B;->b(Laj/h;I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Laj/B;->b(Laj/h;I)F

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

    .line 122
    goto :goto_18

    .line 125
    :cond_90
    add-float v0, v5, v4

    add-float v1, v3, v2

    iget v2, p0, Laj/B;->e:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9f

    .line 126
    sget-object v0, Laj/f;->a:Laj/f;

    goto/16 :goto_9

    .line 130
    :cond_9f
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    .line 131
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laj/h;

    .line 132
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Laj/B;->b(Laj/h;I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Laj/B;->b(Laj/h;I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 133
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Laj/B;->b(Laj/h;I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Laj/B;->b(Laj/h;I)F

    move-result v0

    sub-float v0, v3, v0

    .line 136
    mul-float v3, v2, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_cd

    .line 137
    sget-object v0, Laj/f;->a:Laj/f;

    goto/16 :goto_9

    .line 141
    :cond_cd
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Laj/h;->c()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Laj/B;->d:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_eb

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v1}, Laj/h;->c()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Laj/B;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ef

    .line 143
    :cond_eb
    sget-object v0, Laj/f;->b:Laj/f;

    goto/16 :goto_9

    .line 146
    :cond_ef
    sget-object v0, Laj/f;->c:Laj/f;

    goto/16 :goto_9

    :cond_f3
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_8a
.end method

.method protected abstract b(Laj/h;I)F
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
