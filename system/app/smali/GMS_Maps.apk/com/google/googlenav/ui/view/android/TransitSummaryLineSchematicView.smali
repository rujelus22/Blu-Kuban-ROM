.class public Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;
.super Landroid/view/View;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lai/e;

.field private d:Lbb/C;

.field private e:Lah/g;

.field private f:Ljava/util/List;

.field private g:Landroid/graphics/Bitmap;

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->b:Landroid/graphics/Rect;

    new-instance v0, Lai/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lai/e;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->c:Lai/e;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->b:Landroid/graphics/Rect;

    new-instance v0, Lai/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lai/e;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->c:Lai/e;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020098

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->h:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->i:F

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public a(Lah/g;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->e:Lah/g;

    return-void
.end method

.method public a(Lbb/C;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->d:Lbb/C;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->f:Ljava/util/List;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->getHeight()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->getWidth()I

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_18
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ck;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->d:Lbb/C;

    iget-wide v6, v0, Lcom/google/googlenav/ui/view/android/ck;->c:J

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->getWidth()I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lbb/C;->a(JI)F

    move-result v3

    if-eqz v1, :cond_53

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->b:Landroid/graphics/Rect;

    float-to-int v2, v2

    add-int/2addr v2, v5

    iget v7, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->i:F

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v4, v7

    float-to-int v8, v3

    sub-int/2addr v8, v5

    iget v9, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->i:F

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->b:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_53
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->g:Landroid/graphics/Bitmap;

    int-to-float v6, v5

    sub-float v6, v3, v6

    sub-int v7, v4, v5

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->c:Lai/e;

    invoke-virtual {v2, p1}, Lai/e;->a(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->e:Lah/g;

    iget-char v6, v0, Lcom/google/googlenav/ui/view/android/ck;->a:C

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->c:Lai/e;

    float-to-int v8, v3

    iget v9, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->h:F

    float-to-int v9, v9

    invoke-interface {v2, v6, v7, v8, v9}, Lah/g;->a(CLah/e;II)Z

    iget-object v2, v0, Lcom/google/googlenav/ui/view/android/ck;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->e:Lah/g;

    iget-char v6, v0, Lcom/google/googlenav/ui/view/android/ck;->a:C

    invoke-interface {v2, v6}, Lah/g;->c(C)I

    move-result v2

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->e:Lah/g;

    iget-char v7, v0, Lcom/google/googlenav/ui/view/android/ck;->a:C

    invoke-interface {v6, v7}, Lah/g;->b(C)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/ck;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v7, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->h:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/TransitSummaryLineSchematicView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_af
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto/16 :goto_18

    :cond_b5
    return-void
.end method
