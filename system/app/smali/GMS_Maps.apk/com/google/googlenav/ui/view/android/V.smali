.class public abstract Lcom/google/googlenav/ui/view/android/V;
.super Lcom/google/googlenav/ui/view/android/bb;
.source "SourceFile"


# static fields
.field protected static f:Lcom/google/googlenav/android/BaseMapsActivity;

.field public static final j:Lcom/google/googlenav/ui/g;


# instance fields
.field private a:Z

.field private b:Lag/g;

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field private e:Z

.field protected g:Lcom/google/googlenav/ui/g;

.field protected final h:Lcom/google/googlenav/ui/view/android/ak;

.field protected i:Landroid/view/View;

.field public k:Z

.field private m:I

.field private volatile n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    new-instance v0, Lcom/google/googlenav/ui/view/android/W;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/W;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/V;->j:Lcom/google/googlenav/ui/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 164
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->j:Lcom/google/googlenav/ui/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 165
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 172
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->j:Lcom/google/googlenav/ui/g;

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter

    .prologue
    .line 184
    invoke-static {}, Lcom/google/googlenav/ui/view/android/V;->p()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 195
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/V;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bb;-><init>(Landroid/content/Context;I)V

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->d:Ljava/lang/CharSequence;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->k:Z

    .line 196
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    .line 197
    new-instance v0, Lcom/google/googlenav/ui/view/android/ak;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/ak;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/ui/view/android/ak;

    .line 198
    return-void
.end method

.method private static a(I)I
    .registers 1
    .parameter

    .prologue
    .line 202
    return p0
.end method

.method public static a(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 750
    sput-object p0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    .line 751
    return-void
.end method

.method private b(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 455
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 456
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lag/g;

    invoke-static {v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Z

    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 459
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lag/g;

    invoke-virtual {v0, p1, v1}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 461
    return-void
.end method

.method private b(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 782
    return-void
.end method

.method private i()Z
    .registers 3

    .prologue
    .line 351
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->e()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private l()V
    .registers 2

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->i()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 404
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/android/BaseMapsActivity;->showDialog(Landroid/app/Dialog;)V

    .line 407
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_26

    .line 408
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 409
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->v()V

    .line 414
    :cond_26
    :goto_26
    return-void

    .line 403
    :cond_27
    const/4 v0, 0x0

    goto :goto_7

    .line 411
    :cond_29
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->m()V

    goto :goto_26
.end method

.method private m()V
    .registers 3

    .prologue
    .line 420
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 421
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->e:Z

    if-eqz v0, :cond_21

    .line 422
    iget v0, p0, Lcom/google/googlenav/ui/view/android/V;->o:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 423
    if-eqz v0, :cond_21

    .line 424
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_21
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Z

    if-eqz v0, :cond_28

    .line 428
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->o()V

    .line 430
    :cond_28
    return-void

    .line 420
    :cond_29
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private n()V
    .registers 5

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 441
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/view/View;

    .line 442
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->w_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/bZ;->a(Landroid/app/Dialog;Landroid/view/View;Lcom/google/googlenav/ui/g;Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private o()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 469
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 470
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lag/g;

    invoke-static {v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Z

    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->q()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1001a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 474
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    const v0, 0x7f1001a9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 476
    iget v1, p0, Lcom/google/googlenav/ui/view/android/V;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lag/g;

    invoke-virtual {v0, v2, v1}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 478
    return-void

    :cond_3f
    move v0, v1

    .line 469
    goto :goto_c
.end method

.method public static p()I
    .registers 1

    .prologue
    .line 206
    const v0, 0x7f0f0018

    return v0
.end method

.method private v()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 484
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 487
    if-nez v0, :cond_13

    .line 509
    :cond_12
    :goto_12
    return-void

    .line 493
    :cond_13
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 496
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->e:Z

    if-eqz v1, :cond_29

    .line 497
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 498
    iget v1, p0, Lcom/google/googlenav/ui/view/android/V;->m:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 501
    :cond_29
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->a(Landroid/app/ActionBar;)V

    .line 506
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->a:Z

    if-eqz v1, :cond_12

    .line 507
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->b(Landroid/app/ActionBar;)V

    goto :goto_12
.end method


# virtual methods
.method protected I_()V
    .registers 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->i()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 371
    return-void

    .line 370
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected K_()V
    .registers 1

    .prologue
    .line 532
    return-void
.end method

.method protected N_()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 300
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->O_()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 301
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 305
    :goto_18
    return-void

    .line 303
    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->requestWindowFeature(I)Z

    goto :goto_18
.end method

.method public O_()Z
    .registers 2

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->i()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    return-void
.end method

.method protected final a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->e:Z

    if-nez v0, :cond_c

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "updateTitleBar() without first calling setupTitleBar()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_c
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/V;->d:Ljava/lang/CharSequence;

    .line 262
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_20

    .line 263
    iget v0, p0, Lcom/google/googlenav/ui/view/android/V;->o:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_1f
    :goto_1f
    return-void

    .line 266
    :cond_20
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Z

    if-eqz v0, :cond_2c

    .line 267
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lag/h;->a(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 269
    :cond_2c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_1f

    .line 271
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method protected final a(Ljava/lang/CharSequence;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->e:Z

    .line 245
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/V;->d:Ljava/lang/CharSequence;

    .line 246
    iput p2, p0, Lcom/google/googlenav/ui/view/android/V;->o:I

    .line 247
    iput p3, p0, Lcom/google/googlenav/ui/view/android/V;->m:I

    .line 248
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/V;->k:Z

    .line 771
    return-void
.end method

.method protected varargs a(ZILag/f;[I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/V;->a:Z

    .line 225
    iput p2, p0, Lcom/google/googlenav/ui/view/android/V;->c:I

    .line 226
    new-instance v0, Lag/g;

    invoke-direct {v0, p3, p4}, Lag/g;-><init>(Lag/f;[I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lag/g;

    .line 229
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 664
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method protected abstract c()Landroid/view/View;
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 448
    return-void
.end method

.method protected final d(I)V
    .registers 5
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 727
    return-void
.end method

.method public final dismiss()V
    .registers 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->K_()V

    .line 521
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 524
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/view/android/bZ;->a(Landroid/app/Dialog;)V

    .line 528
    :goto_12
    return-void

    .line 526
    :cond_13
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/android/BaseMapsActivity;->dismissDialog(Landroid/app/Dialog;)V

    goto :goto_12
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .registers 1

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->dismiss()V

    .line 537
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .prologue
    .line 557
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 559
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bb;->invalidateOptionsMenu()V

    .line 575
    :goto_d
    return-void

    .line 560
    :cond_e
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 563
    sget-object v0, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bZ;->b()V

    goto :goto_d

    .line 569
    :cond_20
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->closeOptionsMenu()V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->n:Z

    goto :goto_d
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    invoke-interface {v0}, Lcom/google/googlenav/ui/g;->h()V

    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    sget-object v1, Lcom/google/googlenav/ui/view/android/V;->j:Lcom/google/googlenav/ui/g;

    if-eq v0, v1, :cond_10

    .line 610
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    invoke-interface {v0}, Lcom/google/googlenav/ui/g;->h()V

    .line 614
    :goto_f
    return-void

    .line 612
    :cond_10
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bb;->onBackPressed()V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bb;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->setCanceledOnTouchOutside(Z)V

    .line 289
    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 290
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->N_()V

    .line 291
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->setContentView(Landroid/view/View;)V

    .line 293
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->I_()V

    .line 294
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 582
    const/16 v1, 0x54

    if-ne p1, v1, :cond_11

    .line 583
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->h()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 584
    sget-object v1, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->onSearchRequested()Z

    .line 604
    :cond_10
    :goto_10
    return v0

    .line 594
    :cond_11
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    sget-object v2, Lcom/google/googlenav/ui/view/android/V;->j:Lcom/google/googlenav/ui/g;

    if-ne v1, v2, :cond_1c

    .line 595
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bb;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10

    .line 598
    :cond_1c
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2a

    .line 599
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 604
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bb;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 693
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1b

    .line 695
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->j()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 696
    const/4 v0, 0x1

    .line 700
    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1a
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 744
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bb;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 745
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/V;->b(Landroid/view/Menu;)V

    .line 746
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bb;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->b(Landroid/view/Menu;)V

    .line 740
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 732
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bb;->onPanelClosed(ILandroid/view/Menu;)V

    .line 733
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->b(Landroid/view/Menu;)V

    .line 734
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->n:Z

    if-eqz v0, :cond_d

    .line 645
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 646
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->n:Z

    .line 649
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public q()Landroid/view/View;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/view/View;

    return-object v0
.end method

.method public r()Lcom/google/googlenav/ui/g;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method public final s()V
    .registers 1

    .prologue
    .line 758
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 759
    return-void
.end method

.method public final show()V
    .registers 2

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 386
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->n()V

    .line 393
    :goto_9
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->d()V

    .line 394
    return-void

    .line 390
    :cond_d
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->l()V

    goto :goto_9
.end method

.method public final t()V
    .registers 1

    .prologue
    .line 766
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 767
    return-void
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->k:Z

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->d:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
