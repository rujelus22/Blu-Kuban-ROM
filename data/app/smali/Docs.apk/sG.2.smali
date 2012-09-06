.class public LsG;
.super LsE;
.source "FastScrollerCustom.java"


# instance fields
.field private a:I

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/RectF;

.field private a:Landroid/graphics/drawable/NinePatchDrawable;

.field private a:LsH;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, LsE;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;)V

    .line 50
    invoke-direct {p0, p1}, LsG;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, LsG;->a:Landroid/graphics/Paint;

    .line 65
    sget v1, LcR;->menu_submenu_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, LsG;->a:Landroid/graphics/drawable/NinePatchDrawable;

    .line 66
    iget-object v0, p0, LsG;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 67
    iget-object v0, p0, LsG;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, LsG;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, LsG;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, LsG;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LsG;->a:Landroid/graphics/RectF;

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, LsE;->a()I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, LsE;->a()V

    .line 56
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 118
    invoke-virtual {p0}, LsG;->a()I

    move-result v0

    .line 119
    invoke-super {p0, p1}, LsE;->a(I)V

    .line 120
    if-ne p1, v0, :cond_b

    .line 130
    :cond_a
    :goto_a
    return-void

    .line 124
    :cond_b
    if-eq p1, v2, :cond_f

    if-ne v0, v2, :cond_a

    .line 125
    :cond_f
    iget-object v0, p0, LsG;->a:LsH;

    if-eqz v0, :cond_a

    .line 126
    iget-object v1, p0, LsG;->a:LsH;

    if-ne p1, v2, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-interface {v1, v0}, LsH;->a(I)V

    goto :goto_a

    :cond_1c
    const/4 v0, 0x2

    goto :goto_18
.end method

.method public a(IIIILandroid/content/res/Resources;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2, p3, p4}, LsG;->a(IIII)V

    .line 87
    iget-object v0, p0, LsG;->a:Landroid/graphics/RectF;

    .line 88
    iget v1, p0, LsG;->a:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 89
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, LsG;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 90
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 92
    iget-object v2, p0, LsG;->a:Landroid/graphics/Paint;

    const-string v3, "W"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 93
    const/high16 v2, 0x41f0

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, LsG;->b:I

    .line 94
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, LsG;->b:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 95
    iget-object v1, p0, LsG;->a:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_5c

    .line 96
    iget-object v1, p0, LsG;->a:Landroid/graphics/drawable/NinePatchDrawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 98
    :cond_5c
    return-void
.end method

.method public bridge synthetic a(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, LsE;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method a(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LsG;->a:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v0, p0, LsG;->a:Landroid/graphics/Paint;

    .line 78
    iget-object v1, p0, LsG;->a:Landroid/graphics/RectF;

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    .line 81
    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v5

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v4, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public a(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, LsE;->a(Landroid/widget/AbsListView;III)V

    .line 104
    return-void
.end method

.method public a(LsH;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, LsG;->a:LsH;

    .line 147
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, LsE;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, LsE;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput p1, p0, LsG;->a:I

    .line 139
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, LsE;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 150
    const-string v0, ""

    iput-object v0, p0, LsG;->a:Ljava/lang/String;

    .line 151
    invoke-super {p0}, LsE;->b()V

    .line 152
    return-void
.end method

.method public c(I)V
    .registers 4
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, LsG;->a:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    return-void
.end method
