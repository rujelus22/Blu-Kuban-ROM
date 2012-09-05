.class public Lcom/google/googlenav/ui/wizard/gO;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lau/s;)Lau/s;
    .registers 4

    new-instance v0, Lau/s;

    invoke-direct {v0}, Lau/s;-><init>()V

    invoke-virtual {p0}, Lau/s;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lau/s;->d(I)V

    invoke-virtual {p0}, Lau/s;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lau/s;->a(J)V

    invoke-virtual {p0}, Lau/s;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lau/s;->a(I)V

    invoke-virtual {p0}, Lau/s;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Lau/s;->b(I)V

    return-object v0
.end method

.method public static a(Lau/b;Lcom/google/googlenav/ui/bw;I)Lcom/google/googlenav/ui/bl;
    .registers 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p2}, Lau/b;->l(I)Lau/h;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gO;->a(Lau/h;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/google/googlenav/ui/wizard/gO;->a(Lau/b;Lcom/google/googlenav/ui/bw;IZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->F:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p0, p2}, Lau/b;->p(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    sget-object v1, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    :cond_2e
    new-instance v2, Lcom/google/googlenav/ui/r;

    const/16 v3, 0xd9

    invoke-direct {v2, v0, v1, v3, p2}, Lcom/google/googlenav/ui/r;-><init>(Ljava/util/List;Lcom/google/googlenav/ui/bh;II)V

    return-object v2
.end method

.method public static a(Lau/b;Lcom/google/googlenav/ui/bw;IZ)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lau/b;->l(I)Lau/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gO;->c(Lau/h;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    :goto_14
    if-ge v2, v5, :cond_35

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/s;

    invoke-static {v4, v2}, Lcom/google/googlenav/ui/wizard/gO;->a(Ljava/util/Vector;I)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2b

    invoke-static {v3, p3}, Lcom/google/googlenav/ui/wizard/gO;->a(Ljava/lang/StringBuilder;Z)V

    :cond_2b
    invoke-static {v3, p1, v0, p3}, Lcom/google/googlenav/ui/wizard/gO;->a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/bw;Lau/s;Z)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_30
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_14

    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_59

    if-lez v5, :cond_59

    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/s;

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_59

    invoke-virtual {v0}, Lau/s;->w()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_59

    invoke-static {v3, p1, v0, p3}, Lcom/google/googlenav/ui/wizard/gO;->a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/bw;Lau/s;Z)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_59
    sget-boolean v0, Lcom/google/googlenav/android/I;->g:Z

    if-eqz v0, :cond_6a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6a

    if-nez v1, :cond_6a

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6f
    move v0, v1

    goto :goto_30
.end method

.method private static a(Lau/h;)Ljava/util/Vector;
    .registers 5

    invoke-static {p0}, Lcom/google/googlenav/ui/wizard/gO;->b(Lau/h;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0}, Lau/h;->z()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/bw;->A:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    :cond_2d
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_50
    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;Z)V
    .registers 3

    if-eqz p1, :cond_c

    sget-char v0, Lcom/google/googlenav/ui/bw;->h:C

    :goto_4
    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_c
    sget-char v0, Lcom/google/googlenav/ui/bw;->g:C

    goto :goto_4
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/bw;Lau/s;Z)Z
    .registers 7

    invoke-virtual {p2}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    if-eqz p3, :cond_26

    sget-char v0, Lcom/google/googlenav/ui/bw;->bp:C

    :goto_b
    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    invoke-virtual {p2}, Lau/s;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    sget-char v0, Lcom/google/googlenav/ui/bw;->bo:C

    goto :goto_b

    :cond_29
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v0

    invoke-virtual {p2}, Lau/s;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/x;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_3d
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static a(Ljava/util/Vector;I)Z
    .registers 7

    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/s;

    invoke-virtual {v0}, Lau/s;->w()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2e

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    if-eqz p1, :cond_2c

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/wizard/gO;->b(Ljava/util/Vector;I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gO;->b(Lau/s;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static b(Lau/h;)Ljava/util/Vector;
    .registers 7

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-nez p0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lau/h;->s()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lau/h;->t()Lam/b;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    const/16 v3, 0x4c4

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-virtual {p0}, Lau/h;->l()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {p0}, Lau/h;->k()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8f

    sget-object v3, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->ca:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    const/16 v3, 0x2c9

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_70
    :goto_70
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lau/h;->m()I

    move-result v0

    if-lez v0, :cond_89

    invoke-virtual {p0}, Lau/h;->o()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_89
    move-object v0, v1

    goto/16 :goto_8

    :cond_8c
    const-string v0, ""

    goto :goto_3d

    :cond_8f
    sget-object v0, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_70
.end method

.method private static b(Lau/s;)Z
    .registers 3

    invoke-virtual {p0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lau/s;->v()I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_17

    invoke-virtual {p0}, Lau/s;->t()I

    move-result v0

    const/16 v1, 0x29a

    if-le v0, v1, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static b(Ljava/util/Vector;I)Z
    .registers 5

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/s;

    if-ge p1, v1, :cond_26

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/s;

    invoke-virtual {v1}, Lau/s;->C()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static c(Lau/h;)Ljava/util/Vector;
    .registers 9

    const/4 v7, 0x2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-nez p0, :cond_a

    move-object v0, v1

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lau/h;->e()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_10
    if-ge v2, v3, :cond_5a

    invoke-virtual {p0, v2}, Lau/h;->b(I)Lau/s;

    move-result-object v4

    invoke-virtual {v4}, Lau/s;->C()I

    move-result v0

    if-ne v0, v7, :cond_56

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v5

    if-ne v5, v7, :cond_4e

    invoke-virtual {v0}, Lau/s;->t()I

    move-result v5

    invoke-virtual {v4}, Lau/s;->t()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lau/s;->a(I)V

    invoke-virtual {v0}, Lau/s;->v()I

    move-result v5

    invoke-virtual {v4}, Lau/s;->v()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lau/s;->b(I)V

    :goto_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_47
    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/s;

    goto :goto_23

    :cond_4e
    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/gO;->a(Lau/s;)Lau/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_43

    :cond_56
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_43

    :cond_5a
    move-object v0, v1

    goto :goto_9
.end method
