.class public Laj/u;
.super Laj/e;
.source "SourceFile"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Laj/l;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Laj/e;-><init>(Laj/l;)V

    .line 66
    iput-boolean p2, p0, Laj/u;->b:Z

    .line 67
    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)Laj/f;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    .line 83
    sget-object v0, Laj/f;->b:Laj/f;

    .line 111
    :goto_9
    return-object v0

    .line 87
    :cond_a
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    invoke-virtual {v0}, Laj/h;->e()F

    move-result v2

    .line 89
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    .line 91
    invoke-virtual {v0}, Laj/h;->e()F

    move-result v0

    invoke-static {v2, v0}, Laj/u;->a(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3e32b8c2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_18

    .line 93
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_9

    .line 98
    :cond_3a
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    const v0, 0x3dcccccd

    move v2, v0

    .line 102
    :goto_44
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    .line 103
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laj/h;

    invoke-virtual {v1}, Laj/h;->f()F

    move-result v1

    .line 104
    invoke-virtual {v0}, Laj/h;->f()F

    move-result v3

    .line 105
    invoke-virtual {v0}, Laj/h;->b()F

    move-result v4

    invoke-virtual {v0}, Laj/h;->c()F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v0, v4

    .line 106
    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, v1, v0

    .line 107
    cmpg-float v0, v0, v2

    if-gez v0, :cond_77

    .line 108
    sget-object v0, Laj/f;->b:Laj/f;

    goto :goto_9

    .line 98
    :cond_72
    const v0, 0x3e4ccccd

    move v2, v0

    goto :goto_44

    .line 111
    :cond_77
    sget-object v0, Laj/f;->c:Laj/f;

    goto :goto_9
.end method

.method protected b(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Laj/u;->a:Laj/l;

    const/4 v1, 0x0

    iget-boolean v2, p0, Laj/u;->b:Z

    invoke-interface {v0, p1, v1, v2}, Laj/l;->b(Laj/v;ZZ)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected d(Laj/j;)V
    .registers 5
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Laj/u;->a:Laj/l;

    const/4 v1, 0x0

    iget-boolean v2, p0, Laj/u;->b:Z

    invoke-interface {v0, p1, v1, v2}, Laj/l;->c(Laj/v;ZZ)V

    .line 122
    return-void
.end method

.method protected f(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Laj/u;->a:Laj/l;

    const/4 v1, 0x0

    iget-boolean v2, p0, Laj/u;->b:Z

    invoke-interface {v0, p1, v1, v2}, Laj/l;->a(Laj/v;ZZ)Z

    move-result v0

    return v0
.end method
