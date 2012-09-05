.class final Lcom/sdgtl/mediahub/spr/an;
.super Lcom/sdgtl/mediahub/spr/ap;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method private constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/an;->a:Lcom/sdgtl/mediahub/spr/Main;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/ap;-><init>(Lcom/sdgtl/mediahub/spr/Main;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdgtl/mediahub/spr/Main;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/an;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    return-void
.end method

.method private static a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_17

    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_17

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_12
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_17
    return-object v1

    :cond_18
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_17
.end method


# virtual methods
.method public final synthetic requestBitmap(Ljava/lang/Object;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V
    .registers 11

    const/high16 v3, 0x4000

    const/4 v4, 0x0

    check-cast p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/an;->b()Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0d003d

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Lcom/sdgtl/mediahub/spr/an;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0053

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/sdgtl/mediahub/spr/an;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    if-eqz v1, :cond_46

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Ljava/lang/String;)I

    move-result v6

    const v1, 0x7f0d0037

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_46

    instance-of v1, v2, Landroid/widget/ImageView;

    if-eqz v1, :cond_46

    const/4 v1, -0x1

    if-eq v6, v1, :cond_46

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_46
    const v1, 0x7f0d0041

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->o:Ljava/lang/String;

    invoke-static {v5, v1, v2}, Lcom/sdgtl/mediahub/spr/an;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    if-eqz v2, :cond_ab

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x4314

    cmpl-float v0, v0, v2

    if-lez v0, :cond_ab

    const/4 v0, 0x6

    :goto_66
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/an;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getInfoWidth()I

    move-result v2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/an;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getCoverHeight()I

    move-result v6

    if-lez v2, :cond_ae

    move v0, v3

    :goto_80
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    if-lez v6, :cond_b0

    :goto_86
    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v5, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    const/4 v1, 0x0

    :try_start_99
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_9e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_9e} :catch_b2

    move-result-object v0

    :try_start_9f
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9f .. :try_end_a7} :catch_ba

    :goto_a7
    invoke-interface {p2, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;->bitmapReady(Landroid/graphics/Bitmap;)V

    return-void

    :cond_ab
    const/16 v0, 0x8

    goto :goto_66

    :cond_ae
    move v0, v4

    goto :goto_80

    :cond_b0
    move v3, v4

    goto :goto_86

    :catch_b2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_b6
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a7

    :catch_ba
    move-exception v1

    goto :goto_b6
.end method
