.class public Lcom/google/googlenav/ui/wizard/cM;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/J;

.field private b:LaM/am;

.field private final c:LS/g;

.field private final i:LT/f;

.field private j:Lcom/google/googlenav/ui/ay;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 83
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->c:LS/g;

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->c:LS/g;

    sget-char v1, Lcom/google/googlenav/ui/bn;->ai:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->b:LaM/am;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 363
    if-nez p1, :cond_4

    .line 384
    :cond_3
    :goto_3
    return-object v2

    .line 367
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    :goto_1c
    check-cast v0, LT/f;

    .line 375
    if-nez v0, :cond_6c

    .line 376
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-char v0, Lcom/google/googlenav/ui/bn;->aj:C

    :goto_32
    invoke-interface {v3, v0}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    move-object v3, v0

    .line 381
    :goto_39
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x3fb

    move v6, v0

    .line 384
    :goto_46
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/googlenav/J;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    :goto_56
    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, p1}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    move-object v2, v0

    goto :goto_3

    :cond_61
    move-object v0, v2

    .line 373
    goto :goto_1c

    .line 376
    :cond_63
    sget-char v0, Lcom/google/googlenav/ui/bn;->ad:C

    goto :goto_32

    .line 381
    :cond_66
    const/16 v0, 0x3f6

    move v6, v0

    goto :goto_46

    :cond_6a
    move-object v4, v2

    .line 384
    goto :goto_56

    :cond_6c
    move-object v3, v0

    goto :goto_39
.end method

.method private a(LaM/i;)Z
    .registers 4
    .parameter

    .prologue
    .line 558
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_18

    .line 561
    :cond_16
    const/4 v0, 0x1

    .line 565
    :goto_17
    return v0

    .line 562
    :cond_18
    instance-of v0, p1, LaM/y;

    if-eqz v0, :cond_27

    .line 563
    check-cast p1, LaM/y;

    invoke-virtual {p1}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/layer/m;)Z

    move-result v0

    goto :goto_17

    .line 565
    :cond_27
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/layer/m;)Z
    .registers 4
    .parameter

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string v1, "LayerTransit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "LayerWikipedia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private c(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 272
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x246

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cM;->c:LS/g;

    sget-char v4, Lcom/google/googlenav/ui/bn;->af:C

    invoke-interface {v3, v4}, LS/g;->e(C)LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    invoke-interface {v4}, Lcom/google/googlenav/J;->e()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    :goto_1d
    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3f0

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 279
    return-void

    :cond_2c
    move-object v4, v2

    .line 272
    goto :goto_1d
.end method

.method private d(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 282
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x249

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cM;->c:LS/g;

    sget-char v4, Lcom/google/googlenav/ui/bn;->ag:C

    invoke-interface {v3, v4}, LS/g;->e(C)LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    invoke-interface {v4}, Lcom/google/googlenav/J;->d()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    :goto_1d
    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3f1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 289
    return-void

    :cond_2c
    move-object v4, v2

    .line 282
    goto :goto_1d
.end method

.method private e(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 292
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x247

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cM;->c:LS/g;

    sget-char v4, Lcom/google/googlenav/ui/bn;->aA:C

    invoke-interface {v3, v4}, LS/g;->e(C)LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    invoke-interface {v4}, Lcom/google/googlenav/J;->b()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    :goto_1e
    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3f3

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 300
    return-void

    :cond_2d
    move-object v4, v2

    .line 292
    goto :goto_1e
.end method

.method private f(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 303
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x248

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cM;->c:LS/g;

    sget-char v4, Lcom/google/googlenav/ui/bn;->av:C

    invoke-interface {v3, v4}, LS/g;->e(C)LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    invoke-interface {v4}, Lcom/google/googlenav/J;->b()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2d

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    :goto_1e
    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3f4

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 311
    return-void

    :cond_2d
    move-object v4, v2

    .line 303
    goto :goto_1e
.end method

.method private g(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 314
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x23e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cM;->c:LS/g;

    sget-char v4, Lcom/google/googlenav/ui/bn;->ax:C

    invoke-interface {v3, v4}, LS/g;->e(C)LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->a:Lcom/google/googlenav/J;

    invoke-interface {v4}, Lcom/google/googlenav/J;->c()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    :goto_1d
    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3f7

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 321
    return-void

    :cond_2c
    move-object v4, v2

    .line 314
    goto :goto_1d
.end method

.method private h(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 4
    .parameter

    .prologue
    .line 337
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 338
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_13

    .line 341
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 343
    :cond_13
    return-void
.end method

.method private i(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 4
    .parameter

    .prologue
    .line 346
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const-string v1, "LayerWikipedia"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_13

    .line 350
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 352
    :cond_13
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 14
    .parameter

    .prologue
    .line 151
    new-instance v10, Lcom/google/googlenav/ui/view/android/L;

    const/4 v0, 0x1

    invoke-direct {v10, p1, v0}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->b:LaM/am;

    invoke-virtual {v0}, LaM/am;->K()Ljava/util/Vector;

    move-result-object v11

    .line 155
    const/4 v0, 0x0

    move v9, v0

    :goto_e
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_75

    .line 156
    invoke-virtual {v11, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LaM/i;

    .line 157
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/wizard/cM;->a(LaM/i;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 155
    :goto_21
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_e

    .line 160
    :cond_25
    invoke-virtual {v4}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    .line 162
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/4 v1, 0x0

    invoke-virtual {v4}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4}, LaM/i;->aL()LS/f;

    move-result-object v4

    check-cast v4, LT/f;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    new-instance v6, Lcom/google/googlenav/ui/view/a;

    const/16 v7, 0x3e9

    const/4 v8, 0x0

    invoke-direct {v6, v7, v9, v8}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/aV;->aA:Lcom/google/googlenav/ui/aV;

    sget-object v8, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_21

    .line 172
    :cond_53
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v4}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, LaM/i;->aL()LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->i:LT/f;

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3e9

    const/4 v7, 0x0

    invoke-direct {v5, v6, v9, v7}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_21

    .line 182
    :cond_75
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->x()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 183
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->d(Lcom/google/googlenav/ui/view/android/L;)V

    .line 186
    :cond_82
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->e(Lcom/google/googlenav/ui/view/android/L;)V

    .line 187
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->f(Lcom/google/googlenav/ui/view/android/L;)V

    .line 188
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->h(Lcom/google/googlenav/ui/view/android/L;)V

    .line 191
    invoke-virtual {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/view/android/L;)V

    .line 193
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 194
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->c(Lcom/google/googlenav/ui/view/android/L;)V

    .line 197
    :cond_9b
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->q()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 198
    invoke-virtual {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/view/android/L;)V

    .line 201
    :cond_b2
    invoke-static {}, Lcom/google/googlenav/K;->C()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 202
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->g(Lcom/google/googlenav/ui/view/android/L;)V

    .line 205
    :cond_bb
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/cM;->i(Lcom/google/googlenav/ui/view/android/L;)V

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->b:LaM/am;

    invoke-virtual {v0}, LaM/am;->L()Ljava/util/Vector;

    move-result-object v11

    .line 209
    const/4 v0, 0x0

    move v9, v0

    :goto_c6
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_12b

    .line 210
    invoke-virtual {v11, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LaM/i;

    .line 211
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/wizard/cM;->a(LaM/i;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 209
    :goto_d9
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_c6

    .line 214
    :cond_dd
    invoke-virtual {v4}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10a

    .line 216
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/4 v1, 0x0

    invoke-virtual {v4}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4}, LaM/i;->aL()LS/f;

    move-result-object v4

    check-cast v4, LT/f;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/googlenav/ui/view/a;

    const/16 v7, 0x3ea

    const/4 v8, 0x0

    invoke-direct {v6, v7, v9, v8}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/aV;->aA:Lcom/google/googlenav/ui/aV;

    sget-object v8, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_d9

    .line 226
    :cond_10a
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v4}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, LaM/i;->aL()LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3ea

    const/4 v7, 0x0

    invoke-direct {v5, v6, v9, v7}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_d9

    .line 235
    :cond_12b
    return-object v10
.end method

.method public a(LaM/am;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cM;->b:LaM/am;

    .line 90
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cM;->j()V

    .line 91
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const v1, 0x7f100031

    const v2, 0x7f100030

    const/4 v4, 0x0

    .line 242
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v1

    .line 243
    :goto_e
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 245
    :goto_14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 246
    const/16 v1, 0xd2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cM;->b:LaM/am;

    invoke-virtual {v1}, LaM/am;->P()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 248
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    :cond_2e
    new-instance v1, Lcom/google/googlenav/ui/wizard/cN;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/cN;-><init>(Lcom/google/googlenav/ui/wizard/cM;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 261
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v1, Lcom/google/googlenav/ui/wizard/cO;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/cO;-><init>(Lcom/google/googlenav/ui/wizard/cM;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void

    :cond_5e
    move v0, v2

    .line 242
    goto :goto_e

    :cond_60
    move v2, v1

    .line 243
    goto :goto_14
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 325
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x2e0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cM;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/bn;->ad:C

    invoke-interface {v3, v4}, LS/g;->e(C)LS/f;

    move-result-object v3

    check-cast v3, LT/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cM;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v4

    sget-char v5, Lcom/google/googlenav/ui/bn;->aq:C

    invoke-interface {v4, v5}, LS/g;->e(C)LS/f;

    move-result-object v4

    check-cast v4, LT/f;

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v6, 0x3ed

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method b(LaM/am;)Lcom/google/googlenav/ui/ay;
    .registers 5
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->j:Lcom/google/googlenav/ui/ay;

    if-nez v0, :cond_13

    .line 583
    new-instance v0, Lcom/google/googlenav/ui/ay;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cM;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cM;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/googlenav/ui/ay;-><init>(Lcom/google/googlenav/ui/wizard/ju;LaM/am;Lcom/google/googlenav/android/Y;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->j:Lcom/google/googlenav/ui/ay;

    .line 585
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->j:Lcom/google/googlenav/ui/ay;

    return-object v0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 100
    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/wizard/cP;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/cP;-><init>(Lcom/google/googlenav/ui/wizard/cM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 102
    return-void
.end method

.method b(Lcom/google/googlenav/ui/view/android/L;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v2

    .line 405
    const-string v0, "__LAYERS"

    .line 406
    invoke-virtual {v2, v0}, Lcom/google/googlenav/layer/f;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->b()[Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_11
    array-length v3, v0

    :goto_12
    if-ge v1, v3, :cond_4f

    aget-object v4, v0, v1

    .line 410
    invoke-virtual {v2, v4}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v5

    .line 411
    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->b()Lcom/google/googlenav/layer/m;

    move-result-object v6

    .line 412
    invoke-virtual {v2, v4}, Lcom/google/googlenav/layer/f;->d(Ljava/lang/String;)Z

    move-result v4

    .line 413
    if-eqz v4, :cond_49

    if-eqz v6, :cond_49

    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->c()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 414
    invoke-virtual {v6}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-virtual {v6}, Lcom/google/googlenav/layer/m;->l()Z

    move-result v4

    if-nez v4, :cond_49

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/layer/m;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 416
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 409
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 407
    :cond_4c
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_11

    .line 425
    :cond_4f
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 116
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->a(Z)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cM;->j:Lcom/google/googlenav/ui/ay;

    .line 121
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    .line 550
    return-void
.end method
