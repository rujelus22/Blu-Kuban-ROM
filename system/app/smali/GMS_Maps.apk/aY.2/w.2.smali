.class public LaY/w;
.super LaY/aD;


# instance fields
.field private b:Lbb/o;


# direct methods
.method public constructor <init>(LaY/x;)V
    .registers 2

    invoke-direct {p0, p1}, LaY/aD;-><init>(LaY/m;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Vector;)V
    .registers 1

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ao()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {p0}, LaY/w;->c()LaY/x;

    move-result-object v1

    invoke-virtual {v1}, LaY/x;->bI()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, LaY/x;->e()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    array-length v2, v1

    if-lez v2, :cond_21

    aget-object v0, v1, v3

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {v1}, LaY/x;->b()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v1}, LaY/x;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    array-length v2, v1

    if-lez v2, :cond_21

    aget-object v0, v1, v3

    goto :goto_21
.end method

.method private c()LaY/x;
    .registers 2

    iget-object v0, p0, LaY/w;->a:LaY/i;

    check-cast v0, LaY/x;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 11

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, LaY/w;->c()LaY/x;

    move-result-object v1

    invoke-virtual {v1}, LaY/x;->b()Z

    move-result v2

    invoke-virtual {v1}, LaY/x;->bI()Z

    move-result v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    if-eqz v3, :cond_2b

    invoke-virtual {v1}, LaY/x;->bK()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x21e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x12

    invoke-static {v0, v5}, LaY/w;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2b
    if-eqz v2, :cond_d9

    invoke-static {v4, v7}, LaY/aq;->a(Ljava/util/Vector;Z)V

    :cond_30
    :goto_30
    const/16 v0, 0x414

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x25a

    invoke-static {v0, v5}, LaY/w;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v4}, LaY/w;->a(Ljava/util/Vector;)V

    if-eqz v3, :cond_f0

    const/16 v0, 0x43f

    :goto_46
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_f4

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v5, Lcom/google/googlenav/ui/bg;->aO:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_66
    :goto_66
    invoke-virtual {v1}, LaY/x;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {v1, v0}, LaY/x;->c(LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_81

    if-eqz v3, :cond_103

    const/16 v0, 0x388

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_78
    const/16 v2, 0x5dc

    invoke-static {v0, v2}, LaY/w;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_81
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->n()Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, LaC/c;->a:LaC/c;

    invoke-virtual {v0}, LaC/c;->e()Z

    move-result v0

    if-eqz v0, :cond_a2

    const/16 v0, 0x2a2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-static {v0, v2}, LaY/w;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a2
    iget-object v0, p0, LaY/w;->b:Lbb/o;

    if-eqz v0, :cond_10b

    invoke-virtual {v1}, LaY/x;->I()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-virtual {v1, v6}, LaY/x;->f(Z)V

    iget-object v0, p0, LaY/w;->b:Lbb/o;

    invoke-direct {p0}, LaY/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, LaY/w;->b:Lbb/o;

    invoke-virtual {v0, v4}, Lbb/o;->a(Ljava/util/Vector;)V

    iget-object v0, p0, LaY/w;->b:Lbb/o;

    invoke-virtual {p0, p1}, LaY/w;->a_(Lcom/google/googlenav/ah;)Lbb/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/o;->a(Lbb/n;)V

    iget-object v0, p0, LaY/w;->b:Lbb/o;

    invoke-virtual {p0, p1}, LaY/w;->d(Lcom/google/googlenav/ah;)Lbb/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/o;->b(Lbb/p;)V

    :cond_cf
    :goto_cf
    new-instance v0, Lcom/google/googlenav/ui/view/android/bh;

    iget-object v1, p0, LaY/w;->a:LaY/i;

    iget-object v2, p0, LaY/w;->b:Lbb/o;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    return-object v0

    :cond_d9
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->x()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, LaY/x;->bo()Z

    move-result v5

    invoke-static {p1, v0, v7, v5, v6}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Vector;ZZZ)V

    invoke-static {v0, v4}, LaY/aq;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    goto/16 :goto_30

    :cond_f0
    const/16 v0, 0x43e

    goto/16 :goto_46

    :cond_f4
    invoke-virtual {v1}, LaY/x;->c()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-static {v0, v8}, LaY/w;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_66

    :cond_103
    const/16 v0, 0x38a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_78

    :cond_10b
    invoke-direct {p0}, LaY/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, LaY/w;->a_(Lcom/google/googlenav/ah;)Lbb/n;

    move-result-object v1

    invoke-virtual {p0, p1}, LaY/w;->d(Lcom/google/googlenav/ah;)Lbb/p;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lbb/o;->a(Ljava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;)Lbb/o;

    move-result-object v0

    iput-object v0, p0, LaY/w;->b:Lbb/o;

    goto :goto_cf
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaY/w;->b:Lbb/o;

    return-void
.end method

.method protected a_(Lcom/google/googlenav/ah;)Lbb/n;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, LaY/w;->c()LaY/x;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/bm;

    invoke-direct {v3}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2}, LaY/x;->bI()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-virtual {v2}, LaY/x;->e()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_48

    array-length v7, v6

    if-lez v7, :cond_48

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/M;->ao()Z

    move-result v7

    if-nez v7, :cond_37

    aget-object v7, v6, v1

    sget-object v8, Lcom/google/googlenav/ui/bg;->aN:Lcom/google/googlenav/ui/bg;

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    array-length v7, v6

    if-ge v0, v7, :cond_48

    aget-object v7, v6, v0

    sget-object v8, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_48
    invoke-virtual {v2}, LaY/x;->c()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_91

    move v0, v1

    :goto_4f
    array-length v1, v6

    if-ge v0, v1, :cond_91

    aget-object v1, v6, v0

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    aget-object v1, v6, v0

    sget-object v7, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v7}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_68
    invoke-virtual {v2}, LaY/x;->b()Z

    move-result v6

    if-eqz v6, :cond_c6

    const/16 v0, 0x230

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aN:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    :goto_7d
    invoke-virtual {v2}, LaY/x;->bH()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {v2}, LaY/x;->j()Lah/f;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/bm;->b(Lah/f;)Lcom/google/googlenav/ui/bm;

    :cond_8a
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    invoke-static {v0, v3}, LaY/aq;->a(LaJ/B;Lcom/google/googlenav/ui/bm;)V

    :cond_91
    invoke-virtual {v2}, LaY/x;->bL()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-static {p1, v4}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/List;)V

    :cond_9a
    invoke-virtual {v3, v5}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bm;->b(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v2}, LaY/x;->bh()Lcom/google/googlenav/ui/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/bl;->f:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bm;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->c(Z)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v2}, LaY/x;->bM()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->b(Z)Lcom/google/googlenav/ui/bm;

    new-instance v0, Lbb/n;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    return-object v0

    :cond_c6
    invoke-virtual {v2}, LaY/x;->c()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f3

    array-length v7, v6

    if-lez v7, :cond_e4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/M;->ao()Z

    move-result v7

    if-nez v7, :cond_e4

    aget-object v1, v6, v1

    sget-object v7, Lcom/google/googlenav/ui/bg;->aN:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v7}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e4
    array-length v1, v6

    if-le v1, v0, :cond_7d

    aget-object v0, v6, v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->br:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_f3
    const/16 v0, 0x4e2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aN:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7d
.end method
