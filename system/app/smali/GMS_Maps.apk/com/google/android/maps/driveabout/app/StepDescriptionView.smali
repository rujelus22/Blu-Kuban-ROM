.class public Lcom/google/android/maps/driveabout/app/StepDescriptionView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lx/af;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

.field protected b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/TextView;

.field private e:Lu/I;

.field private f:Lu/I;

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

.field private s:Lcom/google/android/maps/driveabout/app/dA;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f011b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const v0, 0x7f0f011c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const v0, 0x7f0f0118

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v0, 0x7f0f011a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0f011f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    :cond_54
    const v0, 0x7f0f00bb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f011d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    const v0, 0x7f0f011e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    const v0, 0x7f0f00f9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    const v0, 0x7f0f010e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->m:Landroid/view/View;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/dA;->a()Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dA;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V
    .registers 16

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v4, Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v0, 0x3f80

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    invoke-virtual {v4, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz p5, :cond_63

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v0}, Lu/I;->b()I

    move-result v3

    if-eq v3, v1, :cond_1f

    if-eqz p7, :cond_35

    :cond_1f
    :goto_1f
    if-eqz v1, :cond_67

    const v5, 0x7f0b0007

    :goto_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dA;

    move-object v1, p2

    move v2, p3

    move v3, p8

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/util/Collection;IILandroid/text/TextPaint;ILx/af;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    invoke-virtual {p1, p4}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(F)V

    return-void

    :cond_35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v0}, Lu/I;->j()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v0}, Lu/I;->j()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->e()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x4248

    cmpl-float v0, v0, v5

    if-lez v0, :cond_65

    move v0, v1

    :goto_4f
    invoke-static {v3}, Lu/I;->a(I)Z

    move-result v3

    if-eqz v3, :cond_63

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v0}, Lu/I;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_63
    move v1, v2

    goto :goto_1f

    :cond_65
    move v0, v2

    goto :goto_4f

    :cond_67
    if-eqz p7, :cond_6d

    const v5, 0x7f0b0008

    goto :goto_24

    :cond_6d
    if-eqz p6, :cond_73

    const v5, 0x7f0b0009

    goto :goto_24

    :cond_73
    move v5, v2

    goto :goto_24
.end method

.method private f()V
    .registers 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v1}, Lu/I;->x()Lu/K;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v1}, Lu/I;->x()Lu/K;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v1}, Lu/I;->p()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v1}, Lu/I;->q()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v1}, Lu/I;->s()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_c5

    move-object v9, v0

    move-object v2, v11

    :goto_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_d7

    const/4 v0, 0x1

    move v12, v0

    :goto_4f
    if-eqz v12, :cond_db

    const/4 v3, 0x1

    :goto_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v8, v0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_120

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    if-eqz v12, :cond_97

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    :cond_97
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

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

    if-eqz v12, :cond_c4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    :cond_c4
    :goto_c4
    return-void

    :cond_c5
    move-object v9, v10

    move-object v2, v11

    goto/16 :goto_45

    :cond_c9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_d3

    move-object v9, v10

    move-object v2, v0

    goto/16 :goto_45

    :cond_d3
    move-object v9, v0

    move-object v2, v10

    goto/16 :goto_45

    :cond_d7
    const/4 v0, 0x0

    move v12, v0

    goto/16 :goto_4f

    :cond_db
    const/4 v3, 0x2

    goto/16 :goto_52

    :cond_de
    const/4 v5, 0x0

    goto :goto_ad

    :cond_e0
    const/4 v7, 0x0

    goto :goto_b0

    :cond_e2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_11a

    const v0, 0x7f09001d

    :goto_101
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    if-ne v2, v10, :cond_11e

    const/4 v5, 0x1

    :goto_10a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

    if-eqz v12, :cond_c4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    goto :goto_c4

    :cond_11a
    const v0, 0x7f09001f

    goto :goto_101

    :cond_11e
    const/4 v5, 0x0

    goto :goto_10a

    :cond_120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v1}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    if-eqz v12, :cond_c4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    goto/16 :goto_c4
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_c

    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_c
    return-void
.end method

.method public a(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    if-eq p1, v0, :cond_a

    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_a
    return-void
.end method

.method public a(Lu/I;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    if-eq p1, v0, :cond_a

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_a
    return-void
.end method

.method public a(Lx/ad;)V
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/app/dv;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dv;-><init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    if-eq p1, v0, :cond_a

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_a
    return-void
.end method

.method public a(ZZZ)V
    .registers 12

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_f
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1f

    move v6, v1

    :goto_18
    if-ne p1, v0, :cond_21

    if-ne p2, v6, :cond_21

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v2

    goto :goto_f

    :cond_1f
    move v6, v2

    goto :goto_18

    :cond_21
    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    if-eqz p2, :cond_6e

    move v1, v2

    :goto_26
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_70

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    if-eqz p3, :cond_1c

    if-eq v0, p1, :cond_55

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_72

    move v1, v4

    :goto_43
    if-eqz p1, :cond_74

    move v0, v4

    :goto_46
    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_76

    const-wide/16 v0, 0x0

    :goto_4d
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_55
    if-eq v6, p2, :cond_1c

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v6, :cond_79

    move v0, v4

    :goto_5c
    if-eqz p2, :cond_7b

    :goto_5e
    invoke-direct {v2, v0, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p2, :cond_7d

    const-wide/16 v0, 0x0

    :goto_65
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c

    :cond_6e
    move v1, v3

    goto :goto_26

    :cond_70
    move v2, v3

    goto :goto_2d

    :cond_72
    move v1, v5

    goto :goto_43

    :cond_74
    move v0, v5

    goto :goto_46

    :cond_76
    const-wide/16 v0, 0x1f4

    goto :goto_4d

    :cond_79
    move v0, v5

    goto :goto_5c

    :cond_7b
    move v4, v5

    goto :goto_5e

    :cond_7d
    const-wide/16 v0, 0x1f4

    goto :goto_65
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method public b(I)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->q:I

    if-ne p1, v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->q:I

    packed-switch p1, :pswitch_data_54

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v1, 0x7f0203a1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v1, 0x7f020379

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :pswitch_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v1, 0x7f02039e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v1, 0x7f020376

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_37
    .end packed-switch
.end method

.method public b(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-eq p1, v0, :cond_a

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_a
    return-void
.end method

.method public c(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_42

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_42
    return-void
.end method

.method protected c(Z)V
    .registers 8

    const/16 v3, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f:Lu/I;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-static {v1, v2}, Lu/k;->a(Landroid/content/Context;Lu/I;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v0}, Lu/I;->k()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v0}, Lu/I;->k()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->w()Lu/K;

    move-result-object v0

    if-eqz v0, :cond_95

    if-nez p1, :cond_60

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dA;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    invoke-virtual {v2}, Lu/I;->k()Lu/I;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/I;Lx/af;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :cond_60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dA;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    float-to-int v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/I;IILx/af;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_8d

    if-nez p1, :cond_8d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    :cond_8d
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d(Z)V

    :goto_90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:Lu/I;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f:Lu/I;

    return-void

    :cond_95
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    if-eqz v0, :cond_bf

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_bf

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/dA;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(IIZ)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b5
    if-nez p1, :cond_ba

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f()V

    :cond_ba
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d(Z)V

    goto :goto_90

    :cond_bf
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b5

    :cond_c5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_90
.end method

.method public c()Z
    .registers 2

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

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_24
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/bg;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bg;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3c
    return-void
.end method

.method protected d(Z)V
    .registers 4

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_e
    const/16 v0, 0x8

    goto :goto_3
.end method

.method protected e()I
    .registers 2

    const v0, 0x7f030045

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    if-eq p1, p3, :cond_a

    new-instance v0, Lcom/google/android/maps/driveabout/app/dw;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dw;-><init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method
