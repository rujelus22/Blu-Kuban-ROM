.class public Lcom/google/android/maps/driveabout/app/StepDescriptionView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lr/ae;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

.field protected b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/TextView;

.field private e:Lo/I;

.field private f:Lo/I;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:F

.field private o:I

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Lcom/google/android/maps/driveabout/app/dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 328
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 330
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 332
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    .line 333
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    .line 335
    const v0, 0x7f100142

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    .line 336
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    .line 337
    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    .line 338
    const v0, 0x7f100149

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    .line 339
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-nez v0, :cond_54

    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    .line 343
    :cond_54
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    .line 344
    const v0, 0x7f100147

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    .line 345
    const v0, 0x7f100148

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    .line 346
    const v0, 0x7f100122

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f100138

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->m:Landroid/view/View;

    .line 348
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dp;->a()Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dp;

    .line 349
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 550
    new-instance v4, Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 551
    const/high16 v0, 0x3f80

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 552
    invoke-virtual {v4, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 554
    if-eqz p5, :cond_63

    .line 555
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v0}, Lo/I;->b()I

    move-result v3

    .line 556
    if-eq v3, v1, :cond_1f

    if-eqz p7, :cond_35

    .line 569
    :cond_1f
    :goto_1f
    if-eqz v1, :cond_67

    .line 570
    const v5, 0x7f0d0007

    .line 576
    :goto_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dp;

    move-object v1, p2

    move v2, p3

    move v3, p8

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/util/Collection;IILandroid/text/TextPaint;ILr/ae;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 578
    invoke-virtual {p1, p4}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setDesiredTextSize(F)V

    .line 579
    return-void

    .line 559
    :cond_35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v0}, Lo/I;->j()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v0}, Lo/I;->j()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->e()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x4248

    cmpl-float v0, v0, v5

    if-lez v0, :cond_65

    move v0, v1

    .line 562
    :goto_4f
    invoke-static {v3}, Lo/I;->a(I)Z

    move-result v3

    if-eqz v3, :cond_63

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v0}, Lo/I;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_63
    move v1, v2

    goto :goto_1f

    :cond_65
    move v0, v2

    .line 559
    goto :goto_4f

    .line 571
    :cond_67
    if-eqz p7, :cond_6d

    .line 572
    const v5, 0x7f0d0008

    goto :goto_24

    .line 573
    :cond_6d
    if-eqz p6, :cond_73

    .line 574
    const v5, 0x7f0d0009

    goto :goto_24

    :cond_73
    move v5, v2

    goto :goto_24
.end method

.method private f()V
    .registers 14

    .prologue
    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->x()Lo/K;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 442
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->x()Lo/K;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->p()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->q()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    .line 449
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->s()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v11

    .line 454
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_c9

    .line 456
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_c5

    move-object v9, v0

    move-object v2, v11

    .line 470
    :goto_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_d7

    const/4 v0, 0x1

    move v12, v0

    .line 473
    :goto_4f
    if-eqz v12, :cond_db

    const/4 v3, 0x1

    .line 475
    :goto_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 476
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_120

    .line 477
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e2

    .line 478
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 481
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 483
    if-eqz v12, :cond_97

    .line 484
    div-int/lit8 v8, v8, 0x2

    .line 485
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 489
    :cond_97
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

    .line 491
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a()F

    move-result v4

    if-ne v9, v10, :cond_de

    const/4 v5, 0x1

    :goto_ad
    if-ne v2, v11, :cond_e0

    const/4 v7, 0x1

    :goto_b0
    move-object v0, p0

    move-object v2, v9

    move v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

    .line 495
    if-eqz v12, :cond_c4

    .line 496
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    .line 497
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    .line 524
    :cond_c4
    :goto_c4
    return-void

    :cond_c5
    move-object v9, v10

    move-object v2, v11

    .line 459
    goto/16 :goto_45

    .line 461
    :cond_c9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_d3

    move-object v9, v10

    move-object v2, v0

    .line 463
    goto/16 :goto_45

    :cond_d3
    move-object v9, v0

    move-object v2, v10

    .line 467
    goto/16 :goto_45

    .line 470
    :cond_d7
    const/4 v0, 0x0

    move v12, v0

    goto/16 :goto_4f

    .line 473
    :cond_db
    const/4 v3, 0x2

    goto/16 :goto_52

    .line 491
    :cond_de
    const/4 v5, 0x0

    goto :goto_ad

    :cond_e0
    const/4 v7, 0x0

    goto :goto_b0

    .line 500
    :cond_e2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 502
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_11a

    const v0, 0x7f0b001d

    :goto_101
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 506
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    if-ne v2, v10, :cond_11e

    const/4 v5, 0x1

    :goto_10a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

    .line 509
    if-eqz v12, :cond_c4

    .line 510
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    goto :goto_c4

    .line 502
    :cond_11a
    const v0, 0x7f0b001f

    goto :goto_101

    .line 506
    :cond_11e
    const/4 v5, 0x0

    goto :goto_10a

    .line 514
    :cond_120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 516
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setDesiredTextSize(F)V

    .line 519
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 520
    if-eqz v12, :cond_c4

    .line 521
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    goto/16 :goto_c4
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 273
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_42

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setVisibility(I)V

    .line 276
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-nez v0, :cond_2e

    .line 277
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 279
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 280
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 283
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 284
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    :cond_42
    return-void
.end method

.method public a(Lr/ac;)V
    .registers 3
    .parameter

    .prologue
    .line 583
    new-instance v0, Lcom/google/android/maps/driveabout/app/dk;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dk;-><init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->post(Ljava/lang/Runnable;)Z

    .line 589
    return-void
.end method

.method protected a(Z)V
    .registers 8
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    if-eqz v0, :cond_c5

    .line 368
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f:Lo/I;

    if-eq v0, v1, :cond_1c

    .line 369
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-static {v1, v2}, Lo/k;->a(Landroid/content/Context;Lo/I;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v0}, Lo/I;->k()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v0}, Lo/I;->k()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->w()Lo/K;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 376
    if-nez p1, :cond_60

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setDesiredTextSize(F)V

    .line 381
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dp;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    invoke-virtual {v2}, Lo/I;->k()Lo/I;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/I;Lr/ae;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 387
    :cond_60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dp;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    float-to-int v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/I;IILr/ae;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 393
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_8d

    if-nez p1, :cond_8d

    .line 395
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    .line 396
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    .line 399
    :cond_8d
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(Z)V

    .line 425
    :goto_90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f:Lo/I;

    .line 426
    return-void

    .line 402
    :cond_95
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    if-eqz v0, :cond_bf

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_bf

    .line 403
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dp;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(IIZ)Landroid/text/Spannable;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 408
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    :goto_b5
    if-nez p1, :cond_ba

    .line 414
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f()V

    .line 417
    :cond_ba
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(Z)V

    goto :goto_90

    .line 410
    :cond_bf
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b5

    .line 420
    :cond_c5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_90
.end method

.method public b()Landroid/view/View;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 429
    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 430
    :goto_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 432
    return-void

    .line 429
    :cond_e
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 252
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 254
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-nez v0, :cond_24

    .line 255
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/google/android/maps/driveabout/app/bi;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bi;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 260
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    :cond_3c
    return-void
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 355
    const v0, 0x7f04004f

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    if-eq p1, p3, :cond_a

    .line 597
    new-instance v0, Lcom/google/android/maps/driveabout/app/dl;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dl;-><init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->post(Ljava/lang/Runnable;)Z

    .line 604
    :cond_a
    return-void
.end method

.method public setBackgroundType(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 219
    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->q:I

    if-ne p1, v0, :cond_6

    .line 244
    :cond_5
    :goto_5
    return-void

    .line 222
    :cond_6
    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->q:I

    .line 223
    packed-switch p1, :pswitch_data_54

    .line 239
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 225
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v1, 0x7f020443

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v1, 0x7f020418

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-eq v0, v1, :cond_5

    .line 228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 232
    :pswitch_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v1, 0x7f020440

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v1, 0x7f020415

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-eq v0, v1, :cond_5

    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 223
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_37
    .end packed-switch
.end method

.method public setButtonVisibility(ZZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    .line 299
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    .line 300
    :goto_f
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1f

    move v6, v1

    .line 301
    :goto_18
    if-ne p1, v0, :cond_21

    if-ne p2, v6, :cond_21

    .line 325
    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v2

    .line 299
    goto :goto_f

    :cond_1f
    move v6, v2

    .line 300
    goto :goto_18

    .line 304
    :cond_21
    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    if-eqz p2, :cond_6e

    move v1, v2

    :goto_26
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_70

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 307
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 309
    if-eqz p3, :cond_1c

    .line 311
    if-eq v0, p1, :cond_55

    .line 312
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_72

    move v1, v4

    :goto_43
    if-eqz p1, :cond_74

    move v0, v4

    :goto_46
    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 314
    if-eqz p1, :cond_76

    const-wide/16 v0, 0x0

    :goto_4d
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 315
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    :cond_55
    if-eq v6, p2, :cond_1c

    .line 319
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v6, :cond_79

    move v0, v4

    :goto_5c
    if-eqz p2, :cond_7b

    :goto_5e
    invoke-direct {v2, v0, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 321
    if-eqz p2, :cond_7d

    const-wide/16 v0, 0x0

    :goto_65
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 322
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c

    :cond_6e
    move v1, v3

    .line 304
    goto :goto_26

    :cond_70
    move v2, v3

    .line 305
    goto :goto_2d

    :cond_72
    move v1, v5

    .line 312
    goto :goto_43

    :cond_74
    move v0, v5

    goto :goto_46

    .line 314
    :cond_76
    const-wide/16 v0, 0x1f4

    goto :goto_4d

    :cond_79
    move v0, v5

    .line 319
    goto :goto_5c

    :cond_7b
    move v4, v5

    goto :goto_5e

    .line 321
    :cond_7d
    const-wide/16 v0, 0x1f4

    goto :goto_65
.end method

.method public setDistanceMeters(F)V
    .registers 3
    .parameter

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_c

    .line 159
    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    .line 162
    :cond_c
    return-void
.end method

.method public setDistanceUnits(I)V
    .registers 3
    .parameter

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    if-eq p1, v0, :cond_a

    .line 169
    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    .line 172
    :cond_a
    return-void
.end method

.method public setShowDistance(Z)V
    .registers 3
    .parameter

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    if-eq p1, v0, :cond_a

    .line 179
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    .line 182
    :cond_a
    return-void
.end method

.method public setStep(Lo/I;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    if-eq p1, v0, :cond_a

    .line 149
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lo/I;

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    .line 152
    :cond_a
    return-void
.end method

.method public setUseLongDistanceStepFormat(Z)V
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-eq p1, v0, :cond_a

    .line 198
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    .line 201
    :cond_a
    return-void
.end method
