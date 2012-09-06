.class public abstract Laj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Laj/l;

.field private b:Z


# direct methods
.method public constructor <init>(Laj/l;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Laj/e;->a:Laj/l;

    .line 42
    return-void
.end method

.method protected static a(FF)F
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 140
    cmpl-float v0, p1, p0

    if-ltz v0, :cond_15

    .line 150
    sub-float v0, p1, p0

    .line 151
    const-wide v1, 0x401921fb54442d18L

    float-to-double v3, p0

    add-double/2addr v1, v3

    float-to-double v3, p1

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 156
    :goto_14
    return v0

    :cond_15
    invoke-static {p1, p0}, Laj/e;->a(FF)F

    move-result v0

    neg-float v0, v0

    goto :goto_14
.end method


# virtual methods
.method protected abstract a(JLjava/util/LinkedList;Ljava/util/List;)Laj/f;
.end method

.method public a(JLjava/util/LinkedList;ZLjava/util/List;)Laj/f;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Laj/e;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 81
    sget-object v0, Laj/f;->a:Laj/f;

    .line 98
    :goto_e
    return-object v0

    .line 85
    :cond_f
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/e;

    .line 86
    invoke-virtual {v0}, Laj/e;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 89
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_e

    .line 94
    :cond_28
    invoke-virtual {p0}, Laj/e;->d()Z

    move-result v0

    if-eq p4, v0, :cond_31

    .line 95
    sget-object v0, Laj/f;->a:Laj/f;

    goto :goto_e

    .line 98
    :cond_31
    invoke-virtual {p0, p1, p2, p3, p5}, Laj/e;->a(JLjava/util/LinkedList;Ljava/util/List;)Laj/f;

    move-result-object v0

    goto :goto_e
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 161
    const/16 v0, 0x63

    invoke-static {v0, p1}, LaT/k;->a(ILjava/lang/String;)V

    .line 162
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Laj/e;->b:Z

    return v0
.end method

.method public a(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 106
    iget-boolean v0, p0, Laj/e;->b:Z

    if-eqz v0, :cond_25

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gesture already active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_25
    invoke-virtual {p0, p1}, Laj/e;->b(Laj/j;)Z

    move-result v0

    iput-boolean v0, p0, Laj/e;->b:Z

    .line 110
    iget-boolean v0, p0, Laj/e;->b:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b(Laj/j;)Z
.end method

.method public c(Laj/j;)V
    .registers 5
    .parameter

    .prologue
    .line 118
    iget-boolean v0, p0, Laj/e;->b:Z

    if-nez v0, :cond_25

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gesture already inactive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Laj/e;->b:Z

    .line 122
    invoke-virtual {p0, p1}, Laj/e;->d(Laj/j;)V

    .line 123
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract d(Laj/j;)V
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public e(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 130
    iget-boolean v0, p0, Laj/e;->b:Z

    if-nez v0, :cond_25

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gesture is not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_25
    invoke-virtual {p0, p1}, Laj/e;->f(Laj/j;)Z

    move-result v0

    return v0
.end method

.method protected abstract f(Laj/j;)Z
.end method
