.class public Lw/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# instance fields
.field private b:Lx/ay;

.field private c:Lx/N;

.field private d:Lt/V;

.field private e:Lt/af;

.field private f:Lt/af;


# direct methods
.method public constructor <init>(Lx/ay;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->b:Lx/ay;

    new-instance v0, Lx/N;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lx/N;-><init>(I)V

    iput-object v0, p0, Lw/b;->c:Lx/N;

    sput-boolean p2, Lw/b;->a:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v3, p0, Lw/b;->c:Lx/N;

    invoke-virtual {v3, v0}, Lx/N;->c(Lt/af;)Lt/ae;

    move-result-object v3

    if-nez v3, :cond_2e

    iget-object v3, p0, Lw/b;->b:Lx/ay;

    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget-object v5, p0, Lw/b;->c:Lx/N;

    invoke-virtual {v5, v0, v3}, Lx/N;->a(Lt/af;Lt/ae;)V

    :cond_2e
    if-eqz v3, :cond_3d

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :goto_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_3d
    const-string v3, "RoadGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetTiles: couldn\'t load tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_56
    if-nez p2, :cond_a4

    new-instance v1, Lx/c;

    invoke-direct {v1, v2}, Lx/c;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_61
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    if-eqz v0, :cond_61

    iget-object v3, p0, Lw/b;->b:Lx/ay;

    invoke-interface {v3, v0, v1}, Lx/ay;->a(Lt/af;Lx/aw;)V

    goto :goto_61

    :cond_75
    const-wide/16 v2, 0x4e20

    :try_start_77
    invoke-virtual {v1, v2, v3}, Lx/c;->a(J)Z
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7a} :catch_9b

    :goto_7a
    invoke-virtual {v1}, Lx/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ae;

    iget-object v2, p0, Lw/b;->c:Lx/N;

    invoke-interface {v0}, Lt/ae;->d()Lt/af;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lx/N;->a(Lt/af;Lt/ae;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :catch_9b
    move-exception v0

    const-string v0, "RoadGraph"

    const-string v2, "Interupted while waiting for tiles"

    invoke-static {v0, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :cond_a4
    return-object v4
.end method


# virtual methods
.method public a(Lt/L;D)Ljava/util/Iterator;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    double-to-int v0, p2

    invoke-static {p1, v0}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v0

    iget-object v2, p0, Lw/b;->d:Lt/V;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lw/b;->d:Lt/V;

    invoke-virtual {v0, v2}, Lt/V;->c(Lt/V;)Lt/V;

    move-result-object v0

    :cond_14
    invoke-static {v0}, Lt/au;->a(Lt/V;)Lt/au;

    move-result-object v0

    const/16 v2, 0xe

    invoke-static {v0, v2}, Lt/af;->a(Lt/au;I)Ljava/util/ArrayList;

    move-result-object v0

    sget-boolean v2, Lw/b;->a:Z

    invoke-direct {p0, v0, v2}, Lw/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ae;

    check-cast v0, Lw/d;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3a
    new-instance v0, Lw/c;

    invoke-direct {v0, v1}, Lw/c;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lw/e;)Lw/e;
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x2

    invoke-virtual {p1}, Lw/e;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lw/e;->b(I)Lt/L;

    move-result-object v4

    invoke-virtual {p1}, Lw/e;->e()Lt/L;

    move-result-object v5

    invoke-virtual {v5}, Lt/L;->f()I

    move-result v0

    invoke-virtual {v4}, Lt/L;->f()I

    move-result v6

    if-le v0, v6, :cond_90

    move v0, v1

    :goto_1c
    invoke-virtual {v5}, Lt/L;->g()I

    move-result v6

    invoke-virtual {v4}, Lt/L;->g()I

    move-result v4

    if-le v6, v4, :cond_92

    :goto_26
    new-instance v2, Lt/L;

    invoke-direct {v2, v0, v1}, Lt/L;-><init>(II)V

    invoke-virtual {v5, v2}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v0

    invoke-static {v5, v0}, Lt/V;->a(Lt/L;Lt/L;)Lt/V;

    move-result-object v0

    invoke-static {v0}, Lt/au;->a(Lt/V;)Lt/au;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lt/af;->a(Lt/au;I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lw/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ae;

    invoke-interface {v0}, Lt/ae;->d()Lt/af;

    move-result-object v4

    iget-object v5, p0, Lw/b;->f:Lt/af;

    if-eqz v5, :cond_94

    iget-object v5, p0, Lw/b;->e:Lt/af;

    if-eqz v5, :cond_94

    invoke-virtual {v4}, Lt/af;->c()I

    move-result v5

    iget-object v6, p0, Lw/b;->f:Lt/af;

    invoke-virtual {v6}, Lt/af;->c()I

    move-result v6

    if-gt v5, v6, :cond_8e

    invoke-virtual {v4}, Lt/af;->c()I

    move-result v5

    iget-object v6, p0, Lw/b;->e:Lt/af;

    invoke-virtual {v6}, Lt/af;->c()I

    move-result v6

    if-lt v5, v6, :cond_8e

    invoke-virtual {v4}, Lt/af;->d()I

    move-result v5

    iget-object v6, p0, Lw/b;->f:Lt/af;

    invoke-virtual {v6}, Lt/af;->d()I

    move-result v6

    if-gt v5, v6, :cond_8e

    invoke-virtual {v4}, Lt/af;->d()I

    move-result v4

    iget-object v5, p0, Lw/b;->e:Lt/af;

    invoke-virtual {v5}, Lt/af;->d()I

    move-result v5

    if-ge v4, v5, :cond_94

    :cond_8e
    move-object v0, v3

    :goto_8f
    return-object v0

    :cond_90
    move v0, v2

    goto :goto_1c

    :cond_92
    move v1, v2

    goto :goto_26

    :cond_94
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    check-cast v0, Lw/d;

    invoke-virtual {v0, p1}, Lw/d;->a(Lw/e;)Lw/e;

    move-result-object v0

    goto :goto_8f

    :cond_a1
    move-object v0, v3

    goto :goto_8f
.end method

.method public a(Lt/V;)V
    .registers 6

    const/16 v3, 0xe

    const/4 v2, 0x0

    iput-object p1, p0, Lw/b;->d:Lt/V;

    iget-object v0, p0, Lw/b;->d:Lt/V;

    if-nez v0, :cond_e

    iput-object v2, p0, Lw/b;->f:Lt/af;

    iput-object v2, p0, Lw/b;->e:Lt/af;

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v0

    invoke-virtual {p1}, Lt/V;->e()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    invoke-static {v3, v0, v1, v2}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v0

    iput-object v0, p0, Lw/b;->e:Lt/af;

    invoke-virtual {p1}, Lt/V;->e()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v0, v1, v2}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v0

    iput-object v0, p0, Lw/b;->f:Lt/af;

    goto :goto_d
.end method
