.class public Lcom/google/googlenav/ui/android/ElevationSeriesView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Paint;

.field private f:Lcom/google/googlenav/ui/android/E;

.field private g:Lcom/google/googlenav/ui/android/E;

.field private h:Ljava/util/List;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/android/ElevationSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 64
    const v2, 0x7f090076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 66
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a:Landroid/graphics/Path;

    .line 67
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->d:Landroid/graphics/Path;

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->setChartColor(II)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->setWillNotDraw(Z)V

    .line 70
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 20
    .parameter

    .prologue
    .line 114
    const/4 v7, 0x0

    .line 115
    const-wide/16 v5, 0x0

    .line 116
    const/4 v4, 0x0

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v2, 0x0

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/a;

    .line 128
    if-nez v2, :cond_84

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->g:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->d:Landroid/graphics/Path;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->g:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v3

    .line 138
    :goto_69
    if-eqz v4, :cond_73

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v10

    cmpl-double v3, v10, v5

    if-lez v3, :cond_13d

    .line 139
    :cond_73
    int-to-float v6, v2

    .line 140
    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v4

    .line 141
    const/4 v3, 0x1

    :goto_79
    move v7, v6

    move v14, v2

    move-object v2, v1

    move v15, v3

    move v3, v14

    move-wide/from16 v16, v4

    move-wide/from16 v5, v16

    move v4, v15

    .line 143
    goto :goto_32

    .line 132
    :cond_84
    invoke-virtual {v2}, Lae/a;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v1}, Lae/a;->a()Lat/B;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v2

    add-int/2addr v2, v3

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->f:Lcom/google/googlenav/ui/android/E;

    int-to-double v11, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->g:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->d:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->f:Lcom/google/googlenav/ui/android/E;

    int-to-double v11, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->g:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_69

    .line 148
    :cond_ca
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->d:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->f:Lcom/google/googlenav/ui/android/E;

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->d:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->d:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 155
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->i:Z

    if-eqz v1, :cond_13c

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->f:Lcom/google/googlenav/ui/android/E;

    float-to-double v2, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->g:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v2, v5, v6}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v2

    const/high16 v3, 0x4040

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    :cond_13c
    return-void

    :cond_13d
    move v3, v4

    move-wide v14, v5

    move-wide v4, v14

    move v6, v7

    goto/16 :goto_79
.end method


# virtual methods
.method a(Lcom/google/googlenav/ui/android/E;Lcom/google/googlenav/ui/android/E;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    const-string v0, "missing horizontal axis"

    invoke-static {p1, v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/E;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->f:Lcom/google/googlenav/ui/android/E;

    .line 74
    const-string v0, "missing vertical axis"

    invoke-static {p2, v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/E;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->g:Lcom/google/googlenav/ui/android/E;

    .line 75
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->h:Ljava/util/List;

    .line 97
    iput-boolean p2, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->i:Z

    .line 98
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->invalidate()V

    .line 99
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->h:Ljava/util/List;

    if-nez v0, :cond_5

    .line 108
    :goto_4
    return-void

    .line 107
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public setChartColor(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->b:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->e:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->c:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationSeriesView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    return-void
.end method
