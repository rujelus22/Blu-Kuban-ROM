.class public Lcom/google/googlenav/ui/android/PieLineView;
.super Landroid/widget/TextView;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/view/Display;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0xe

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc7

    const/16 v3, 0xb

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xdc

    const/16 v3, 0x6e

    const/16 v4, 0x1a

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xda

    const/16 v3, 0xdb

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x95

    const/16 v3, 0xd8

    const/16 v4, 0x43

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x96

    invoke-static {v5, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/googlenav/ui/android/PieLineView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->b:Landroid/view/Display;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(II)I
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x4000

    if-eq v1, v2, :cond_10

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_11

    :cond_10
    move p2, v0

    :cond_11
    return p2
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;I)I
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    return v0
.end method

.method private a(Lcom/google/googlenav/ui/android/S;Landroid/graphics/Paint;I)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p1, Lcom/google/googlenav/ui/android/S;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/googlenav/ui/android/S;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, p3, -0x4

    if-gt v1, v2, :cond_1d

    iget-object v0, p1, Lcom/google/googlenav/ui/android/S;->c:Ljava/lang/String;

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v1, p1, Lcom/google/googlenav/ui/android/S;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/googlenav/ui/android/S;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p3, -0x4

    if-gt v0, v1, :cond_35

    iget-object v0, p1, Lcom/google/googlenav/ui/android/S;->b:Ljava/lang/String;

    goto :goto_1c

    :cond_35
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingRight()I

    move-result v2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingBottom()I

    move-result v2

    sub-int v10, v0, v2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v1

    move v2, v1

    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    iget v5, v0, Lcom/google/googlenav/ui/android/S;->a:I

    if-lez v5, :cond_39

    iget v0, v0, Lcom/google/googlenav/ui/android/S;->a:I

    add-int/2addr v0, v7

    add-int/lit8 v2, v2, 0x1

    move v7, v0

    goto :goto_39

    :cond_50
    mul-int/lit8 v0, v2, 0x1

    sub-int v11, v3, v0

    move v8, v1

    move v9, v1

    :goto_56
    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/googlenav/ui/android/S;

    iget v0, v6, Lcom/google/googlenav/ui/android/S;->a:I

    if-lez v0, :cond_a9

    iget v0, v6, Lcom/google/googlenav/ui/android/S;->a:I

    mul-int/2addr v0, v11

    div-int v12, v0, v7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    sget-object v1, Lcom/google/googlenav/ui/android/PieLineView;->a:[I

    sget-object v2, Lcom/google/googlenav/ui/android/PieLineView;->a:[I

    array-length v2, v2

    rem-int v2, v8, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v9

    const/4 v2, 0x0

    add-int v0, v9, v12

    int-to-float v3, v0

    int-to-float v4, v10

    iget-object v5, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    invoke-direct {p0, v6, v0, v12}, Lcom/google/googlenav/ui/android/PieLineView;->a(Lcom/google/googlenav/ui/android/S;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, v10}, Lcom/google/googlenav/ui/android/PieLineView;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v1

    add-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a1
    add-int/lit8 v0, v12, 0x1

    add-int/2addr v0, v9

    :goto_a4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v0

    goto :goto_56

    :cond_a9
    move v0, v9

    goto :goto_a4
.end method

.method protected onMeasure(II)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->b:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/PieLineView;->a(II)I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/android/PieLineView;->a(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/PieLineView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method