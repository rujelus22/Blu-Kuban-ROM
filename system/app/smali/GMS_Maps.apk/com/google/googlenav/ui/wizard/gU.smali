.class public Lcom/google/googlenav/ui/wizard/gU;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:I

.field private g:Lcom/google/googlenav/ah;

.field private h:Lcom/google/googlenav/L;

.field private i:Lcom/google/googlenav/bd;

.field private j:Lcom/google/googlenav/ui/view/android/bs;

.field private final k:Lcom/google/googlenav/be;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bd;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    new-instance v0, Lcom/google/googlenav/ui/wizard/gV;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gV;-><init>(Lcom/google/googlenav/ui/wizard/gU;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->k:Lcom/google/googlenav/be;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gU;->h:Lcom/google/googlenav/L;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gU;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->h:Lcom/google/googlenav/L;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gU;->l()V

    return-void
.end method

.method private a(ILcom/google/googlenav/be;)V
    .registers 8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_62

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/bd;->b(Lcom/google/googlenav/ah;Lcom/google/googlenav/be;)V

    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v3, p2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v4, p2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_38
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/bd;->b(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v3, p2}, Lcom/google/googlenav/bd;->b(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/bd;->b(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_52
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/bd;->b(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_5a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v4, p2}, Lcom/google/googlenav/bd;->b(Lcom/google/googlenav/ah;ILcom/google/googlenav/be;)V

    goto :goto_d

    :pswitch_data_62
    .packed-switch 0x517
        :pswitch_e
        :pswitch_16
        :pswitch_1e
        :pswitch_2f
        :pswitch_38
        :pswitch_41
        :pswitch_49
        :pswitch_52
        :pswitch_5a
        :pswitch_26
    .end packed-switch
.end method

.method private static a(Ljava/util/List;II)V
    .registers 6

    new-instance v0, Lbd/at;

    invoke-static {p1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-direct {v0, v1, v2, p2}, Lbd/at;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gU;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/gU;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    return v0
.end method

.method private g()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->aw()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private h()V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v3

    invoke-virtual {v3}, LaJ/B;->e()I

    move-result v3

    invoke-static {v2, v3}, LaJ/B;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->N()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "num"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_54
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "start"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_6a
    :goto_6a
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "/maps/place"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "cid"

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v5}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "view"

    const-string v5, "feature"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "mcsrc"

    const-string v5, "photo"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v0, :cond_a1

    const-string v4, "start"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "num"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_a1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "www.google.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "/maps/photos/flagImage"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hl"

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "latlng"

    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "photofeatureurl"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    return-void

    :cond_e7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->O()[Lcom/google/googlenav/au;

    move-result-object v0

    array-length v0, v0

    goto/16 :goto_6a

    :cond_f0
    move v0, v1

    goto/16 :goto_54
.end method

.method private i()I
    .registers 3

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    packed-switch v1, :pswitch_data_18

    :goto_6
    return v0

    :pswitch_7
    const/16 v0, 0x4b

    const-string v1, "b"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    const/4 v0, 0x2

    goto :goto_6

    :pswitch_13
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/gU;->a(I)V

    goto :goto_6

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public Z_()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gU;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v3, -0x1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_36

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/gU;->a(I)V

    const/4 v0, 0x0

    :goto_9
    return v0

    :pswitch_a
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/gU;->a(I)V

    goto :goto_9

    :pswitch_f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/bd;->c(Lcom/google/googlenav/ah;Lcom/google/googlenav/be;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gU;->a(I)V

    goto :goto_9

    :pswitch_1b
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->h:Lcom/google/googlenav/L;

    const/16 v2, 0x425

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->k:Lcom/google/googlenav/be;

    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/ui/wizard/gU;->a(ILcom/google/googlenav/be;)V

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/gU;->a(I)V

    goto :goto_9

    :pswitch_2f
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gU;->h()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gU;->a()V

    goto :goto_9

    :pswitch_data_36
    .packed-switch 0x514
        :pswitch_a
        :pswitch_f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_2f
    .end packed-switch
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->f:Lcom/google/googlenav/ui/view/android/bs;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->j:Lcom/google/googlenav/ui/view/android/bs;

    new-instance v0, Lcom/google/googlenav/ui/wizard/gX;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gX;-><init>(Lcom/google/googlenav/ui/wizard/gU;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->j:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->j:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->j:Lcom/google/googlenav/ui/view/android/bs;

    :cond_1c
    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->i:Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gU;->g:Lcom/google/googlenav/ah;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/be;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    return-void
.end method

.method public f()Ljava/util/List;
    .registers 6

    const/16 v4, 0x51b

    const/16 v3, 0x42c

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/gU;->a:I

    packed-switch v1, :pswitch_data_76

    :goto_d
    return-object v0

    :pswitch_e
    const/16 v1, 0x431

    const/16 v2, 0x514

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x434

    const/16 v2, 0x515

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x430

    const/16 v2, 0x517

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x432

    const/16 v2, 0x520

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gU;->g()Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x303

    const/16 v2, 0x521

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    :cond_37
    const/16 v1, 0x516

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    goto :goto_d

    :pswitch_3d
    const/16 v1, 0x42f

    const/16 v2, 0x518

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x42e

    const/16 v2, 0x519

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x428

    invoke-static {v0, v1, v4}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x51a

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    goto :goto_d

    :pswitch_56
    const/16 v1, 0x42b

    const/16 v2, 0x51c

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x427

    const/16 v2, 0x51d

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x42d

    const/16 v2, 0x51e

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x429

    invoke-static {v0, v1, v4}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    const/16 v1, 0x51f

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/ui/wizard/gU;->a(Ljava/util/List;II)V

    goto :goto_d

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_e
        :pswitch_56
        :pswitch_3d
    .end packed-switch
.end method

.method public o()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gU;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->o()V

    :cond_a
    return-void
.end method
