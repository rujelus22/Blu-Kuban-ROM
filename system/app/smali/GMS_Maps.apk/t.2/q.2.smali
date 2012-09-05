.class public Lt/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/r;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Lx/a;

.field private e:Z


# direct methods
.method protected constructor <init>(Lt/r;Ljava/util/List;IZLx/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/q;->a:Lt/r;

    iput-object p2, p0, Lt/q;->b:Ljava/util/List;

    iput p3, p0, Lt/q;->c:I

    iput-boolean p4, p0, Lt/q;->e:Z

    iput-object p5, p0, Lt/q;->d:Lx/a;

    return-void
.end method

.method public static a(Lam/b;Lx/a;)Lt/q;
    .registers 9

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v5

    invoke-static {v5}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    :goto_18
    if-ge v3, v5, :cond_2a

    invoke-virtual {p0, v6, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lt/u;->a(Lam/b;)Lt/u;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2a
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lam/b;->b(I)Z

    move-result v4

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lam/b;->d(I)I

    move-result v3

    if-ltz v3, :cond_38

    if-lt v3, v5, :cond_39

    :cond_38
    move v3, v0

    :cond_39
    if-nez v4, :cond_3d

    if-nez v5, :cond_3e

    :cond_3d
    const/4 v3, -0x1

    :cond_3e
    new-instance v0, Lt/q;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lt/q;-><init>(Lt/r;Ljava/util/List;IZLx/a;)V

    goto :goto_e
.end method


# virtual methods
.method public a(Lt/u;)I
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lt/u;->b()Lt/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt/q;->a(Lt/r;)Lt/u;

    move-result-object v0

    iget-object v1, p0, Lt/q;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public a()Lt/r;
    .registers 2

    iget-object v0, p0, Lt/q;->a:Lt/r;

    return-object v0
.end method

.method public a(I)Lt/u;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lt/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lt/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    goto :goto_b
.end method

.method public a(Lt/r;)Lt/u;
    .registers 5

    iget-object v0, p0, Lt/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    invoke-virtual {v0}, Lt/u;->b()Lt/r;

    move-result-object v2

    invoke-virtual {p1, v2}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public a(Lt/y;)Lt/u;
    .registers 3

    invoke-virtual {p1}, Lt/y;->a()Lt/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt/q;->a(Lt/r;)Lt/u;

    move-result-object v0

    return-object v0
.end method

.method public b(Lt/y;)I
    .registers 3

    invoke-virtual {p1}, Lt/y;->a()Lt/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt/q;->a(Lt/r;)Lt/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt/q;->a(Lt/u;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lt/q;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lt/u;
    .registers 2

    iget v0, p0, Lt/q;->c:I

    invoke-virtual {p0, v0}, Lt/q;->a(I)Lt/u;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lt/q;->e:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lt/q;->d:Lx/a;

    invoke-virtual {v0}, Lx/a;->a()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Building: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/q;->a:Lt/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
