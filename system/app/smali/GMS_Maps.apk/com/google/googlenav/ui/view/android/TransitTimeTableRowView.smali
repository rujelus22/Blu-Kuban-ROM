.class public Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:[Lcom/google/googlenav/bP;

.field private c:Lcom/google/googlenav/ui/view/android/bf;

.field private d:F

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->c:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bf;->d()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    :cond_2b
    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x1

    const v10, -0x777778

    const/high16 v9, -0x100

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move v1, v2

    .line 75
    :goto_b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    array-length v0, v0

    if-ge v1, v0, :cond_20

    .line 76
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->c:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bf;->a(I)I

    move-result v0

    iget v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->f:I

    add-int v5, v0, v3

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    aget-object v0, v0, v1

    if-nez v0, :cond_24

    .line 112
    :cond_20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    return-void

    .line 80
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->e:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/google/googlenav/bQ;

    .line 83
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/googlenav/bP;->b()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 84
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    :goto_48
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/googlenav/bP;->a()Ljava/lang/String;

    move-result-object v3

    int-to-float v6, v5

    iget v7, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->d:F

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    if-eqz v0, :cond_99

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/googlenav/bQ;

    .line 93
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    add-int/lit8 v6, v1, 0x1

    aget-object v3, v3, v6

    if-nez v3, :cond_a4

    move v3, v4

    .line 94
    :goto_69
    if-eqz v3, :cond_a6

    .line 95
    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    :goto_70
    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->c:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/view/android/bf;->a()I

    move-result v6

    add-int/2addr v5, v6

    .line 102
    const/16 v6, 0x4af

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlenav/bQ;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v6}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 106
    int-to-float v5, v5

    iget v6, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->d:F

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    if-nez v3, :cond_20

    .line 75
    :cond_99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    .line 86
    :cond_9e
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_48

    :cond_a4
    move v3, v2

    .line 93
    goto :goto_69

    .line 97
    :cond_a6
    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_70
.end method

.method private a(Lcom/google/googlenav/ui/view/android/bf;)V
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 51
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->f:I

    .line 54
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->c:Lcom/google/googlenav/ui/view/android/bf;

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->e:I

    .line 57
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/bf;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->e:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->d:F

    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a(Landroid/graphics/Canvas;)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->c:Lcom/google/googlenav/ui/view/android/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bf;->a(I)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->c:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bf;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->c:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bf;->e()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->setMeasuredDimension(II)V

    .line 66
    return-void
.end method

.method public setTimeTableRow([Lcom/google/googlenav/bP;Lcom/google/googlenav/ui/view/android/bf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->b:[Lcom/google/googlenav/bP;

    .line 131
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->a(Lcom/google/googlenav/ui/view/android/bf;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->invalidate()V

    .line 133
    return-void
.end method
