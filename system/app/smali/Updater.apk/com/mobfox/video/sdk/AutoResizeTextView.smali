.class public Lcom/mobfox/video/sdk/AutoResizeTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final a:Landroid/graphics/Canvas;


# instance fields
.field private b:Lcom/mobfox/video/sdk/a;

.field private c:Z

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/mobfox/video/sdk/AutoResizeTextView;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mobfox/video/sdk/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mobfox/video/sdk/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->c:Z

    iput v1, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->e:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->f:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->g:F

    iput v1, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->i:Z

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .registers 13

    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->g:F

    iget v6, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->h:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    sget-object v1, Lcom/mobfox/video/sdk/AutoResizeTextView;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 17

    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->c:Z

    if-eqz v0, :cond_37

    :cond_6
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int v9, v0, v1

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_37

    if-lez v9, :cond_37

    if-lez v3, :cond_37

    iget v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3b

    :cond_37
    :goto_37
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void

    :cond_3b
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    iget v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->e:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_a3

    iget v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    iget v4, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->e:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_51
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v4

    move v8, v0

    move v0, v4

    :goto_57
    if-le v0, v9, :cond_5f

    iget v4, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->f:F

    cmpl-float v4, v8, v4

    if-gtz v4, :cond_a6

    :cond_5f
    iget-boolean v4, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->i:Z

    if-eqz v4, :cond_8f

    iget v4, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->f:F

    cmpl-float v4, v8, v4

    if-nez v4, :cond_8f

    if-le v0, v9, :cond_8f

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->g:F

    iget v6, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->h:F

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    sget-object v4, Lcom/mobfox/video/sdk/AutoResizeTextView;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_8f

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    if-gez v5, :cond_b6

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8f
    :goto_8f
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->h:F

    iget v1, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->g:F

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/video/sdk/AutoResizeTextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->b:Lcom/mobfox/video/sdk/a;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->b:Lcom/mobfox/video/sdk/a;

    :cond_9f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->c:Z

    goto :goto_37

    :cond_a3
    iget v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    goto :goto_51

    :cond_a6
    const/high16 v0, 0x4000

    sub-float v0, v8, v0

    iget v4, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->f:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mobfox/video/sdk/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v0

    move v8, v4

    goto :goto_57

    :cond_b6
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    const-string v5, "..."

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    move v10, v4

    move v4, v0

    move v0, v10

    :goto_cb
    int-to-float v7, v3

    add-float/2addr v4, v5

    cmpg-float v4, v7, v4

    if-ltz v4, :cond_ed

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8f

    :cond_ed
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    goto :goto_cb
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    if-ne p1, p3, :cond_4

    if-eq p2, p4, :cond_7

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->c:Z

    :cond_7
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->c:Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    iput v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->e:F

    return-void
.end method

.method public setLineSpacing(FF)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iput p2, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->g:F

    iput p1, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->h:F

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/AutoResizeTextView;->d:F

    return-void
.end method
