.class public Lcom/google/googlenav/ui/wizard/bZ;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/cc;

.field private g:Ljava/util/List;

.field private h:I

.field private i:Ljava/util/List;

.field private j:Laf/h;

.field private k:Landroid/app/Activity;

.field private l:LaX/i;

.field private m:Lay/a;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lay/a;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->h()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Landroid/app/Activity;

    :cond_f
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bZ;->m:Lay/a;

    new-instance v0, LaX/i;

    const/4 v1, 0x0

    sget v2, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v0, p2, v1, v2}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->l:LaX/i;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bZ;)I
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->h()I

    move-result v0

    return v0
.end method

.method private a(Lax/aP;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cd;

    invoke-direct {v1, p1, p2}, Lcom/google/googlenav/ui/wizard/cd;-><init>(Lax/aP;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_25

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    :goto_24
    return-void

    :cond_25
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->f()V

    goto :goto_24
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bZ;Lax/aP;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lax/aP;I)V

    return-void
.end method

.method private e()V
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lax/aP;

    const/16 v0, 0x155

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    invoke-virtual {v3}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Laf/h;->b(J)Z

    move-result v4

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/Q;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->k:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bZ;->m:Lay/a;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/bZ;->l:LaX/i;

    new-instance v7, Lcom/google/googlenav/ui/wizard/ca;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/wizard/ca;-><init>(Lcom/google/googlenav/ui/wizard/bZ;)V

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/view/dialog/Q;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lax/aP;ZLay/a;LaX/i;Lcom/google/googlenav/ui/view/dialog/U;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->f:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_9
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method private g()V
    .registers 16

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v11

    new-instance v2, Laf/h;

    invoke-direct {v2}, Laf/h;-><init>()V

    new-instance v5, Laf/h;

    invoke-direct {v5}, Laf/h;-><init>()V

    new-instance v6, Laf/h;

    invoke-direct {v6}, Laf/h;-><init>()V

    new-instance v7, Laf/h;

    invoke-direct {v7}, Laf/h;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v8, v12

    move v4, v12

    :goto_23
    if-ge v8, v9, :cond_81

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/cd;

    iget-object v10, v0, Lcom/google/googlenav/ui/wizard/cd;->a:Lax/aP;

    invoke-virtual {v10}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget v10, v0, Lcom/google/googlenav/ui/wizard/cd;->b:I

    packed-switch v10, :pswitch_data_a6

    move v0, v4

    :goto_3d
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v4, v0

    goto :goto_23

    :pswitch_42
    invoke-virtual {v2, v13, v14}, Laf/h;->a(J)V

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cd;->a:Lax/aP;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    invoke-virtual {v0, v13, v14}, Laf/h;->d(J)Z

    move v0, v1

    goto :goto_3d

    :pswitch_51
    invoke-virtual {v5, v13, v14}, Laf/h;->a(J)V

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cd;->a:Lax/aP;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    invoke-virtual {v0, v13, v14}, Laf/h;->d(J)Z

    move v0, v1

    goto :goto_3d

    :pswitch_60
    invoke-virtual {v6, v13, v14}, Laf/h;->a(J)V

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cd;->a:Lax/aP;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    invoke-virtual {v0, v13, v14}, Laf/h;->b(J)Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    invoke-virtual {v0, v13, v14}, Laf/h;->a(J)V

    move v0, v1

    goto :goto_3d

    :pswitch_77
    invoke-virtual {v7, v13, v14}, Laf/h;->a(J)V

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cd;->a:Lax/aP;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    move v0, v1

    goto :goto_3d

    :cond_81
    if-eqz v4, :cond_a0

    iget-object v10, p0, Lcom/google/googlenav/ui/wizard/bZ;->a:Lcom/google/googlenav/ui/wizard/cc;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v13

    new-instance v0, Lcom/google/googlenav/ui/wizard/cb;

    move-object v1, p0

    move-object v4, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/ui/wizard/cb;-><init>(Lcom/google/googlenav/ui/wizard/bZ;Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;Lcom/google/googlenav/ui/wizard/cc;Ljava/util/List;)V

    invoke-virtual {v13, v0}, Lat/h;->c(Lat/g;)V

    :goto_95
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:Ljava/util/List;

    iput v12, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->a:Lcom/google/googlenav/ui/wizard/cc;

    return-void

    :cond_a0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->a:Lcom/google/googlenav/ui/wizard/cc;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cc;->a()V

    goto :goto_95

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_42
        :pswitch_51
        :pswitch_60
        :pswitch_77
    .end packed-switch
.end method

.method private h()I
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    if-lez v1, :cond_10

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->f()V

    const/4 v0, 0x3

    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    goto :goto_f
.end method


# virtual methods
.method public W_()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->a:Lcom/google/googlenav/ui/wizard/cc;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:Ljava/util/List;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/bZ;->a:Lcom/google/googlenav/ui/wizard/cc;

    iput v2, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->l()V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/cc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bZ;->a:Lcom/google/googlenav/ui/wizard/cc;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bZ;->l()V

    return-void
.end method

.method protected b()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "FRIENDS_INVITE_REJECTED"

    invoke-interface {v0, v1}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_28

    :try_start_10
    invoke-static {v0}, Laf/h;->a([B)Laf/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_1f

    :goto_16
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bZ;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void

    :catch_1f
    move-exception v0

    new-instance v0, Laf/h;

    invoke-direct {v0}, Laf/h;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    goto :goto_16

    :cond_28
    new-instance v0, Laf/h;

    invoke-direct {v0}, Laf/h;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    goto :goto_16
.end method

.method protected c()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->h:I

    :try_start_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    invoke-virtual {v0}, Laf/h;->c()[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "FRIENDS_INVITE_REJECTED"

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1c} :catch_25
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_23

    :goto_1c
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->j:Laf/h;

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->a:Lcom/google/googlenav/ui/wizard/cc;

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/bZ;->g:Ljava/util/List;

    return-void

    :catch_23
    move-exception v0

    goto :goto_1c

    :catch_25
    move-exception v0

    goto :goto_1c
.end method
