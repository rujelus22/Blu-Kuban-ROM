.class public Lcom/google/android/apps/unveil/textinput/InstructionsView;
.super Landroid/view/View;
.source "InstructionsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field final bounds:Landroid/graphics/Rect;

.field private currentText:Ljava/lang/String;

.field private longestText:Ljava/lang/String;

.field private final maxTextSize:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    .line 37
    const-string v5, ""

    iput-object v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->longestText:Ljava/lang/String;

    .line 39
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->bounds:Landroid/graphics/Rect;

    .line 44
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/apps/unveil/textinput/R$color;->instructions_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-static {}, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->values()[Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_30
    if-ge v1, v3, :cond_4f

    aget-object v2, v0, v1

    .line 47
    .local v2, instruction:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->textId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->longestText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_4c

    .line 49
    iput-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->longestText:Ljava/lang/String;

    .line 46
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 52
    .end local v2           #instruction:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;
    .end local v4           #text:Ljava/lang/String;
    :cond_4f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/apps/unveil/textinput/R$dimen;->max_instruction_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->maxTextSize:I

    .line 53
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_18

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_18
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->currentText:Ljava/lang/String;

    if-eqz v4, :cond_71

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 92
    .local v1, bounds:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->currentText:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->currentText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v7, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 95
    .local v2, left:I
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 97
    .local v3, top:I
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->currentText:Ljava/lang/String;

    int-to-float v5, v2

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    .end local v1           #bounds:Landroid/graphics/Rect;
    .end local v2           #left:I
    .end local v3           #top:I
    :cond_71
    return-void
.end method

.method public onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 68
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 69
    .local v0, height:I
    const/4 v2, 0x1

    .line 71
    .local v2, textSize:I
    :cond_23
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->longestText:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->longestText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_46

    iget v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->maxTextSize:I

    if-le v2, v4, :cond_23

    .line 75
    :cond_46
    sget-object v4, Lcom/google/android/apps/unveil/textinput/InstructionsView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Decide instruction text size as %d, max is %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->maxTextSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 78
    .local v1, metrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getMeasuredWidth()I

    move-result v4

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method public show(Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;)V
    .registers 4
    .parameter "instruction"

    .prologue
    .line 56
    if-nez p1, :cond_9

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->currentText:Ljava/lang/String;

    .line 61
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->postInvalidate()V

    .line 62
    return-void

    .line 59
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->textId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView;->currentText:Ljava/lang/String;

    goto :goto_5
.end method
