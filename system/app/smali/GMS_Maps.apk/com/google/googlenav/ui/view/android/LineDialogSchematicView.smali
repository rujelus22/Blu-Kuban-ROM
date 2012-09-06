.class public Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:Lcom/google/googlenav/ui/view/android/rideabout/r;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:[Lcom/google/googlenav/ui/view/android/bj;

.field private t:I

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/GestureDetector;

.field private w:Lcom/google/googlenav/ui/view/android/bf;

.field private x:Lcom/google/googlenav/ui/view/android/bi;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    .line 78
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    .line 83
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b()V

    .line 84
    return-void
.end method

.method private a(FI)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bf;->c()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bf;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 315
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bf;->c()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/bf;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 317
    float-to-int v2, v1

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2e

    .line 318
    float-to-int v0, v1

    .line 320
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, -0x1

    goto :goto_2d
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)I
    .registers 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;FI)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(FI)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;II)Lcom/google/googlenav/ui/view/android/DirectionTextView;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 389
    const v1, 0x7f0401c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DirectionTextView;

    .line 391
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/DirectionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {v0, p2, p3}, Lcom/google/googlenav/ui/view/android/DirectionTextView;->setPosition(II)V

    .line 393
    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide v7, 0x3ff0c152408e1c81L

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    iget v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->f:I

    sub-int v4, v0, v2

    .line 202
    const/high16 v0, -0x3d90

    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->m:I

    int-to-float v2, v2

    int-to-float v3, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 203
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 204
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    move v0, v1

    .line 205
    :goto_21
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    array-length v2, v2

    if-ge v0, v2, :cond_96

    .line 206
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/bf;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/bf;->c()I

    move-result v3

    sub-int/2addr v2, v3

    .line 207
    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->m:I

    int-to-float v3, v3

    int-to-double v9, v2

    mul-double/2addr v9, v5

    double-to-float v9, v9

    add-float/2addr v3, v9

    .line 208
    int-to-float v9, v4

    int-to-double v10, v2

    mul-double/2addr v10, v7

    double-to-float v2, v10

    add-float/2addr v9, v2

    .line 209
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    iget v10, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->q:I

    int-to-float v10, v10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/googlenav/ui/view/android/bj;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    aget-object v2, v2, v0

    iget-object v10, v2, Lcom/google/googlenav/ui/view/android/bj;->b:[Lcom/google/googlenav/ui/view/android/bk;

    .line 213
    if-eqz v10, :cond_93

    .line 214
    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->n:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    .line 215
    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->o:I

    int-to-float v3, v3

    add-float/2addr v9, v3

    move v3, v2

    move v2, v1

    .line 216
    :goto_6b
    array-length v11, v10

    if-ge v2, v11, :cond_93

    .line 217
    iget-object v11, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    aget-object v12, v10, v2

    iget v12, v12, Lcom/google/googlenav/ui/view/android/bk;->a:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v11, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    iget v12, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->g:F

    add-float/2addr v12, v3

    iget v13, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->h:I

    int-to-float v13, v13

    add-float/2addr v13, v9

    invoke-virtual {v11, v3, v9, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 220
    iget-object v11, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 221
    iget v11, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->g:F

    iget v12, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->i:F

    add-float/2addr v11, v12

    add-float/2addr v3, v11

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 205
    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 225
    :cond_96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 226
    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    int-to-float v0, p2

    int-to-float v1, p3

    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    int-to-float v0, p2

    int-to-float v1, p3

    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->l:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 197
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)I
    .registers 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    return v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setWillNotDraw(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->e:I

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->n:I

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->o:I

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->g:F

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->i:F

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->h:I

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->l:I

    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->m:I

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->f:I

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->q:I

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    .line 129
    iget v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->j:I

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/googlenav/ui/view/android/bg;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/bg;-><init>(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->v:Landroid/view/GestureDetector;

    .line 143
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->c:Lcom/google/googlenav/ui/view/android/rideabout/r;

    .line 144
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)Lcom/google/googlenav/ui/view/android/bi;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->x:Lcom/google/googlenav/ui/view/android/bi;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 147
    new-instance v0, Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bf;-><init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/bj;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    .line 148
    return-void
.end method

.method private d()I
    .registers 3

    .prologue
    .line 186
    iget v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/android/bf;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(Landroid/graphics/Canvas;)V

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->p:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bf;->a(I)I

    move-result v0

    .line 156
    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->y:Z

    if-eqz v2, :cond_28

    .line 158
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/bf;->a()I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    :cond_28
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/view/android/bf;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    iget v5, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v0, v0

    iget v5, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    iget v6, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->e:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move v0, v1

    .line 163
    :goto_4d
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    array-length v1, v1

    if-ge v0, v1, :cond_c2

    .line 164
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bf;->a(I)I

    move-result v1

    .line 165
    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->k:I

    if-lt v0, v2, :cond_a7

    .line 166
    iget v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(Landroid/graphics/Canvas;II)V

    .line 173
    :goto_61
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/bj;->a()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 174
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/bf;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 175
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->p:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d()I

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    iget v4, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->e:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->e:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->b:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 180
    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(Landroid/graphics/Canvas;II)V

    .line 163
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 168
    :cond_a7
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->p:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    int-to-float v2, v1

    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_61

    .line 183
    :cond_c2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DirectionTextView;

    .line 101
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/DirectionTextView;->a()I

    move-result v2

    .line 102
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/DirectionTextView;->b()I

    move-result v3

    .line 103
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/DirectionTextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/DirectionTextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/googlenav/ui/view/android/DirectionTextView;->layout(IIII)V

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 106
    :cond_27
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bf;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bf;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setMeasuredDimension(II)V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bf;->d()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bf;->e()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->measureChildren(II)V

    .line 95
    return-void
.end method

.method public setContentView(Landroid/widget/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->u:Landroid/widget/TextView;

    .line 342
    return-void
.end method

.method public setCurrentStationIndex(I)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput p1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->k:I

    .line 303
    return-void
.end method

.method public setDirectionSelectionListener(Lcom/google/googlenav/ui/view/android/bi;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->x:Lcom/google/googlenav/ui/view/android/bi;

    .line 234
    return-void
.end method

.method public setDrawLineAfterLastStation(Z)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->y:Z

    .line 238
    return-void
.end method

.method public setLineColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->c:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->p:I

    .line 398
    return-void
.end method

.method public setSelectedStationIndex(I)V
    .registers 2
    .parameter

    .prologue
    .line 345
    iput p1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->t:I

    .line 346
    return-void
.end method

.method public setStations([Lcom/google/googlenav/ui/view/android/bj;)V
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 349
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->s:[Lcom/google/googlenav/ui/view/android/bj;

    .line 350
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->c()V

    .line 351
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->removeAllViews()V

    move v1, v2

    .line 352
    :goto_a
    array-length v0, p1

    if-ge v1, v0, :cond_8b

    .line 353
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->a()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 354
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->b()Ljava/util/List;

    move-result-object v5

    .line 355
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bf;->a(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/bf;->a()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    sub-int v6, v0, v3

    .line 356
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->d()I

    move-result v0

    iget v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->r:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/bf;->e()I

    move-result v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 358
    const/16 v3, 0x5cc

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6, v0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/view/android/DirectionTextView;

    move-result-object v3

    .line 360
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->addView(Landroid/view/View;)V

    move v3, v2

    move v4, v0

    .line 362
    :goto_50
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_87

    .line 363
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bR;

    .line 364
    invoke-virtual {v0}, Lcom/google/googlenav/bR;->b()I

    move-result v7

    .line 365
    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->w:Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {v8}, Lcom/google/googlenav/ui/view/android/bf;->e()I

    move-result v8

    add-int/2addr v4, v8

    .line 366
    invoke-virtual {v0}, Lcom/google/googlenav/bR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6, v4}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/view/android/DirectionTextView;

    move-result-object v0

    .line 367
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 368
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 369
    new-instance v8, Lcom/google/googlenav/ui/view/android/bh;

    invoke-direct {v8, p0, v7}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->addView(Landroid/view/View;)V

    .line 362
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_50

    .line 352
    :cond_87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 382
    :cond_8b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->invalidate()V

    .line 383
    return-void
.end method
