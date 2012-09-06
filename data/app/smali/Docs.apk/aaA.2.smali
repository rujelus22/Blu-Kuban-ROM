.class public final LaaA;
.super Landroid/view/View$DragShadowBuilder;
.source "DraggableDocListEntryView.java"


# instance fields
.field private final a:I

.field private final a:Landroid/content/res/Resources;

.field final synthetic a:Landroid/graphics/Point;

.field final synthetic a:Landroid/view/View;

.field final synthetic a:Ljava/lang/String;

.field private final b:I

.field private final b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Point;Landroid/view/View;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p2, p0, LaaA;->a:Landroid/graphics/Point;

    iput-object p3, p0, LaaA;->a:Landroid/view/View;

    iput-object p4, p0, LaaA;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 128
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, LaaA;->a:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, LaaA;->b:Landroid/graphics/Point;

    .line 129
    iget-object v0, p0, LaaA;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, LaaA;->a:Landroid/content/res/Resources;

    .line 130
    iget-object v0, p0, LaaA;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LaaA;->a:Landroid/content/res/Resources;

    sget v2, LcQ;->drag_shadow_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, LabD;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, LaaA;->a:I

    .line 132
    iget-object v0, p0, LaaA;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LaaA;->a:Landroid/content/res/Resources;

    sget v2, LcQ;->drag_shadow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, LabD;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, LaaA;->b:I

    .line 134
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 139
    iget-object v1, p0, LaaA;->a:Landroid/content/res/Resources;

    sget v2, LcP;->dragshadow_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, LaaA;->a:I

    iget v3, p0, LaaA;->b:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 144
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    iget-object v1, p0, LaaA;->a:Landroid/content/res/Resources;

    sget v2, LcQ;->drag_shadow_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget-object v2, p0, LaaA;->a:Landroid/content/res/Resources;

    sget v3, LcP;->dragshadow_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v2, p0, LaaA;->a:Ljava/lang/String;

    iget v3, p0, LaaA;->a:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, LaaA;->b:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 156
    iget v1, p0, LaaA;->a:I

    iget v2, p0, LaaA;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 174
    iget-object v1, p0, LaaA;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, LaaA;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_22

    const/4 v1, 0x1

    .line 175
    :goto_19
    if-eqz v1, :cond_24

    :goto_1b
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 176
    iget v0, p0, LaaA;->b:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 177
    return-void

    :cond_22
    move v1, v0

    .line 174
    goto :goto_19

    .line 175
    :cond_24
    iget v0, p0, LaaA;->a:I

    goto :goto_1b
.end method
