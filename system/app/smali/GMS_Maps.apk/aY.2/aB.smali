.class public LaY/aB;
.super LaY/h;


# instance fields
.field private final d:Lcom/google/googlenav/ui/bw;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 3

    invoke-direct {p0, p1}, LaY/h;-><init>(LaY/i;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, LaY/aB;->d:Lcom/google/googlenav/ui/bw;

    return-void
.end method

.method private a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/bl;
    .registers 3

    iget-object v0, p0, LaY/aB;->c:LaY/i;

    check-cast v0, LaY/m;

    invoke-direct {p0, p1, v0}, LaY/aB;->a(Lcom/google/googlenav/ah;LaY/m;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ah;LaY/m;)Lcom/google/googlenav/ui/bl;
    .registers 8

    new-instance v2, Ljava/util/Vector;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->af()Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v3, 0x483

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->af:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_20
    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    const/4 v0, -0x1

    move v1, v0

    :goto_28
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->h()Z

    move-result v0

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->g:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4b
    invoke-virtual {p2}, LaY/m;->bj()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bn()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p2}, LaY/m;->bk()Z

    move-result v0

    invoke-static {p1, v0, v2}, LaY/aB;->a(Lcom/google/googlenav/ah;ZLjava/util/Vector;)V

    :cond_5e
    invoke-virtual {p2}, LaY/m;->bi()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->am()Z

    move-result v0

    if-eqz v0, :cond_79

    const/16 v0, 0x1e2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->j:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_79
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bm()Z

    move-result v0

    if-eqz v0, :cond_8e

    const/16 v0, 0x4e7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->j:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8e
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bl()Z

    move-result v0

    if-eqz v0, :cond_a3

    const/16 v0, 0x1d4

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->j:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a3
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->x()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p2}, LaY/m;->bo()Z

    move-result v0

    invoke-static {p1, v0}, LaY/aq;->c(Lcom/google/googlenav/ah;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->j:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_ba
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bn()Z

    move-result v0

    if-eqz v0, :cond_cf

    const/16 v0, 0x302

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->bo:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_cf
    invoke-virtual {p0, p1, v2}, LaY/aB;->a(Lcom/google/googlenav/ah;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x1

    :goto_d9
    new-instance v3, Lcom/google/googlenav/ui/bm;

    invoke-direct {v3}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/bm;->a(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {p2}, LaY/m;->bj()Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bn()Z

    move-result v1

    if-nez v1, :cond_fb

    sget-object v1, Lcom/google/googlenav/ui/bl;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;

    :cond_fb
    sget-object v1, LaB/b;->a:LaB/b;

    invoke-virtual {v1}, LaB/b;->e()Z

    move-result v1

    if-eqz v1, :cond_106

    invoke-direct {p0, p1, v0}, LaY/aB;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bm;)V

    :cond_106
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0

    :cond_10b
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->av()Lcom/google/googlenav/bN;

    move-result-object v3

    invoke-static {v1, v3}, LaY/aB;->a(Ljava/lang/String;Lcom/google/googlenav/bN;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->o:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v0

    goto/16 :goto_28

    :cond_11f
    const/16 v0, 0x12

    goto :goto_d9
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/bN;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->j()I

    move-result v0

    if-lez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/bw;->br:C

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_25
    return-object p0
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/bS;)Ljava/lang/String;
    .registers 13

    const/16 v10, 0x288

    const/16 v9, 0x287

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->d()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->c()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {p1}, Lcom/google/googlenav/bS;->a()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-virtual {p1, v7}, Lcom/google/googlenav/bS;->d(Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1c
    if-eqz v3, :cond_90

    invoke-static {v10}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_22
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_66
    if-eqz v3, :cond_95

    invoke-static {v10}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_76
    return-object v0

    :cond_77
    const/16 v0, 0x403

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_8a
    invoke-virtual {p1, v6}, Lcom/google/googlenav/bS;->c(Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1c

    :cond_90
    invoke-static {v9}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_95
    invoke-static {v9}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76
.end method

.method private a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bm;)V
    .registers 9

    const/16 v4, 0x10

    iget-object v0, p0, LaY/aB;->c:LaY/i;

    invoke-virtual {v0}, LaY/i;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->e()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {v4}, Lcom/google/googlenav/ui/bw;->f(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaY/aB;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v1

    new-instance v2, Lbb/a;

    iget-object v3, p0, LaY/aB;->c:LaY/i;

    invoke-virtual {v3}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/E;->c()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lbb/a;-><init>(II)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;Lbb/E;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    :goto_3d
    iget-object v1, p0, LaY/aB;->c:LaY/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LaY/i;->a(LaJ/B;I)Z

    move-result v3

    if-eqz v3, :cond_83

    iget-object v1, p0, LaY/aB;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->T()Lah/f;

    move-result-object v1

    :goto_50
    new-instance v4, Lbb/a;

    if-eqz v3, :cond_8a

    const/16 v2, 0x25c

    :goto_56
    iget-object v5, p0, LaY/aB;->c:LaY/i;

    invoke-virtual {v5}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/E;->c()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lbb/a;-><init>(II)V

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/bn;->a(Lah/f;Lbb/E;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    new-instance v2, LaY/aC;

    invoke-direct {v2, p0, v3}, LaY/aC;-><init>(LaY/aB;Z)V

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->b(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    return-void

    :cond_78
    iget-object v0, p0, LaY/aB;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->S()Lah/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lah/f;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    goto :goto_3d

    :cond_83
    iget-object v1, p0, LaY/aB;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->U()Lah/f;

    move-result-object v1

    goto :goto_50

    :cond_8a
    const/16 v2, 0x261

    goto :goto_56
.end method

.method static a(Lcom/google/googlenav/ah;ZLjava/util/Vector;)V
    .registers 8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->K()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ah;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/googlenav/ui/bg;->q:Lcom/google/googlenav/ui/bg;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/googlenav/ui/bg;->bi:Lcom/google/googlenav/ui/bg;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2f
    if-eqz p1, :cond_57

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bc()Lcom/google/googlenav/ab;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ab;->b(J)Lcom/google/googlenav/ac;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Lcom/google/googlenav/ac;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/googlenav/ac;->b()Lcom/google/googlenav/ui/bg;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_57
    const-string v2, " "

    sget-object v3, Lcom/google/googlenav/ui/bg;->q:Lcom/google/googlenav/ui/bg;

    invoke-static {p2, v0, v1, v2, v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/bg;)V

    return-void
.end method


# virtual methods
.method public a()Lbb/d;
    .registers 5

    iget-object v0, p0, LaY/aB;->c:LaY/i;

    invoke-virtual {v0}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->c()B

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0, v0}, LaY/aB;->a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v1

    iget-object v2, p0, LaY/aB;->c:LaY/i;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    goto :goto_f
.end method

.method a(Lcom/google/googlenav/ah;Ljava/util/List;)V
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->av()Lcom/google/googlenav/bN;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {v0, v1}, Lcom/google/googlenav/bN;->a(Z)Lcom/google/googlenav/bS;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bS;->c(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaY/aB;->a(Ljava/lang/String;Lcom/google/googlenav/bS;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->j:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method
