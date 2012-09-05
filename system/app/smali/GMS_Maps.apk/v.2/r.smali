.class public Lv/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private volatile b:Lv/t;

.field private final c:Lw/b;

.field private final d:Lv/e;

.field private final e:Lv/a;

.field private final f:Lv/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx/ay;Ljava/lang/Thread;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lv/r;->a:Ljava/lang/Thread;

    new-instance v0, Lw/b;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lw/b;-><init>(Lx/ay;Z)V

    iput-object v0, p0, Lv/r;->c:Lw/b;

    new-instance v0, Lv/a;

    iget-object v1, p0, Lv/r;->c:Lw/b;

    invoke-direct {v0, p1, v1}, Lv/a;-><init>(Landroid/content/Context;Lw/b;)V

    iput-object v0, p0, Lv/r;->e:Lv/a;

    new-instance v0, Lv/e;

    iget-object v1, p0, Lv/r;->c:Lw/b;

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v2

    invoke-virtual {v2}, Lz/l;->C()Lz/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lv/e;-><init>(Lw/b;Lz/m;)V

    iput-object v0, p0, Lv/r;->d:Lv/e;

    new-instance v0, Lv/x;

    iget-object v1, p0, Lv/r;->c:Lw/b;

    invoke-direct {v0, v1}, Lv/x;-><init>(Lw/b;)V

    iput-object v0, p0, Lv/r;->f:Lv/x;

    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Lt/V;
    .registers 7

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v3, v0, [Lt/L;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lv/d;->b:Lt/L;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_11

    :cond_25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lv/d;->b:Lt/L;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_29

    :cond_3d
    invoke-static {v3}, Lt/V;->a([Lt/L;)Lt/V;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v0, v0, Lv/d;->b:Lt/L;

    invoke-virtual {v0}, Lt/L;->e()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v2

    invoke-virtual {v2}, Lz/l;->C()Lz/m;

    move-result-object v2

    invoke-virtual {v2}, Lz/m;->a()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lt/V;->b(I)Lt/V;

    move-result-object v0

    return-object v0
.end method

.method private final b()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lv/r;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be called on RouteFinderThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lv/r;->f:Lv/x;

    invoke-virtual {v0}, Lv/x;->a()V

    return-void
.end method

.method public a(Ls/b;Lu/x;)V
    .registers 6

    invoke-direct {p0}, Lv/r;->b()V

    iget-object v0, p0, Lv/r;->b:Lv/t;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1, p2}, Lv/r;->b(Ls/b;Lu/x;)Lv/s;

    move-result-object v0

    iget-object v1, p0, Lv/r;->b:Lv/t;

    iget-object v2, v0, Lv/s;->a:Lu/x;

    iget v0, v0, Lv/s;->b:I

    invoke-interface {v1, v2, v0}, Lv/t;->a(Lu/x;I)V

    goto :goto_7
.end method

.method public a(Lv/t;)V
    .registers 2

    iput-object p1, p0, Lv/r;->b:Lv/t;

    return-void
.end method

.method public b(Ls/b;Lu/x;)Lv/s;
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lv/r;->b()V

    iget-object v0, p0, Lv/r;->c:Lw/b;

    invoke-virtual {v0, v4}, Lw/b;->a(Lt/V;)V

    iget-object v0, p0, Lv/r;->d:Lv/e;

    invoke-virtual {v0, p1}, Lv/e;->a(Ls/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Lv/s;

    invoke-direct {v0, v4, v3}, Lv/s;-><init>(Lu/x;I)V

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lv/r;->d:Lv/e;

    invoke-virtual {v0, p1, p2}, Lv/e;->a(Ls/b;Lu/x;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lv/s;

    invoke-direct {v0, v4, v3}, Lv/s;-><init>(Lu/x;I)V

    goto :goto_1b

    :cond_2e
    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    goto :goto_38

    :cond_45
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    goto :goto_49

    :cond_56
    invoke-static {v1, v2}, Lv/r;->a(Ljava/util/Collection;Ljava/util/Collection;)Lt/V;

    move-result-object v0

    iget-object v3, p0, Lv/r;->c:Lw/b;

    invoke-virtual {v3, v0}, Lw/b;->a(Lt/V;)V

    iget-object v0, p0, Lv/r;->f:Lv/x;

    invoke-virtual {v0, v1, v2}, Lv/x;->a(Ljava/util/Collection;Ljava/util/Collection;)Lv/A;

    move-result-object v0

    if-nez v0, :cond_6e

    new-instance v0, Lv/s;

    const/4 v1, 0x2

    invoke-direct {v0, v4, v1}, Lv/s;-><init>(Lu/x;I)V

    goto :goto_1b

    :cond_6e
    new-instance v1, Lu/P;

    invoke-virtual {p1}, Ls/b;->m()Lt/o;

    move-result-object v2

    invoke-direct {v1, v2}, Lu/P;-><init>(Lt/o;)V

    iget-object v2, p0, Lv/r;->e:Lv/a;

    invoke-virtual {v2, v0, v1, p2}, Lv/a;->a(Lv/A;Lu/P;Lu/x;)Lu/x;

    move-result-object v1

    new-instance v0, Lv/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv/s;-><init>(Lu/x;I)V

    goto :goto_1b
.end method
