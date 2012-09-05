.class public Lcom/google/googlenav/ui/wizard/bq;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lau/b;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_27
    invoke-static {p0}, Las/b;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_b
.end method


# virtual methods
.method public W_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->a:Lau/b;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bq;->a()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bq;->a(Lau/b;)V

    return-void
.end method

.method public Z_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bq;->g:Z

    return v0
.end method

.method public a(Lau/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bq;->a:Lau/b;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6

    packed-switch p1, :pswitch_data_26

    :cond_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->a:Lau/b;

    invoke-virtual {v0, p2}, Lau/b;->k(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method

.method protected b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bq;->g:Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bq;->e()Lbb/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    :goto_16
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void

    :cond_1e
    new-instance v0, Lcom/google/googlenav/ui/view/android/bh;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bq;->e()Lbb/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    goto :goto_16
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->a:Lau/b;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method protected e()Lbb/o;
    .registers 13

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->a:Lau/b;

    invoke-virtual {v0}, Lau/b;->ad()Lau/h;

    move-result-object v5

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v5}, Lau/h;->d()I

    move-result v3

    if-ge v0, v3, :cond_151

    invoke-virtual {v5, v0}, Lau/h;->a(I)Lau/m;

    move-result-object v3

    invoke-virtual {v3}, Lau/m;->q()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-virtual {v3}, Lau/m;->o()Z

    move-result v6

    if-nez v6, :cond_27

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_27
    invoke-virtual {v3}, Lau/m;->m()Lau/s;

    move-result-object v6

    invoke-virtual {v6}, Lau/s;->f()Lam/b;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lam/b;->k(I)Z

    move-result v7

    if-eqz v7, :cond_24

    if-eqz v1, :cond_14e

    add-int/lit8 v2, v2, 0x1

    :goto_3b
    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bq;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v7

    invoke-virtual {v3}, Lau/m;->m()Lau/s;

    move-result-object v8

    invoke-virtual {v8}, Lau/s;->w()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/googlenav/ui/x;->a(J)C

    move-result v7

    invoke-static {v7}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lau/m;->m()Lau/s;

    move-result-object v3

    invoke-virtual {v3}, Lau/s;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/googlenav/ui/bm;

    invoke-direct {v7}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v8, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v8}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/bm;->e(I)Lcom/google/googlenav/ui/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_90
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lam/b;->l(I)I

    move-result v7

    if-ge v3, v7, :cond_24

    const/16 v7, 0x11

    invoke-virtual {v6, v7, v3}, Lam/b;->c(II)I

    move-result v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/bq;->a:Lau/b;

    invoke-virtual {v8, v7}, Lau/b;->k(I)Lam/b;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lam/b;->k(I)Z

    move-result v9

    if-nez v9, :cond_b2

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lam/b;->k(I)Z

    move-result v9

    if-eqz v9, :cond_f4

    :cond_b2
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lam/b;->k(I)Z

    move-result v10

    if-eqz v10, :cond_cb

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cb
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lam/b;->k(I)Z

    move-result v10

    if-eqz v10, :cond_e0

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e0
    new-instance v10, Lcom/google/googlenav/ui/bm;

    invoke-direct {v10}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v10, v9}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/google/googlenav/ui/bm;->e(I)Lcom/google/googlenav/ui/bm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_f4
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lam/b;->k(I)Z

    move-result v9

    if-eqz v9, :cond_14a

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlenav/ui/wizard/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Las/b;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14a

    sget-object v9, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v8

    new-instance v9, Lcom/google/googlenav/ui/bm;

    invoke-direct {v9}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v9, v8}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/googlenav/ui/bm;->e(I)Lcom/google/googlenav/ui/bm;

    move-result-object v7

    sget-char v8, Lcom/google/googlenav/ui/bw;->R:C

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/googlenav/ui/wizard/bq;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v9}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_14a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_90

    :cond_14e
    const/4 v1, 0x1

    goto/16 :goto_3b

    :cond_151
    new-instance v0, Lbb/o;

    const/4 v1, 0x0

    const/16 v2, 0x37

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-object v0
.end method
