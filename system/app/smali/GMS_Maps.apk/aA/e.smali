.class public abstract LaA/e;
.super Ljava/lang/Object;


# instance fields
.field protected final a:LaA/l;

.field private b:Z


# direct methods
.method public constructor <init>(LaA/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaA/e;->a:LaA/l;

    return-void
.end method

.method protected static a(FF)F
    .registers 7

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_15

    sub-float v0, p1, p0

    const-wide v1, 0x401921fb54442d18L

    float-to-double v3, p0

    add-double/2addr v1, v3

    float-to-double v3, p1

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p1, p0}, LaA/e;->a(FF)F

    move-result v0

    neg-float v0, v0

    goto :goto_14
.end method


# virtual methods
.method protected abstract a(JLjava/util/LinkedList;Ljava/util/List;)LaA/f;
.end method

.method public a(JLjava/util/LinkedList;ZLjava/util/List;)LaA/f;
    .registers 8

    invoke-virtual {p0}, LaA/e;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, LaA/f;->a:LaA/f;

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/e;

    invoke-virtual {v0}, LaA/e;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_e

    :cond_28
    invoke-virtual {p0}, LaA/e;->d()Z

    move-result v0

    if-eq p4, v0, :cond_31

    sget-object v0, LaA/f;->a:LaA/f;

    goto :goto_e

    :cond_31
    invoke-virtual {p0, p1, p2, p3, p5}, LaA/e;->a(JLjava/util/LinkedList;Ljava/util/List;)LaA/f;

    move-result-object v0

    goto :goto_e
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x63

    invoke-static {v0, p1}, Laf/m;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, LaA/e;->b:Z

    return v0
.end method

.method public a(LaA/j;)Z
    .registers 5

    iget-boolean v0, p0, LaA/e;->b:Z

    if-eqz v0, :cond_25

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

    :cond_25
    invoke-virtual {p0, p1}, LaA/e;->b(LaA/j;)Z

    move-result v0

    iput-boolean v0, p0, LaA/e;->b:Z

    iget-boolean v0, p0, LaA/e;->b:Z

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b(LaA/j;)Z
.end method

.method public c(LaA/j;)V
    .registers 5

    iget-boolean v0, p0, LaA/e;->b:Z

    if-nez v0, :cond_25

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

    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, LaA/e;->b:Z

    invoke-virtual {p0, p1}, LaA/e;->d(LaA/j;)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract d(LaA/j;)V
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(LaA/j;)Z
    .registers 5

    iget-boolean v0, p0, LaA/e;->b:Z

    if-nez v0, :cond_25

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

    :cond_25
    invoke-virtual {p0, p1}, LaA/e;->f(LaA/j;)Z

    move-result v0

    return v0
.end method

.method protected abstract f(LaA/j;)Z
.end method
