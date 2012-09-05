.class public Law/o;
.super Ljava/lang/Object;

# interfaces
.implements Law/d;


# instance fields
.field private final a:Lcom/google/googlenav/ui/D;

.field private final b:Law/f;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/D;Law/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, Law/o;->b:Law/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/D;Law/f;Law/p;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Law/o;-><init>(Lcom/google/googlenav/ui/D;Law/f;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14

    const/4 v7, 0x0

    const/16 v6, 0xbbd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/c;

    const/16 v3, 0x6c

    const-string v4, "c"

    invoke-virtual {v0}, Law/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget v3, v0, Law/c;->d:I

    sparse-switch v3, :sswitch_data_10c

    :cond_1b
    :goto_1b
    iget-object v1, p0, Law/o;->b:Law/f;

    if-eqz v1, :cond_24

    iget-object v1, p0, Law/o;->b:Law/f;

    invoke-interface {v1, v0}, Law/f;->a(Law/c;)V

    :cond_24
    return-void

    :sswitch_25
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v2, v2}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->f(Z)V

    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v1}, LaY/Y;->I()LaY/i;

    move-result-object v1

    iget-object v3, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v3

    invoke-virtual {v3}, LaY/Y;->I()LaY/i;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {v1, v2}, LaY/i;->a(B)V

    :cond_48
    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Map"

    invoke-static {v1}, Lac/a;->a(Ljava/lang/String;)V

    goto :goto_1b

    :sswitch_54
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->b(I)V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Places"

    invoke-static {v1}, Lac/a;->a(Ljava/lang/String;)V

    goto :goto_1b

    :sswitch_66
    iget-object v3, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3, v1, v1}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->f(Z)V

    goto :goto_1b

    :sswitch_71
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/ay;->l()V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Navigation"

    invoke-static {v1}, Lac/a;->a(Ljava/lang/String;)V

    goto :goto_1b

    :sswitch_86
    iget-object v3, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    iget v4, v0, Law/c;->d:I

    if-ne v4, v6, :cond_9e

    :goto_8c
    const/16 v2, 0x13c

    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/ui/D;->a(ZI)V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Latitude"

    invoke-static {v1}, Lac/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_9e
    move v1, v2

    goto :goto_8c

    :sswitch_a0
    iget-object v3, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    iget v4, v0, Law/c;->d:I

    if-ne v4, v6, :cond_ad

    :goto_a6
    const/16 v2, 0x155

    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/ui/D;->a(ZI)V

    goto/16 :goto_1b

    :cond_ad
    move v1, v2

    goto :goto_a6

    :sswitch_af
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->N()V

    goto/16 :goto_1b

    :sswitch_b6
    iget-object v3, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/D;->f(Z)V

    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v2, v2}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    goto/16 :goto_1b

    :sswitch_c2
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    new-instance v2, Lau/j;

    invoke-direct {v2}, Lau/j;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->b(Lau/k;)V

    goto/16 :goto_1b

    :sswitch_ce
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v7, v7}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/O;)V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Check in"

    invoke-static {v1}, Lac/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1b

    :sswitch_e0
    sget-object v1, Law/b;->l:Law/c;

    sget v3, Law/c;->a:I

    invoke-virtual {v1, v3}, Law/c;->a(I)V

    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aJ()LaO/a;

    move-result-object v1

    invoke-virtual {v1, v2}, LaO/a;->a(Z)V

    goto/16 :goto_1b

    :sswitch_f2
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/ay;->h()V

    goto/16 :goto_1b

    :sswitch_fd
    iget-object v1, p0, Law/o;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->X()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    goto/16 :goto_1b

    :sswitch_data_10c
    .sparse-switch
        0x9cd -> :sswitch_fd
        0x9d4 -> :sswitch_f2
        0xbb9 -> :sswitch_25
        0xbba -> :sswitch_54
        0xbbb -> :sswitch_71
        0xbbc -> :sswitch_66
        0xbbd -> :sswitch_86
        0xbbe -> :sswitch_86
        0xbbf -> :sswitch_b6
        0xbc0 -> :sswitch_af
        0xbc1 -> :sswitch_c2
        0xbc2 -> :sswitch_ce
        0xbc3 -> :sswitch_a0
        0xbc4 -> :sswitch_e0
    .end sparse-switch
.end method
