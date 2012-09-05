.class Lp/d;
.super Lz/g;


# instance fields
.field final synthetic a:Lp/a;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lp/a;)V
    .registers 3

    iput-object p1, p0, Lp/d;->a:Lp/a;

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lz/g;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp/d;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lp/d;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lp/d;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lp/d;->g()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lp/d;->j()Lz/h;

    move-result-object v1

    :goto_d
    invoke-virtual {v1}, Lz/h;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Lz/h;->a()Lz/i;

    move-result-object v2

    iget-object v3, v2, Lz/i;->a:Ljava/lang/Object;

    sget-object v4, Lp/a;->a:Lt/af;

    if-ne v3, v4, :cond_31

    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {p0, v0}, Lp/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_31
    iget-object v2, v2, Lz/i;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_37
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lt/af;

    check-cast p2, Lp/b;

    invoke-virtual {p0, p1, p2}, Lp/d;->a(Lt/af;Lp/b;)V

    return-void
.end method

.method public a(Lp/b;)V
    .registers 3

    iget-object v0, p0, Lp/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lt/af;Lp/b;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lz/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lp/d;->a:Lp/a;

    iget v1, p2, Lp/b;->b:I

    invoke-static {v0, v1}, Lp/a;->a(Lp/a;I)I

    iget-object v0, p0, Lp/d;->a:Lp/a;

    iget v1, p2, Lp/b;->c:I

    invoke-static {v0, v1}, Lp/a;->b(Lp/a;I)I

    iget-object v0, p2, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_20

    iget-object v0, p2, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v1, p0, Lp/d;->a:Lp/a;

    invoke-static {v1}, Lp/a;->a(Lp/a;)Lcom/google/android/maps/driveabout/vector/aT;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_20
    return-void
.end method

.method public a(Lt/af;)Z
    .registers 7

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lp/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/b;

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    sget-object v1, Lp/a;->a:Lt/af;

    invoke-virtual {p0, v1}, Lp/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/b;

    if-eqz v1, :cond_9

    iget-wide v3, v0, Lp/b;->d:J

    iget-wide v0, v1, Lp/b;->d:J

    cmp-long v0, v3, v0

    if-gez v0, :cond_1f

    move v0, v2

    :goto_1d
    move v2, v0

    goto :goto_9

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b()V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lp/d;->g()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lp/d;->j()Lz/h;

    move-result-object v2

    :goto_d
    invoke-virtual {v2}, Lz/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v2}, Lz/h;->a()Lz/i;

    move-result-object v3

    iget-object v0, v3, Lz/i;->a:Ljava/lang/Object;

    sget-object v4, Lp/a;->a:Lt/af;

    if-ne v0, v4, :cond_31

    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {p0, v0}, Lp/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_31
    iget-object v0, v3, Lz/i;->b:Ljava/lang/Object;

    check-cast v0, Lp/b;

    iget-object v4, v0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v4, :cond_3f

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/aU;->a()Z

    move-result v5

    if-nez v5, :cond_45

    :cond_3f
    iget-object v0, v3, Lz/i;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_45
    iget-object v3, p0, Lp/d;->a:Lp/a;

    invoke-static {v3}, Lp/a;->a(Lp/a;)Lcom/google/android/maps/driveabout/vector/aT;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/maps/driveabout/vector/aU;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v3, p0, Lp/d;->a:Lp/a;

    iget v4, v0, Lp/b;->b:I

    invoke-static {v3, v4}, Lp/a;->a(Lp/a;I)I

    const/4 v3, 0x0

    iput v3, v0, Lp/b;->b:I

    goto :goto_d

    :cond_59
    return-void
.end method

.method public c()Lz/i;
    .registers 3

    invoke-virtual {p0}, Lp/d;->j()Lz/h;

    move-result-object v0

    invoke-virtual {v0}, Lz/h;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lz/h;->a()Lz/i;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public d()V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lp/d;->a:Lp/a;

    invoke-static {v0}, Lp/a;->b(Lp/a;)Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v4

    sget-object v0, Lp/a;->a:Lt/af;

    invoke-virtual {p0, v0}, Lp/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/b;

    if-nez v0, :cond_22

    sget-object v6, Lp/a;->a:Lt/af;

    new-instance v0, Lp/b;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lp/b;-><init>(Lcom/google/android/maps/driveabout/vector/aU;IIJ)V

    invoke-virtual {p0, v6, v0}, Lp/d;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_21
    return-void

    :cond_22
    iput-wide v4, v0, Lp/b;->d:J

    goto :goto_21
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lp/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/b;

    iget-object v2, v0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v3, p0, Lp/d;->a:Lp/a;

    invoke-static {v3}, Lp/a;->a(Lp/a;)Lcom/google/android/maps/driveabout/vector/aT;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/maps/driveabout/vector/aU;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v2, p0, Lp/d;->a:Lp/a;

    iget v3, v0, Lp/b;->b:I

    invoke-static {v2, v3}, Lp/a;->a(Lp/a;I)I

    iget-object v2, p0, Lp/d;->a:Lp/a;

    iget v0, v0, Lp/b;->c:I

    invoke-static {v2, v0}, Lp/a;->b(Lp/a;I)I

    goto :goto_6

    :cond_2c
    iget-object v0, p0, Lp/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
