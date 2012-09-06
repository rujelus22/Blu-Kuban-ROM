.class public Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;
.super Landroid/view/View;
.source "TrixNativeGridView.java"


# static fields
.field private static final a:D

.field private static a:Ljava/lang/String;


# instance fields
.field private a:F

.field private final a:LEC;

.field private a:LER;

.field private final a:LFM;

.field private final a:Landroid/view/GestureDetector;

.field private a:Landroid/widget/Scroller;

.field private a:Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel",
            "<",
            "LEo;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lws;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 86
    const-string v0, "TrixGridView"

    sput-object v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/lang/String;

    .line 98
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    .line 104
    new-instance v0, LEC;

    invoke-direct {v0, p0, v2}, LEC;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;LEA;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LEC;

    .line 105
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LEC;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/view/GestureDetector;

    .line 106
    new-instance v0, LFM;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LEC;

    invoke-direct {v0, v1}, LFM;-><init>(LFN;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LFM;

    .line 107
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    .line 108
    iput-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lws;

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    .line 104
    new-instance v0, LEC;

    invoke-direct {v0, p0, v2}, LEC;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;LEA;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LEC;

    .line 105
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LEC;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/view/GestureDetector;

    .line 106
    new-instance v0, LFM;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LEC;

    invoke-direct {v0, v1}, LFM;-><init>(LFN;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LFM;

    .line 107
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    .line 108
    iput-object v2, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lws;

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a()V

    .line 118
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;F)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    return v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Paint;
    .registers 19
    .parameter
    .parameter

    .prologue
    .line 221
    const-wide/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v4, v1

    .line 223
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    div-float v11, v1, v4

    .line 225
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 227
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 229
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 230
    const/high16 v1, 0x42a0

    mul-float v12, v1, v4

    .line 231
    const/high16 v1, 0x4180

    mul-float v13, v1, v4

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    invoke-virtual {v1}, LER;->a()LEU;

    move-result-object v1

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    invoke-virtual {v2, v1}, LER;->a(LEU;)LEV;

    move-result-object v2

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    new-instance v5, LEU;

    invoke-virtual {v1}, LEU;->a()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    add-double/2addr v7, v9

    invoke-virtual {v1}, LEU;->b()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    div-float/2addr v1, v14

    float-to-double v14, v1

    add-double/2addr v9, v14

    invoke-direct {v5, v7, v8, v9, v10}, LEU;-><init>(DD)V

    invoke-virtual {v3, v5}, LER;->a(LEU;)LEV;

    move-result-object v1

    .line 237
    invoke-virtual {v2}, LEV;->a()I

    move-result v8

    .line 238
    invoke-virtual {v1}, LEV;->a()I

    move-result v3

    add-int/lit8 v14, v3, 0x1

    .line 239
    invoke-virtual {v2}, LEV;->b()I

    move-result v7

    .line 240
    invoke-virtual {v1}, LEV;->b()I

    move-result v1

    add-int/lit8 v15, v1, 0x1

    move v10, v8

    .line 243
    :goto_86
    if-ge v10, v14, :cond_a8

    move v9, v7

    .line 244
    :goto_89
    if-ge v9, v15, :cond_a4

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    invoke-virtual {v1, v10, v9}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEo;

    .line 246
    int-to-float v2, v10

    mul-float/2addr v2, v12

    float-to-int v2, v2

    .line 247
    int-to-float v3, v9

    mul-float/2addr v3, v13

    float-to-int v3, v3

    move-object/from16 v5, p1

    .line 248
    invoke-virtual/range {v1 .. v6}, LEo;->a(IIFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 244
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_89

    .line 243
    :cond_a4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_86

    .line 252
    :cond_a8
    const/high16 v1, 0x3f80

    div-float/2addr v1, v11

    const/high16 v2, 0x3f80

    div-float/2addr v2, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    const/high16 v1, 0x42a0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    mul-float v9, v1, v2

    .line 255
    const/high16 v1, 0x4180

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    mul-float v10, v1, v2

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    const/high16 v1, 0x3f80

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    :goto_d1
    if-ge v8, v14, :cond_eb

    .line 260
    int-to-float v1, v8

    mul-float/2addr v1, v9

    float-to-int v1, v1

    .line 261
    int-to-float v2, v1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float v4, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 259
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_d1

    .line 264
    :cond_eb
    :goto_eb
    if-ge v7, v15, :cond_105

    .line 265
    int-to-float v1, v7

    mul-float/2addr v1, v10

    float-to-int v1, v1

    .line 266
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v3, v1

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 264
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_eb

    .line 268
    :cond_105
    return-object v6
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)Landroid/widget/Scroller;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/widget/Scroller;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)Lws;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lws;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 121
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/widget/Scroller;

    .line 122
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;Lws;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Lws;)V

    return-void
.end method

.method private a(Lws;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lws;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lws;

    .line 128
    new-instance v0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    new-instance v1, LEA;

    invoke-direct {v1, p0}, LEA;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;-><init>(Lws;LEP;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a(II)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a()LER;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->b()V

    .line 143
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, LES;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, LES;-><init>(IIII)V

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    invoke-virtual {v1, v0}, LER;->a(LES;)V

    .line 156
    invoke-virtual {v0}, LES;->a()V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->invalidate()V

    .line 158
    return-void
.end method


# virtual methods
.method public a(LEK;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 275
    new-instance v0, LEB;

    invoke-direct {v0, p0}, LEB;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)V

    invoke-virtual {p1, p2, v0}, LEK;->a(ILEM;)Lws;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Lws;

    .line 289
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->scrollTo(II)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->postInvalidate()V

    .line 184
    :cond_1a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x1

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    if-nez v0, :cond_6

    .line 218
    :cond_5
    :goto_5
    return-void

    .line 195
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_13
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-lez v0, :cond_35

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_13

    .line 201
    :cond_35
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Paint;

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v10, :cond_5

    .line 206
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 207
    const/high16 v0, 0x4180

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v0

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v0

    .line 210
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v6, v4, 0x50

    add-int/lit8 v7, v5, 0x1e

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 212
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    const/high16 v0, -0x100

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v1, v8

    long-to-double v0, v0

    div-double v0, v6, v0

    .line 216
    const-string v2, "FPS %02.1f"

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v4

    add-int/lit8 v2, v5, 0x14

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    if-eqz v0, :cond_a

    .line 149
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->b()V

    .line 151
    :cond_a
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    iget v1, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, LER;->a(D)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LER;

    new-instance v1, LEU;

    int-to-float v2, p1

    iget v3, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    int-to-float v4, p2

    iget v5, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, LEU;-><init>(DD)V

    invoke-virtual {v0, v1}, LER;->a(LEU;)V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->invalidate()V

    .line 176
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:LFM;

    invoke-virtual {v0, p1}, LFM;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    :cond_9
    :goto_9
    return v1

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9
.end method
