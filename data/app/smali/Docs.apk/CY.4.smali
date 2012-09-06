.class public LCY;
.super Ljava/lang/Object;
.source "TextView.java"


# instance fields
.field private a:I

.field private a:J

.field private final a:Landroid/graphics/Paint;

.field private final a:Landroid/graphics/Path;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 4
    .parameter

    .prologue
    .line 4793
    iput-object p1, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4787
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LCY;->a:Landroid/graphics/Path;

    .line 4788
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LCY;->a:Landroid/graphics/Paint;

    .line 4794
    iget-object v0, p0, LCY;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4795
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 4872
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;LCY;)LCY;

    .line 4873
    return-void
.end method

.method public static synthetic a(LCY;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 4786
    invoke-direct {p0, p1}, LCY;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 11
    .parameter

    .prologue
    .line 4851
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-nez v0, :cond_7

    .line 4869
    :goto_6
    return-void

    .line 4853
    :cond_7
    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v7

    monitor-enter v7

    .line 4854
    :try_start_c
    iget-object v0, p0, LCY;->a:Landroid/graphics/Path;

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4856
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v5

    .line 4857
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v0

    iget-object v1, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;Z)I

    move-result v1

    add-int v6, v0, v1

    .line 4859
    if-eqz p1, :cond_59

    .line 4860
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    const-wide/16 v1, 0x10

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v5

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, v6

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/2addr v5, v8

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    add-int/2addr v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/text/TextView;->postInvalidateDelayed(JIIII)V

    .line 4868
    :goto_54
    monitor-exit v7

    goto :goto_6

    :catchall_56
    move-exception v0

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_56

    throw v0

    .line 4865
    :cond_59
    :try_start_59
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/docs/editors/text/TextView;->postInvalidate(IIII)V
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_56

    goto :goto_54
.end method

.method private a()Z
    .registers 5

    .prologue
    .line 4826
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LCY;->a:J

    sub-long/2addr v0, v2

    .line 4827
    const-wide/16 v2, 0x190

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    const/4 v0, 0x0

    .line 4833
    :goto_e
    return v0

    .line 4829
    :cond_f
    const/high16 v2, 0x3f80

    long-to-float v0, v0

    const/high16 v1, 0x43c8

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 4830
    iget-object v1, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 4831
    iget-object v2, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v2

    .line 4832
    iget-object v1, p0, LCY;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4833
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private b()Z
    .registers 5

    .prologue
    .line 4837
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    .line 4838
    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 4847
    :goto_7
    return v0

    .line 4841
    :cond_8
    iget-object v0, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4842
    iget v1, p0, LCY;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4843
    iget v2, p0, LCY;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4845
    iget-object v2, p0, LCY;->a:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 4846
    iget-object v2, p0, LCY;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v2, v2, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    iget-object v3, p0, LCY;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0, v3}, LCl;->a(IILandroid/graphics/Path;)V

    .line 4847
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4808
    invoke-direct {p0}, LCY;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, LCY;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4809
    if-eqz p2, :cond_13

    .line 4810
    int-to-float v0, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4813
    :cond_13
    iget-object v0, p0, LCY;->a:Landroid/graphics/Path;

    iget-object v1, p0, LCY;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4815
    if-eqz p2, :cond_21

    .line 4816
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4818
    :cond_21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LCY;->a(Z)V

    .line 4823
    :goto_25
    return-void

    .line 4820
    :cond_26
    invoke-direct {p0}, LCY;->a()V

    .line 4821
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LCY;->a(Z)V

    goto :goto_25
.end method

.method public a(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 4798
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    move-result v0

    iput v0, p0, LCY;->a:I

    .line 4799
    iget v0, p0, LCY;->a:I

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LCY;->b:I

    .line 4800
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LCY;->a:J

    .line 4802
    iget v0, p0, LCY;->a:I

    if-ltz v0, :cond_21

    iget v0, p0, LCY;->b:I

    if-gez v0, :cond_24

    .line 4803
    :cond_21
    invoke-direct {p0}, LCY;->a()V

    .line 4805
    :cond_24
    return-void
.end method
