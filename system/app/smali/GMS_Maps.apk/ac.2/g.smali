.class public LaC/g;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements LaC/v;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private final d:LaC/a;

.field private final e:LaC/A;

.field private final m:LaC/x;

.field private n:LaC/y;

.field private o:LaC/s;

.field private final p:LaC/K;

.field private q:Lcom/google/googlenav/ui/wizard/gi;

.field private r:Ljava/lang/String;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:LaC/e;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZZLcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/wizard/gi;Lcom/google/googlenav/br;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    const v0, 0x7f0f001a

    invoke-direct {p0, p9, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 228
    iput-boolean p7, p0, LaC/g;->a:Z

    .line 229
    iput-boolean p8, p0, LaC/g;->b:Z

    .line 230
    iput-object p3, p0, LaC/g;->c:Ljava/lang/String;

    .line 231
    iput-object p2, p0, LaC/g;->r:Ljava/lang/String;

    .line 232
    iput-object p10, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    .line 234
    new-instance v0, LaC/a;

    invoke-direct {v0, p1}, LaC/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, LaC/g;->d:LaC/a;

    .line 235
    new-instance v0, LaC/x;

    invoke-direct {p0, p11}, LaC/g;->c(Lcom/google/googlenav/br;)LaC/w;

    move-result-object v1

    invoke-direct {v0, p6, v1}, LaC/x;-><init>(Ljava/util/List;LaC/w;)V

    iput-object v0, p0, LaC/g;->m:LaC/x;

    .line 237
    new-instance v0, LaC/A;

    invoke-direct {v0, p10}, LaC/A;-><init>(Lcom/google/googlenav/ui/wizard/gi;)V

    iput-object v0, p0, LaC/g;->e:LaC/A;

    .line 238
    new-instance v0, LaC/y;

    invoke-direct {v0, p4, p5, p10}, LaC/y;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/gi;)V

    iput-object v0, p0, LaC/g;->n:LaC/y;

    .line 239
    new-instance v0, LaC/s;

    invoke-direct {v0, p11, p0}, LaC/s;-><init>(Lcom/google/googlenav/br;LaC/v;)V

    iput-object v0, p0, LaC/g;->o:LaC/s;

    .line 240
    new-instance v0, LaC/K;

    invoke-direct {v0, p7, p3, p10}, LaC/K;-><init>(ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/gi;)V

    iput-object v0, p0, LaC/g;->p:LaC/K;

    .line 242
    new-instance v0, LaC/e;

    invoke-direct {v0, p10}, LaC/e;-><init>(Lcom/google/googlenav/ui/wizard/gi;)V

    iput-object v0, p0, LaC/g;->u:LaC/e;

    .line 243
    return-void
.end method

.method static synthetic a(LaC/g;)Lcom/google/googlenav/ui/wizard/gi;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 264
    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    const/16 v1, 0x38b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 270
    new-instance v1, LaC/h;

    invoke-direct {v1, p0}, LaC/h;-><init>(LaC/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f1001a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 279
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 280
    const v0, 0x7f1001a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020211

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v2, LaC/i;

    invoke-direct {v2, p0}, LaC/i;-><init>(LaC/g;)V

    invoke-virtual {v0, v1, v2}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 296
    :goto_4f
    return-void

    .line 292
    :cond_50
    const v0, 0x7f1001aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f
.end method

.method static synthetic b(LaC/g;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LaC/g;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/br;)LaC/w;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 185
    if-nez p1, :cond_4

    .line 216
    :cond_3
    :goto_3
    return-object v0

    .line 190
    :cond_4
    iget-boolean v1, p1, Lcom/google/googlenav/br;->j:Z

    if-nez v1, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/google/googlenav/br;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    .line 198
    new-instance v0, LaC/k;

    const v1, 0x7f020357

    const/16 v2, 0x3a0

    const/16 v3, 0x39f

    const/16 v4, 0x39e

    const v5, 0x7f020476

    invoke-direct/range {v0 .. v5}, LaC/k;-><init>(IIIII)V

    goto :goto_3

    .line 205
    :cond_20
    invoke-virtual {p1}, Lcom/google/googlenav/br;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    new-instance v0, LaC/k;

    const v1, 0x7f020356

    const/16 v2, 0x39d

    const/16 v3, 0x39c

    const/16 v4, 0x39b

    const v5, 0x7f020469

    invoke-direct/range {v0 .. v5}, LaC/k;-><init>(IIIII)V

    goto :goto_3
.end method

.method static synthetic c(LaC/g;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LaC/g;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private i()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 350
    iget-object v0, p0, LaC/g;->n:LaC/y;

    invoke-virtual {v0}, LaC/y;->a()Ljava/util/List;

    move-result-object v0

    .line 351
    iget-object v1, p0, LaC/g;->m:LaC/x;

    invoke-virtual {v1}, LaC/x;->a()Ljava/util/List;

    move-result-object v1

    .line 354
    if-eqz v0, :cond_13

    if-nez v1, :cond_1e

    .line 355
    :cond_13
    iget-object v0, p0, LaC/g;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, LaC/g;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :goto_1d
    return-void

    .line 357
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_35

    .line 359
    iget-object v0, p0, LaC/g;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, LaC/g;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 363
    :cond_35
    iget-object v0, p0, LaC/g;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, LaC/g;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d
.end method


# virtual methods
.method public H_()V
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->ac_()V

    .line 489
    return-void
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 414
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_e

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaC/g;->requestWindowFeature(I)Z

    .line 417
    :cond_e
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->ab_()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 372
    const v0, 0x7f020310

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 373
    const/16 v0, 0x38b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v1, LaC/j;

    invoke-direct {v1, p0}, LaC/j;-><init>(LaC/g;)V

    invoke-virtual {v0, p1, v1}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 383
    return-void
.end method

.method public a(Lcom/google/googlenav/br;)V
    .registers 4
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, LaC/g;->m:LaC/x;

    invoke-direct {p0, p1}, LaC/g;->c(Lcom/google/googlenav/br;)LaC/w;

    move-result-object v1

    invoke-virtual {v0, v1}, LaC/x;->a(LaC/w;)V

    .line 347
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, LaC/g;->c:Ljava/lang/String;

    .line 311
    iget-object v0, p0, LaC/g;->p:LaC/K;

    if-eqz v0, :cond_f

    .line 312
    iget-object v0, p0, LaC/g;->p:LaC/K;

    iget-boolean v1, p0, LaC/g;->a:Z

    iget-object v2, p0, LaC/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LaC/K;->a(ZLjava/lang/String;)V

    .line 316
    :cond_f
    iget-object v0, p0, LaC/g;->n:LaC/y;

    invoke-virtual {v0, p2, p3}, LaC/y;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 318
    if-eqz p2, :cond_19

    .line 321
    invoke-direct {p0}, LaC/g;->i()V

    .line 323
    :cond_19
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 389
    iput-boolean p2, p0, LaC/g;->a:Z

    .line 391
    iget-object v0, p0, LaC/g;->u:LaC/e;

    if-eqz v0, :cond_d

    .line 392
    iget-object v0, p0, LaC/g;->u:LaC/e;

    iget-boolean v1, p0, LaC/g;->b:Z

    invoke-virtual {v0, p1, p2, v1}, LaC/e;->a(Ljava/lang/String;ZZ)V

    .line 395
    :cond_d
    iget-object v0, p0, LaC/g;->p:LaC/K;

    if-eqz v0, :cond_18

    .line 397
    iget-object v0, p0, LaC/g;->p:LaC/K;

    iget-object v1, p0, LaC/g;->c:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, LaC/K;->a(ZLjava/lang/String;)V

    .line 399
    :cond_18
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    iput-boolean p2, p0, LaC/g;->b:Z

    .line 254
    iput-object p1, p0, LaC/g;->r:Ljava/lang/String;

    .line 255
    iput-boolean p3, p0, LaC/g;->a:Z

    .line 256
    iput-object v1, p0, LaC/g;->c:Ljava/lang/String;

    .line 257
    iget-object v0, p0, LaC/g;->n:LaC/y;

    invoke-virtual {v0, v1, v1}, LaC/y;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, LaC/g;->m:LaC/x;

    invoke-virtual {v0, v1, v1}, LaC/x;->a(Ljava/util/List;LaC/w;)V

    .line 259
    iget-object v0, p0, LaC/g;->r:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, LaC/g;->a(Ljava/lang/String;Z)V

    .line 260
    invoke-direct {p0}, LaC/g;->i()V

    .line 261
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, LaC/g;->d:LaC/a;

    if-eqz v0, :cond_b

    .line 300
    iget-object v0, p0, LaC/g;->d:LaC/a;

    iget-object v1, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    invoke-virtual {v0, v1, p1}, LaC/a;->a(Lcom/google/googlenav/ui/wizard/gi;Ljava/util/List;)V

    .line 303
    :cond_b
    return-void
.end method

.method public a(Ljava/util/List;Lcom/google/googlenav/br;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, LaC/g;->m:LaC/x;

    invoke-direct {p0, p2}, LaC/g;->c(Lcom/google/googlenav/br;)LaC/w;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LaC/x;->a(Ljava/util/List;LaC/w;)V

    .line 330
    if-eqz p1, :cond_e

    .line 331
    invoke-direct {p0}, LaC/g;->i()V

    .line 333
    :cond_e
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1004cd

    if-ne v0, v1, :cond_1c

    .line 450
    sget-object v0, LaC/g;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->e()Lcom/google/googlenav/android/d;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/K;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/d;->a(Ljava/lang/String;)V

    .line 464
    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    return v0

    .line 452
    :cond_1c
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1004d7

    if-ne v0, v1, :cond_5c

    .line 453
    sget-object v0, LaC/g;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->e()Lcom/google/googlenav/android/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/d;->h()V

    .line 457
    sget-object v0, LaC/g;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 459
    sget-object v0, LaC/g;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->l()I

    goto :goto_1a

    .line 460
    :cond_5c
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1004e5

    if-ne v0, v1, :cond_1a

    .line 461
    iget-object v0, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->U_()V

    goto :goto_1a
.end method

.method public b(Lcom/google/googlenav/br;)V
    .registers 3
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, LaC/g;->o:LaC/s;

    invoke-virtual {v0, p1}, LaC/s;->a(Lcom/google/googlenav/br;)V

    .line 406
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 132
    invoke-virtual {p0}, LaC/g;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040141

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 135
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_21

    .line 136
    const v0, 0x7f100332

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_21
    const v0, 0x7f100350

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/g;->s:Landroid/view/View;

    .line 140
    const v0, 0x7f10034f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/g;->t:Landroid/view/View;

    .line 141
    iget-object v0, p0, LaC/g;->t:Landroid/view/View;

    const v2, 0x7f100179

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x3a2

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-direct {p0, v1}, LaC/g;->a(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, LaC/g;->u:LaC/e;

    const v2, 0x7f10032e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, LaC/e;->a(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, LaC/g;->r:Ljava/lang/String;

    iget-boolean v2, p0, LaC/g;->a:Z

    invoke-virtual {p0, v0, v2}, LaC/g;->a(Ljava/lang/String;Z)V

    .line 148
    iget-object v0, p0, LaC/g;->d:LaC/a;

    iget-object v2, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    invoke-virtual {v0, v2, v1}, LaC/a;->a(Lcom/google/googlenav/ui/wizard/gi;Landroid/view/View;)V

    .line 149
    iget-object v0, p0, LaC/g;->m:LaC/x;

    invoke-virtual {v0, v1}, LaC/x;->a(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, LaC/g;->n:LaC/y;

    invoke-virtual {v0, v1}, LaC/y;->a(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, LaC/g;->o:LaC/s;

    invoke-virtual {v0, v1}, LaC/s;->a(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, LaC/g;->p:LaC/K;

    if-eqz v0, :cond_7c

    .line 159
    iget-object v0, p0, LaC/g;->p:LaC/K;

    invoke-virtual {v0, v1}, LaC/K;->a(Landroid/view/View;)V

    .line 161
    :cond_7c
    return-object v1
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->ad_()V

    .line 481
    return-void
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    .line 421
    sget-object v0, LaC/g;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11001d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 422
    const v0, 0x7f1004e5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 423
    const/16 v1, 0x21

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 424
    const v0, 0x7f1004d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_2e

    .line 427
    const/16 v1, 0x527

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 429
    :cond_2e
    const v0, 0x7f1004cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_40

    .line 432
    const/16 v1, 0x1e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 435
    :cond_40
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 437
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 438
    const/16 v0, 0x4f8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 439
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 440
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    iget-object v3, p0, LaC/g;->q:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v3}, Lcom/google/googlenav/ui/wizard/gi;->w()Lcom/google/googlenav/actionbar/b;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 443
    :cond_6d
    const/4 v0, 0x1

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x38b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method
