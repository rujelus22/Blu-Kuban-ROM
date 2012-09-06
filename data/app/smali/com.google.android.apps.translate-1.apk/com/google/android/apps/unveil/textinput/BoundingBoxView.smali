.class public Lcom/google/android/apps/unveil/textinput/BoundingBoxView;
.super Landroid/view/View;
.source "BoundingBoxView.java"


# static fields
.field private static final MAX_SELECTED_STROKE_SIZE_DIP:I = 0x4

.field private static final MAX_UNSELECTED_STROKE_SIZE_DIP:I = 0x2

.field private static final MIN_SELECTED_STROKE_SIZE_DIP:I = 0x4

.field private static final MIN_UNSELECTED_STROKE_SIZE_DIP:I = 0x2

.field private static final SELECTED_COLOR:I = -0x1

.field private static final STROKE_SIZE_RATIO:F = 0.1f

.field private static final UNSELECTED_COLOR:I

.field private static logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final maxSelectedStrokeSize:F

.field private final maxUnselectedStrokeSize:F

.field private final minSelectedStrokeSize:F

.field private final minUnselectedStrokeSize:F

.field private final paint:Landroid/graphics/Paint;

.field private queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

.field private textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xff

    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 30
    const/16 v0, 0x96

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->UNSELECTED_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x4080

    const/high16 v2, 0x4000

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->paint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    invoke-static {v3, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->minSelectedStrokeSize:F

    .line 60
    invoke-static {v3, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->maxSelectedStrokeSize:F

    .line 61
    invoke-static {v2, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->minUnselectedStrokeSize:F

    .line 62
    invoke-static {v2, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->maxUnselectedStrokeSize:F

    .line 63
    return-void
.end method

.method private drawWords(Landroid/graphics/Canvas;Ljava/util/List;Z)V
    .registers 11
    .parameter "canvas"
    .parameter
    .parameter "selected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, words:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;>;"
    iget-object v6, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->paint:Landroid/graphics/Paint;

    if-eqz p3, :cond_41

    const/4 v5, -0x1

    :goto_5
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    .line 97
    .local v4, word:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
    invoke-virtual {v4}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3dcccccd

    mul-float v3, v5, v6

    .line 98
    .local v3, strokeSize:F
    if-eqz p3, :cond_44

    iget v2, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->minSelectedStrokeSize:F

    .line 99
    .local v2, minSize:F
    :goto_2a
    if-eqz p3, :cond_47

    iget v1, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->maxSelectedStrokeSize:F

    .line 100
    .local v1, maxSize:F
    :goto_2e
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 95
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #maxSize:F
    .end local v2           #minSize:F
    .end local v3           #strokeSize:F
    .end local v4           #word:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
    :cond_41
    sget v5, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->UNSELECTED_COLOR:I

    goto :goto_5

    .line 98
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #strokeSize:F
    .restart local v4       #word:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
    :cond_44
    iget v2, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->minUnselectedStrokeSize:F

    goto :goto_2a

    .line 99
    .restart local v2       #minSize:F
    :cond_47
    iget v1, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->maxUnselectedStrokeSize:F

    goto :goto_2e

    .line 103
    .end local v2           #minSize:F
    .end local v3           #strokeSize:F
    .end local v4           #word:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
    :cond_4a
    return-void
.end method


# virtual methods
.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-nez v0, :cond_7

    .line 91
    :goto_5
    monitor-exit p0

    return-void

    .line 85
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->getSelectedWords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->drawWords(Landroid/graphics/Canvas;Ljava/util/List;Z)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->getUnselectedWords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->drawWords(Landroid/graphics/Canvas;Ljava/util/List;Z)V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_35

    goto :goto_5

    .line 81
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQueryPictureSize(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 2
    .parameter "queryPictureSize"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/Check;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->invalidate()V

    .line 70
    return-void
.end method

.method public setTextMasker(Lcom/google/android/apps/unveil/textinput/TextMasker;)V
    .registers 2
    .parameter "textMasker"

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/Check;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->invalidate()V

    .line 77
    return-void
.end method
