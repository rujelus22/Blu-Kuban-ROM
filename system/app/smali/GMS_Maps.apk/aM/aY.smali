.class public LaM/aY;
.super LaM/h;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/googlenav/ui/bn;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, LaM/h;-><init>(LaM/i;)V

    .line 72
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, LaM/aY;->d:Lcom/google/googlenav/ui/bn;

    .line 73
    return-void
.end method

.method private a(I)I
    .registers 3
    .parameter

    .prologue
    .line 331
    sparse-switch p1, :sswitch_data_10

    .line 341
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 333
    :sswitch_5
    const/4 v0, 0x4

    goto :goto_4

    .line 335
    :sswitch_7
    const/16 v0, 0x45

    goto :goto_4

    .line 337
    :sswitch_a
    const/4 v0, 0x1

    goto :goto_4

    .line 339
    :sswitch_c
    const/16 v0, 0x39

    goto :goto_4

    .line 331
    nop

    :sswitch_data_10
    .sparse-switch
        0x10 -> :sswitch_a
        0x258 -> :sswitch_c
        0x25c -> :sswitch_7
        0x262 -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic a(LaM/aY;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, LaM/aY;->a(I)I

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/String;LaM/i;)Lcom/google/googlenav/ui/aW;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 454
    new-instance v0, LaM/bb;

    invoke-direct {v0, p1}, LaM/bb;-><init>(LaM/i;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->e:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ai;Lcom/google/googlenav/settings/e;)Ljava/lang/Integer;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 270
    invoke-virtual {p2}, Lcom/google/googlenav/settings/e;->d()I

    move-result v0

    .line 271
    sget-object v4, LaM/ba;->a:[I

    invoke-virtual {p2}, Lcom/google/googlenav/settings/e;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_52

    .line 296
    const/4 v0, 0x0

    .line 298
    :goto_13
    return-object v0

    .line 275
    :pswitch_14
    iget-object v2, p0, LaM/aY;->c:LaM/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, LaM/i;->a(Lat/B;I)Z

    move-result v2

    .line 277
    if-nez v2, :cond_21

    move v0, v1

    .line 298
    :cond_21
    :goto_21
    :pswitch_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13

    .line 282
    :pswitch_26
    iget-object v4, p0, LaM/aY;->c:LaM/i;

    invoke-virtual {v4}, LaM/i;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/aA;->e()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 284
    :goto_40
    if-nez v2, :cond_21

    move v0, v1

    .line 285
    goto :goto_21

    :cond_44
    move v2, v3

    .line 282
    goto :goto_40

    .line 290
    :pswitch_46
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bq()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_50

    .line 291
    :goto_4c
    if-nez v2, :cond_21

    move v0, v1

    .line 292
    goto :goto_21

    :cond_50
    move v2, v3

    .line 290
    goto :goto_4c

    .line 271
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_21
        :pswitch_14
        :pswitch_26
        :pswitch_46
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/ca;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 461
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/google/googlenav/ca;->l()I

    move-result v0

    if-lez v0, :cond_25

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/bn;->bm:C

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

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

    .line 464
    :cond_25
    return-object p0
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/cn;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x30f

    const/16 v9, 0x30e

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 494
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->c()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p1}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_11
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->a()Z

    move-result v3

    .line 498
    if-eqz v3, :cond_8a

    invoke-virtual {p1, v7}, Lcom/google/googlenav/cn;->d(Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 505
    :goto_1c
    if-eqz v3, :cond_90

    invoke-static {v10}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_22
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    const/16 v4, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_66

    .line 510
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

    .line 513
    :cond_66
    if-eqz v3, :cond_95

    .line 514
    invoke-static {v10}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_76
    return-object v0

    .line 494
    :cond_77
    const/16 v0, 0x4ee

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 498
    :cond_8a
    invoke-virtual {p1, v6}, Lcom/google/googlenav/cn;->c(Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1c

    .line 505
    :cond_90
    invoke-static {v9}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 518
    :cond_95
    invoke-static {v9}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76
.end method

.method private b(Lcom/google/googlenav/ai;Lcom/google/googlenav/settings/e;)Lcom/google/googlenav/ui/bf;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1, p2}, LaM/aY;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/settings/e;)Ljava/lang/Integer;

    move-result-object v0

    .line 310
    if-nez v0, :cond_8

    .line 311
    const/4 v0, 0x0

    .line 320
    :goto_7
    return-object v0

    .line 315
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    .line 316
    iget-object v1, p0, LaM/aY;->d:Lcom/google/googlenav/ui/bn;

    invoke-virtual {p2}, Lcom/google/googlenav/settings/e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bn;->c(I)LS/f;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, LaM/aY;->c:LaM/i;

    invoke-virtual {v3}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/F;->c()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bf;->a(LS/f;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/bf;

    move-result-object v0

    goto :goto_7

    .line 320
    :cond_31
    iget-object v0, p0, LaM/aY;->d:Lcom/google/googlenav/ui/bn;

    invoke-virtual {p2}, Lcom/google/googlenav/settings/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->c(I)LS/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bf;->a(LS/f;)Lcom/google/googlenav/ui/bf;

    move-result-object v0

    goto :goto_7
.end method

.method private b(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/be;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 352
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_34

    .line 353
    :cond_12
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aw()Lcom/google/googlenav/settings/e;

    move-result-object v0

    .line 354
    invoke-direct {p0, p1, v0}, LaM/aY;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/settings/e;)Lcom/google/googlenav/ui/bf;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 373
    :goto_21
    new-instance v2, LaM/aZ;

    invoke-direct {v2, p0}, LaM/aZ;-><init>(LaM/aY;)V

    .line 388
    if-eqz v1, :cond_2b

    .line 389
    invoke-virtual {p2, v1}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;

    .line 391
    :cond_2b
    if-eqz v0, :cond_30

    .line 392
    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/be;->b(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;

    .line 394
    :cond_30
    invoke-virtual {p2, v2}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/be;

    .line 395
    return-void

    .line 357
    :cond_34
    sget-object v0, Lcom/google/googlenav/settings/e;->a:Lcom/google/googlenav/settings/e;

    invoke-direct {p0, p1, v0}, LaM/aY;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/settings/e;)Lcom/google/googlenav/ui/bf;

    move-result-object v2

    .line 358
    sget-object v0, Lcom/google/googlenav/settings/e;->c:Lcom/google/googlenav/settings/e;

    invoke-direct {p0, p1, v0}, LaM/aY;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/settings/e;)Lcom/google/googlenav/ui/bf;

    move-result-object v3

    .line 359
    if-eqz v2, :cond_51

    iget-object v0, v2, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    if-eqz v0, :cond_51

    iget-object v0, v2, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    check-cast v0, Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_51

    move-object v2, v1

    .line 363
    :cond_51
    if-eqz v3, :cond_6a

    iget-object v0, v3, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    if-eqz v0, :cond_6a

    iget-object v0, v3, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    check-cast v0, Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_6a

    move-object v0, v1

    .line 367
    :goto_62
    if-nez v2, :cond_68

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 369
    goto :goto_21

    :cond_68
    move-object v1, v2

    goto :goto_21

    :cond_6a
    move-object v0, v3

    goto :goto_62
.end method

.method private c()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 601
    iget-object v0, p0, LaM/aY;->e:Landroid/view/LayoutInflater;

    if-nez v0, :cond_14

    .line 602
    iget-object v0, p0, LaM/aY;->d:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, LaM/aY;->e:Landroid/view/LayoutInflater;

    .line 605
    :cond_14
    iget-object v0, p0, LaM/aY;->e:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ai;)LaQ/F;
    .registers 3
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, LaM/aY;->b()LaM/m;

    move-result-object v0

    invoke-virtual {v0}, LaM/m;->bg()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bx()Z

    move-result v0

    if-nez v0, :cond_16

    .line 116
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bG;->a(Lcom/google/googlenav/ai;Z)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    .line 118
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public a()Lcom/google/googlenav/ui/view/d;
    .registers 6

    .prologue
    .line 77
    iget-object v0, p0, LaM/aY;->c:LaM/i;

    invoke-virtual {v0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 79
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->c()B

    move-result v1

    if-nez v1, :cond_10

    .line 80
    const/4 v0, 0x0

    .line 84
    :goto_f
    return-object v0

    .line 82
    :cond_10
    invoke-virtual {p0, v0}, LaM/aY;->d(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/bd;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v0}, LaM/aY;->c(Lcom/google/googlenav/ai;)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v2

    iget-object v3, p0, LaM/aY;->c:LaM/i;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;ZLandroid/view/View;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    goto :goto_f
.end method

.method protected a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/be;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, LaM/aY;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/be;)V

    .line 256
    return-void
.end method

.method a(Lcom/google/googlenav/ai;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 473
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    .line 474
    if-nez v0, :cond_8

    .line 490
    :cond_7
    :goto_7
    return-void

    .line 480
    :cond_8
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ca;->c(Z)Lcom/google/googlenav/cn;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_7

    .line 484
    invoke-virtual {v0, v1}, Lcom/google/googlenav/cn;->c(Z)Ljava/lang/String;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_7

    .line 488
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaM/aY;->a(Ljava/lang/String;Lcom/google/googlenav/cn;)Ljava/lang/String;

    move-result-object v0

    .line 489
    sget-object v1, Lcom/google/googlenav/ui/aV;->h:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method protected a(Lcom/google/googlenav/ai;Ljava/util/Vector;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0}, LaM/aY;->b()LaM/m;

    move-result-object v1

    .line 202
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    move-object v0, p1

    .line 203
    check-cast v0, Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LaM/aY;->c:LaM/i;

    invoke-static {v0, v2}, LaM/aY;->a(Ljava/lang/String;LaM/i;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 209
    :cond_27
    invoke-virtual {v1}, LaM/m;->bf()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 210
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ai()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 211
    const/16 v0, 0x213

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->h:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 215
    :cond_42
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bw()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 216
    const/16 v0, 0x5f5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->h:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 220
    :cond_57
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bv()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 221
    const/16 v0, 0x1f0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->h:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 226
    :cond_6c
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->y()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 227
    invoke-virtual {v1}, LaM/m;->bl()Z

    move-result v0

    invoke-static {p1, v0}, LaM/aR;->c(Lcom/google/googlenav/ai;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->h:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 233
    :cond_83
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bx()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 234
    const/16 v0, 0x3bc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->br:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    :cond_98
    invoke-virtual {p0, p1, p2}, LaM/aY;->a(Lcom/google/googlenav/ai;Ljava/util/List;)V

    .line 239
    return-void
.end method

.method protected final b()LaM/m;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, LaM/aY;->c:LaM/i;

    check-cast v0, LaM/m;

    return-object v0
.end method

.method protected b(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(Lcom/google/googlenav/ai;)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p1}, LaM/aY;->a(Lcom/google/googlenav/ai;)LaQ/F;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1c

    .line 96
    invoke-direct {p0}, LaM/aY;->c()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v1}, LaQ/F;->c()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-interface {v1, v0}, LaQ/F;->a(Landroid/view/View;)LaQ/bE;

    move-result-object v2

    .line 98
    iget-object v3, p0, LaM/aY;->c:LaM/i;

    invoke-interface {v1, v3, v2}, LaQ/F;->a(Lcom/google/googlenav/ui/g;LaQ/bE;)V

    .line 101
    :cond_1c
    return-object v0
.end method

.method d(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/bd;
    .registers 8
    .parameter

    .prologue
    .line 125
    new-instance v2, Ljava/util/Vector;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 130
    const/4 v0, 0x0

    .line 131
    new-instance v3, Lcom/google/googlenav/ui/be;

    invoke-direct {v3}, Lcom/google/googlenav/ui/be;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, LaM/aY;->b(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 139
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->aI()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 140
    const/16 v4, 0x578

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/aV;->ad:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/be;->b(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    .line 151
    :cond_33
    :goto_33
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 153
    const/4 v0, -0x1

    .line 159
    :goto_3a
    invoke-virtual {p0, p1, v2}, LaM/aY;->a(Lcom/google/googlenav/ai;Ljava/util/Vector;)V

    .line 161
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v1

    if-eqz v1, :cond_8e

    const/4 v1, 0x1

    .line 164
    :goto_44
    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;)Lcom/google/googlenav/ui/be;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/be;->a(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->d(I)Lcom/google/googlenav/ui/be;

    .line 169
    invoke-virtual {p0}, LaM/aY;->b()LaM/m;

    move-result-object v0

    invoke-virtual {v0}, LaM/m;->bg()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bx()Z

    move-result v0

    if-nez v0, :cond_64

    .line 171
    sget-object v0, Lcom/google/googlenav/ui/bd;->g:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/be;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/be;

    .line 174
    :cond_64
    invoke-virtual {p0, p1, v3}, LaM/aY;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/be;)V

    .line 176
    invoke-virtual {v3}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    return-object v0

    .line 144
    :cond_6c
    const/16 v4, 0x34

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/aV;->ad:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/be;->b(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    goto :goto_33

    .line 155
    :cond_7c
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->au()Lcom/google/googlenav/ca;

    move-result-object v4

    invoke-static {v1, v4}, LaM/aY;->a(Ljava/lang/String;Lcom/google/googlenav/ca;)Ljava/lang/String;

    move-result-object v1

    .line 156
    sget-object v4, Lcom/google/googlenav/ui/aV;->m:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3a

    .line 161
    :cond_8e
    const/16 v1, 0x12

    goto :goto_44
.end method
