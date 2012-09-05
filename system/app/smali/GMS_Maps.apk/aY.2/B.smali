.class public LaY/B;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lau/v;Ljava/util/Vector;Ljava/util/Vector;IZ)I
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0, p3}, Lau/v;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {p0, v0}, Lau/v;->a(Lau/m;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_48

    const/4 v2, 0x1

    if-eqz p4, :cond_45

    sget-object v1, Lcom/google/googlenav/ui/bg;->k:Lcom/google/googlenav/ui/bg;

    :goto_12
    invoke-static {v4, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v2

    :goto_1a
    invoke-static {p0, v0, v3}, LaY/B;->a(Lau/b;Lau/m;Z)LaY/C;

    move-result-object v0

    invoke-virtual {v0}, LaY/C;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, LaY/C;->a:Ljava/lang/String;

    invoke-static {p4}, LaY/B;->a(Z)Lcom/google/googlenav/ui/bg;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    :cond_31
    invoke-virtual {v0}, LaY/C;->b()Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v0, v0, LaY/C;->c:Ljava/lang/String;

    invoke-static {p4}, LaY/B;->b(Z)Lcom/google/googlenav/ui/bg;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    :cond_44
    return v1

    :cond_45
    sget-object v1, Lcom/google/googlenav/ui/bg;->H:Lcom/google/googlenav/ui/bg;

    goto :goto_12

    :cond_48
    move v1, v3

    goto :goto_1a
.end method

.method private static a(Lau/b;IZ)LaY/C;
    .registers 7

    new-instance v1, LaY/C;

    invoke-direct {v1}, LaY/C;-><init>()V

    invoke-virtual {p0, p1}, Lau/b;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->m()Lau/s;

    move-result-object v2

    if-nez v2, :cond_13

    move-object v0, v1

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Lau/m;->s()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v2}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaY/C;->a:Ljava/lang/String;

    :cond_1f
    :goto_1f
    invoke-virtual {v2}, Lau/s;->F()[Lau/n;

    move-result-object v0

    iput-object v0, v1, LaY/C;->b:[Lau/n;

    move-object v0, v1

    goto :goto_12

    :cond_27
    invoke-virtual {v2}, Lau/s;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaY/C;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lau/s;->t()I

    move-result v0

    if-lez v0, :cond_1f

    if-nez p2, :cond_1f

    invoke-virtual {p0}, Lau/b;->ax()I

    move-result v0

    invoke-virtual {v2}, Lau/s;->t()I

    move-result v3

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaY/C;->c:Ljava/lang/String;

    goto :goto_1f
.end method

.method private static a(Lau/b;Lau/m;)LaY/C;
    .registers 11

    const/4 v8, 0x2

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lau/m;->m()Lau/s;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lau/m;->o()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-virtual {v0}, Lau/s;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lau/s;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xde

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lau/s;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, LaY/B;->b(Lau/s;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const/16 v2, 0x49d

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lau/s;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    :goto_5f
    new-instance v0, LaY/C;

    invoke-direct {v0}, LaY/C;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaY/C;->a:Ljava/lang/String;

    return-object v0

    :cond_6b
    const/16 v3, 0x49e

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v0}, Lau/s;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_83
    invoke-virtual {p1}, Lau/m;->p()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {v0}, LaY/B;->a(Lau/s;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    const/16 v3, 0x498

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_ab
    const/16 v2, 0x497

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lau/s;->t()I

    move-result v2

    if-lez v2, :cond_5f

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lau/s;->t()I

    move-result v0

    invoke-virtual {p0}, Lau/b;->ax()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f
.end method

.method public static a(Lau/b;Lau/m;Z)LaY/C;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lau/m;->m()Lau/s;

    move-result-object v3

    new-instance v2, LaY/C;

    invoke-direct {v2}, LaY/C;-><init>()V

    if-nez v3, :cond_f

    move-object v0, v2

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p1}, Lau/m;->r()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {p1}, Lau/m;->n()Z

    move-result v4

    if-eqz v4, :cond_58

    check-cast p1, Lau/a;

    const/16 v4, 0x4fb

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Lau/s;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v4, v0}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LaY/C;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lau/a;->j()I

    move-result v0

    if-lez v0, :cond_43

    invoke-virtual {p1}, Lau/a;->j()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LaY/C;->c:Ljava/lang/String;

    :cond_41
    :goto_41
    move-object v0, v2

    goto :goto_e

    :cond_43
    invoke-virtual {p1}, Lau/a;->i()I

    move-result v0

    if-lez v0, :cond_41

    invoke-virtual {p1}, Lau/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lau/b;->ax()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LaY/C;->c:Ljava/lang/String;

    goto :goto_41

    :cond_58
    invoke-static {p0}, LaY/B;->a(Lau/b;)Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-virtual {p1}, Lau/m;->o()Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual {p1}, Lau/m;->p()Z

    move-result v2

    if-eqz v2, :cond_9d

    :cond_6a
    invoke-static {p0, p1}, LaY/B;->a(Lau/b;Lau/m;)LaY/C;

    move-result-object v0

    :goto_6e
    invoke-virtual {p1}, Lau/m;->x()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez p2, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lau/m;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, LaY/C;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaY/C;->a:Ljava/lang/String;

    goto/16 :goto_e

    :cond_9d
    if-nez p2, :cond_a4

    :goto_9f
    invoke-static {p0, p1, v0}, LaY/B;->b(Lau/b;Lau/m;Z)LaY/C;

    move-result-object v0

    goto :goto_6e

    :cond_a4
    move v0, v1

    goto :goto_9f
.end method

.method public static a(Lau/v;)Lcom/google/googlenav/ui/aU;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aU;

    invoke-direct {v1, v0, p0}, Lcom/google/googlenav/ui/aU;-><init>(Lcom/google/googlenav/ui/bl;Lau/v;)V

    return-object v1
.end method

.method public static a(Z)Lcom/google/googlenav/ui/bg;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlenav/ui/bg;->l:Lcom/google/googlenav/ui/bg;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/bg;->I:Lcom/google/googlenav/ui/bg;

    goto :goto_4
.end method

.method private static a(Lau/s;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lau/s;->u()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x39

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lau/s;->v()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    return-object v0
.end method

.method public static a(Lau/b;IIZZ)Ljava/util/Vector;
    .registers 15

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v5

    invoke-virtual {p0}, Lau/b;->m()Z

    move-result v6

    if-eqz v6, :cond_9e

    move-object v0, p0

    check-cast v0, Lau/v;

    invoke-virtual {v0, p2, v1, p3}, Lau/v;->a(ILcom/google/googlenav/ui/x;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v3, p2, p3}, LaY/B;->a(Lau/v;Ljava/util/Vector;Ljava/util/Vector;IZ)I

    move-result v0

    :goto_31
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_41

    if-nez p3, :cond_41

    invoke-static {v4, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_41
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ff

    if-eqz p3, :cond_fc

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    move-object v3, v2

    :goto_58
    if-eqz p3, :cond_102

    const/4 v2, 0x5

    :goto_5b
    new-instance v7, Lcom/google/googlenav/ui/bm;

    invoke-direct {v7}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v7, v4}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/bm;->a(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    if-eqz p4, :cond_106

    const/16 v0, 0x5ec

    :goto_70
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    if-nez p4, :cond_7f

    const/16 v0, 0xe7

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->g(I)Lcom/google/googlenav/ui/bm;

    :cond_7f
    if-nez p3, :cond_84

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/bm;->b(I)Lcom/google/googlenav/ui/bm;

    :cond_84
    invoke-static {v1, v5}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    if-eqz p3, :cond_10a

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->b(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->c(I)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_98
    if-eqz v3, :cond_9d

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9d
    return-object v6

    :cond_9e
    if-nez p3, :cond_a4

    invoke-virtual {p0, p2, v1}, Lau/b;->a(ILcom/google/googlenav/ui/x;)Ljava/lang/String;

    move-result-object v0

    :cond_a4
    invoke-static {p0, p2, p3}, LaY/B;->a(Lau/b;IZ)LaY/C;

    move-result-object v6

    invoke-virtual {v6}, LaY/C;->a()Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, v6, LaY/C;->a:Ljava/lang/String;

    invoke-static {p3}, LaY/B;->a(Z)Lcom/google/googlenav/ui/bg;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    :cond_bb
    invoke-virtual {v6}, LaY/C;->c()Z

    move-result v1

    if-eqz v1, :cond_e3

    const/4 v1, 0x0

    :goto_c2
    iget-object v7, v6, LaY/C;->b:[Lau/n;

    array-length v7, v7

    if-ge v1, v7, :cond_e3

    iget-object v7, v6, LaY/C;->b:[Lau/n;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lau/n;->c()Z

    move-result v8

    if-eqz v8, :cond_e0

    invoke-virtual {v7}, Lau/n;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3}, LaY/B;->c(Z)Lcom/google/googlenav/ui/bg;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    :cond_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    :cond_e3
    invoke-virtual {v6}, LaY/C;->b()Z

    move-result v1

    if-eqz v1, :cond_f6

    iget-object v1, v6, LaY/C;->c:Ljava/lang/String;

    invoke-static {p3}, LaY/B;->b(Z)Lcom/google/googlenav/ui/bg;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    :cond_f6
    const/4 v1, 0x0

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto/16 :goto_31

    :cond_fc
    invoke-static {v4, v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_ff
    move-object v3, v2

    goto/16 :goto_58

    :cond_102
    const/16 v2, 0x9

    goto/16 :goto_5b

    :cond_106
    const/16 v0, 0xc8

    goto/16 :goto_70

    :cond_10a
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {p0, p2}, Lau/b;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->m()Lau/s;

    move-result-object v1

    new-instance v4, Lcom/google/googlenav/ui/q;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {p0}, Lau/b;->k()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_12d

    const/4 v0, 0x1

    :goto_125
    invoke-direct {v4, v2, v1, v0}, Lcom/google/googlenav/ui/q;-><init>(Lcom/google/googlenav/ui/bl;Lau/s;Z)V

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_98

    :cond_12d
    const/4 v0, 0x0

    goto :goto_125
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Lau/b;)Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Laf/b;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static b(Lau/b;Lau/m;Z)LaY/C;
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lau/m;->m()Lau/s;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lau/m;->o()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lau/m;->q()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lau/m;->r()Z

    move-result v0

    if-eqz v0, :cond_89

    :cond_22
    invoke-virtual {p1}, Lau/m;->o()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-virtual {p1}, Lau/m;->A()Z

    move-result v0

    if-eqz v0, :cond_d1

    const/16 v0, 0x4a2

    :goto_30
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lau/s;->B()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lau/s;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p1}, Lau/m;->A()Z

    move-result v0

    if-eqz v0, :cond_d5

    const/16 v0, 0x4a0

    :goto_55
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lau/s;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    :goto_68
    invoke-virtual {v1}, Lau/s;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\n"

    const/16 v4, 0xde

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lau/s;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, LaY/B;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    invoke-virtual {p1}, Lau/m;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_148

    if-eqz p2, :cond_b3

    invoke-virtual {p1}, Lau/m;->v()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-virtual {v1}, Lau/s;->u()Z

    move-result v0

    if-nez v0, :cond_134

    :cond_9e
    invoke-virtual {v1}, Lau/s;->t()I

    move-result v0

    if-lez v0, :cond_134

    invoke-virtual {v1}, Lau/s;->t()I

    move-result v0

    invoke-virtual {p0}, Lau/b;->ax()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b3
    :goto_b3
    new-instance v0, LaY/C;

    invoke-direct {v0}, LaY/C;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaY/C;->a:Ljava/lang/String;

    :cond_c4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaY/C;->c:Ljava/lang/String;

    :cond_d0
    return-object v0

    :cond_d1
    const/16 v0, 0x4a4

    goto/16 :goto_30

    :cond_d5
    const/16 v0, 0x4a3

    goto/16 :goto_55

    :cond_d9
    invoke-virtual {v1}, Lau/s;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :pswitch_e1
    invoke-static {v1}, LaY/B;->c(Lau/s;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b3

    const-string v1, "\n"

    invoke-static {v3, v1, v0}, LaY/B;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :pswitch_f1
    const/16 v0, 0x49f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lau/s;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LaY/B;->d(Lau/s;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_114

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    :cond_114
    invoke-virtual {v1}, Lau/s;->t()I

    move-result v0

    if-lez v0, :cond_b3

    if-eqz p2, :cond_b3

    invoke-virtual {v1}, Lau/s;->t()I

    move-result v0

    invoke-virtual {p0}, Lau/b;->ax()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    :pswitch_12c
    invoke-virtual {v1}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    :cond_134
    invoke-virtual {v1}, Lau/s;->u()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-virtual {v1}, Lau/s;->v()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b3

    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_f1
        :pswitch_12c
    .end packed-switch
.end method

.method private static b(Z)Lcom/google/googlenav/ui/bg;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlenav/ui/bg;->m:Lcom/google/googlenav/ui/bg;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/bg;->J:Lcom/google/googlenav/ui/bg;

    goto :goto_4
.end method

.method private static b(Lau/s;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lau/s;->p()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lau/s;->q()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lau/s;->r()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    return-object v0
.end method

.method private static c(Z)Lcom/google/googlenav/ui/bg;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlenav/ui/bg;->n:Lcom/google/googlenav/ui/bg;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/bg;->K:Lcom/google/googlenav/ui/bg;

    goto :goto_4
.end method

.method private static c(Lau/s;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lau/s;->p()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/16 v1, 0x49b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p0}, Lau/s;->q()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x49c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lau/s;->r()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method private static d(Lau/s;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lau/s;->j()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/16 v1, 0x49a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p0}, Lau/s;->u()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x499

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lau/s;->v()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
