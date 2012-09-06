.class public Lcom/google/googlenav/ui/wizard/in;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ij;

.field private b:Landroid/view/View;

.field private final c:Lcom/google/googlenav/ui/wizard/iw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ij;Lcom/google/googlenav/ui/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    .line 177
    const v0, 0x7f0f001b

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 174
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/in;->m()Lcom/google/googlenav/ui/wizard/iw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->c:Lcom/google/googlenav/ui/wizard/iw;

    .line 178
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_23

    .line 179
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/in;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ij;->a(Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 181
    :cond_23
    return-void
.end method

.method private a(ILandroid/widget/SeekBar;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 505
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 506
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 507
    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 508
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 509
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/in;)V
    .registers 1
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/in;->n()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/in;)Lcom/google/googlenav/ui/wizard/iw;
    .registers 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->c:Lcom/google/googlenav/ui/wizard/iw;

    return-object v0
.end method

.method static synthetic l()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Lcom/google/googlenav/ui/wizard/in;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method

.method private m()Lcom/google/googlenav/ui/wizard/iw;
    .registers 2

    .prologue
    .line 358
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 359
    new-instance v0, Lcom/google/googlenav/ui/wizard/it;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/it;-><init>(Lcom/google/googlenav/ui/wizard/in;)V

    .line 361
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/googlenav/ui/wizard/is;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/is;-><init>(Lcom/google/googlenav/ui/wizard/in;)V

    goto :goto_b
.end method

.method private n()V
    .registers 8

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v1, 0x7f100463

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 489
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v1, 0x7f100464

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 490
    if-eqz v4, :cond_59

    move v1, v2

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 491
    if-eqz v4, :cond_2f

    .line 492
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/in;->c:Lcom/google/googlenav/ui/wizard/iw;

    invoke-interface {v1, v5}, Lcom/google/googlenav/ui/wizard/iw;->a(I)V

    .line 493
    invoke-direct {p0, v5, v0}, Lcom/google/googlenav/ui/wizard/in;->a(ILandroid/widget/SeekBar;)V

    .line 495
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v1, 0x7f100461

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 496
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v4, 0x7f100462

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 497
    if-eqz v1, :cond_5b

    :goto_4b
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 498
    if-eqz v1, :cond_58

    .line 499
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/in;->c:Lcom/google/googlenav/ui/wizard/iw;

    invoke-interface {v1, v6}, Lcom/google/googlenav/ui/wizard/iw;->a(I)V

    .line 500
    invoke-direct {p0, v6, v0}, Lcom/google/googlenav/ui/wizard/in;->a(ILandroid/widget/SeekBar;)V

    .line 502
    :cond_58
    return-void

    :cond_59
    move v1, v3

    .line 490
    goto :goto_22

    :cond_5b
    move v2, v3

    .line 497
    goto :goto_4b
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 367
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 368
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/in;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x4b6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    :goto_13
    new-instance v0, Lcom/google/googlenav/ui/wizard/io;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/io;-><init>(Lcom/google/googlenav/ui/wizard/in;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/in;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 380
    return-void

    .line 370
    :cond_1c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/in;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 384
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_14

    .line 385
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/in;->requestWindowFeature(I)Z

    .line 387
    :cond_14
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const v7, 0x7f090007

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/in;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    .line 393
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_30

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v1, 0x7f100354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 395
    const/16 v1, 0x4b6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v1, 0x7f100463

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 400
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v2, 0x7f100460

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 401
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v3, 0x7f100461

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 402
    const/16 v3, 0x4b4

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const/16 v3, 0x4b9

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 404
    const/16 v3, 0x4ba

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 405
    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v6

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/im;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 406
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 407
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 409
    :cond_82
    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v6

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/im;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 410
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 411
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 416
    :cond_98
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v3

    iget-object v6, v3, Lcom/google/googlenav/ui/wizard/im;->c:Ljava/util/EnumSet;

    .line 417
    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v7

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_159

    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_159

    move v3, v4

    :goto_b9
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v7

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15c

    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15c

    move v3, v4

    :goto_d5
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 419
    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/ij;->a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;

    move-result-object v7

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15f

    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15f

    :goto_f0
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 421
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/in;->c:Lcom/google/googlenav/ui/wizard/iw;

    invoke-interface {v3}, Lcom/google/googlenav/ui/wizard/iw;->a()V

    .line 422
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v4, 0x7f100464

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 423
    new-instance v4, Lcom/google/googlenav/ui/wizard/iu;

    const/4 v6, 0x2

    invoke-direct {v4, p0, v6}, Lcom/google/googlenav/ui/wizard/iu;-><init>(Lcom/google/googlenav/ui/wizard/in;I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 425
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v4, 0x7f100462

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 426
    new-instance v4, Lcom/google/googlenav/ui/wizard/iu;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6}, Lcom/google/googlenav/ui/wizard/iu;-><init>(Lcom/google/googlenav/ui/wizard/in;I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 429
    new-instance v3, Lcom/google/googlenav/ui/wizard/iq;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/googlenav/ui/wizard/iq;-><init>(Lcom/google/googlenav/ui/wizard/in;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 430
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 431
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 432
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v4, 0x7f100030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 433
    const/16 v4, 0x4b2

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 434
    new-instance v4, Lcom/google/googlenav/ui/wizard/ip;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ip;-><init>(Lcom/google/googlenav/ui/wizard/in;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    return-object v0

    :cond_159
    move v3, v5

    .line 417
    goto/16 :goto_b9

    :cond_15c
    move v3, v5

    .line 418
    goto/16 :goto_d5

    :cond_15f
    move v4, v5

    .line 419
    goto :goto_f0
.end method

.method public i()Ljava/util/EnumSet;
    .registers 4

    .prologue
    .line 548
    const-class v0, Lcom/google/googlenav/ui/wizard/iv;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 550
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v2, 0x7f100463

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 551
    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v2, 0x7f100460

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 554
    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/in;->b:Landroid/view/View;

    const v2, 0x7f100461

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 557
    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_48
    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 513
    sparse-switch p1, :sswitch_data_46

    .line 523
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/in;->i()Ljava/util/EnumSet;

    move-result-object v2

    .line 525
    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 526
    const/4 v2, 0x2

    .line 532
    :goto_13
    packed-switch p1, :pswitch_data_50

    move v0, v1

    .line 544
    :goto_17
    :sswitch_17
    return v0

    .line 517
    :sswitch_18
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/in;->c:Lcom/google/googlenav/ui/wizard/iw;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/iw;->b()V

    .line 518
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ij;->h()V

    goto :goto_17

    .line 527
    :cond_23
    sget-object v3, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 528
    const/4 v2, 0x3

    goto :goto_13

    :cond_2d
    move v0, v1

    .line 530
    goto :goto_17

    .line 534
    :pswitch_2f
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 536
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/in;->n()V

    goto :goto_17

    .line 539
    :pswitch_3a
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 541
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/in;->n()V

    goto :goto_17

    .line 513
    :sswitch_data_46
    .sparse-switch
        0x4 -> :sswitch_18
        0x54 -> :sswitch_17
    .end sparse-switch

    .line 532
    :pswitch_data_50
    .packed-switch 0x18
        :pswitch_2f
        :pswitch_3a
    .end packed-switch
.end method
