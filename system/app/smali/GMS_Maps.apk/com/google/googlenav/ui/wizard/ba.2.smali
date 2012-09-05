.class public Lcom/google/googlenav/ui/wizard/ba;
.super Lcom/google/googlenav/ui/wizard/fX;


# instance fields
.field private k:LaE/h;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaE/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/fX;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ba;->k:LaE/h;

    return-void
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


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ba;->e()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    return-object v0
.end method

.method public a(LaJ/B;Lt/y;Ljava/lang/String;LaJ/H;IILjava/lang/String;Lcom/google/googlenav/ui/wizard/z;Z)V
    .registers 12

    new-instance v0, Lcom/google/googlenav/ui/wizard/gg;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gg;-><init>(Lcom/google/googlenav/ui/wizard/fX;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput-object p4, v0, Lcom/google/googlenav/ui/wizard/gg;->d:LaJ/H;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput p5, v0, Lcom/google/googlenav/ui/wizard/gg;->e:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput p6, v0, Lcom/google/googlenav/ui/wizard/gg;->f:I

    if-eqz p9, :cond_3b

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ba;->h:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    const/16 v1, 0x3a1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/gg;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/googlenav/ui/wizard/gg;->g:I

    :goto_27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/gg;->a:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput-object p2, v0, Lcom/google/googlenav/ui/wizard/gg;->b:Lt/y;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ba;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iput-object p7, v0, Lcom/google/googlenav/ui/wizard/gg;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/googlenav/ui/wizard/ba;->j:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ba;->l()V

    return-void

    :cond_3b
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ba;->h:I

    goto :goto_27
.end method

.method protected a(Lat/g;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/gg;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ba;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ba;->k:LaE/h;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/gg;->l:Lcom/google/googlenav/ui/e;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ba;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/L;->a(LaE/h;LaJ/B;ZLjava/lang/String;)V

    :cond_26
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/fX;->a(Lat/g;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_34

    :pswitch_5
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/fX;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_9
    return v0

    :pswitch_a
    const/16 v1, 0x3a5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/lang/String;II)V

    goto :goto_9

    :pswitch_14
    const/16 v1, 0x39b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/lang/String;II)V

    goto :goto_9

    :pswitch_1e
    const/16 v1, 0x3a4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/lang/String;II)V

    goto :goto_9

    :pswitch_29
    const/16 v1, 0x3a1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/lang/String;II)V

    goto :goto_9

    :pswitch_data_34
    .packed-switch 0x5de
        :pswitch_a
        :pswitch_14
        :pswitch_1e
        :pswitch_5
        :pswitch_29
    .end packed-switch
.end method

.method protected b()V
    .registers 1

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/fX;->b()V

    return-void
.end method

.method public e()Ljava/util/List;
    .registers 4

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/ba;->h:I

    packed-switch v1, :pswitch_data_2e

    :goto_9
    return-object v0

    :pswitch_a
    const/16 v1, 0x3a5

    const/16 v2, 0x5de

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/util/List;II)V

    const/16 v1, 0x39b

    const/16 v2, 0x5df

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/util/List;II)V

    const/16 v1, 0x3a4

    const/16 v2, 0x5e0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/util/List;II)V

    const/16 v1, 0x3a1

    const/16 v2, 0x5e2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/util/List;II)V

    const/16 v1, 0x3a3

    const/16 v2, 0x5e1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ba;->a(Ljava/util/List;II)V

    goto :goto_9

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method protected f()Lcom/google/googlenav/ui/view/android/bs;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/bc;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bc;-><init>(Lcom/google/googlenav/ui/wizard/ba;)V

    return-object v0
.end method
