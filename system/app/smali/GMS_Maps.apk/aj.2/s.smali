.class public Laj/s;
.super Laj/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Laj/l;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Laj/e;-><init>(Laj/l;)V

    .line 66
    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)Laj/f;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    .line 75
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/e;

    .line 76
    invoke-virtual {v0}, Laj/e;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    sget-object v0, Laj/f;->a:Laj/f;

    .line 121
    :goto_1a
    return-object v0

    .line 83
    :cond_1b
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_25

    .line 84
    sget-object v0, Laj/f;->b:Laj/f;

    goto :goto_1a

    .line 86
    :cond_25
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    .line 87
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laj/h;

    .line 90
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    const v2, 0x3db2b8c2

    .line 94
    :goto_3a
    invoke-virtual {v0}, Laj/h;->e()F

    move-result v3

    .line 95
    invoke-virtual {v1}, Laj/h;->e()F

    move-result v4

    .line 96
    invoke-static {v3, v4}, Laj/s;->a(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 97
    cmpg-float v2, v3, v2

    if-gez v2, :cond_55

    .line 98
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_1a

    .line 90
    :cond_51
    const v2, 0x3e32b8c2

    goto :goto_3a

    .line 102
    :cond_55
    invoke-virtual {v1}, Laj/h;->b()F

    move-result v2

    invoke-virtual {v1}, Laj/h;->c()F

    move-result v4

    add-float/2addr v2, v4

    mul-float/2addr v2, v5

    .line 103
    invoke-virtual {v1}, Laj/h;->f()F

    move-result v1

    div-float/2addr v1, v2

    .line 104
    const/high16 v4, 0x3f40

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6d

    .line 105
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_1a

    .line 110
    :cond_6d
    invoke-virtual {v0}, Laj/h;->f()F

    move-result v0

    div-float/2addr v0, v2

    .line 111
    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 112
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_90

    .line 113
    div-float v0, v3, v0

    .line 114
    cmpg-float v1, v0, v5

    if-gez v1, :cond_86

    .line 115
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_1a

    .line 116
    :cond_86
    const v1, 0x3f666666

    cmpg-float v0, v0, v1

    if-gez v0, :cond_90

    .line 117
    sget-object v0, Laj/f;->b:Laj/f;

    goto :goto_1a

    .line 121
    :cond_90
    sget-object v0, Laj/f;->c:Laj/f;

    goto :goto_1a
.end method

.method protected b(Laj/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 126
    const-string v0, "r"

    invoke-virtual {p0, v0}, Laj/s;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Laj/s;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->e(Laj/j;)Z

    move-result v0

    return v0
.end method

.method protected d(Laj/j;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Laj/s;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->f(Laj/j;)V

    .line 133
    return-void
.end method

.method protected f(Laj/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Laj/s;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->d(Laj/j;)Z

    move-result v0

    return v0
.end method
