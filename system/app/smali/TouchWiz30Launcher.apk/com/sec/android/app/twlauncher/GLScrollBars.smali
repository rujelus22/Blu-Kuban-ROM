.class public Lcom/sec/android/app/twlauncher/GLScrollBars;
.super Ljava/lang/Object;
.source "GLScrollBars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLScrollBars$BaseFadingEdgeShader;
    }
.end annotation


# instance fields
.field private mColorBlue:F

.field private mColorGreen:F

.field private mColorRed:F

.field private mFadeDelay:I

.field private mFadeDuration:I

.field private mFadeStart:J

.field private mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field private mHorizontalSize:I

.field private mOpacity:F

.field private mPadding:I

.field private mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field private mVerticalSize:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 6
    .parameter "targetView"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 24
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    .line 27
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    .line 28
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    .line 29
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    .line 31
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    .line 32
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    .line 33
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    .line 34
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    .line 466
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$1;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 470
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$2;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "targetView"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0xff

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 24
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    .line 27
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    .line 28
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    .line 29
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    .line 31
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    .line 32
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    .line 33
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    .line 34
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    .line 466
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$1;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 470
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$2;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    .line 49
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLScrollBars:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setHorizontalHeight(I)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setVerticalWidth(I)V

    .line 58
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setPadding(I)V

    .line 61
    const/4 v1, 0x3

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setColor(I)V

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method private calculateOpacity()F
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, opacity:F
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1d

    .line 81
    const/high16 v3, 0x3f80

    .line 82
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 83
    .local v1, now:J
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1e

    .line 84
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 97
    .end local v1           #now:J
    :cond_1d
    :goto_1d
    return v3

    .line 85
    .restart local v1       #now:J
    :cond_1e
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_1d

    .line 86
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    sub-long v4, v1, v4

    long-to-int v0, v4

    .line 87
    .local v0, fadeTime:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    if-lt v0, v4, :cond_31

    .line 88
    const/4 v3, 0x0

    .line 89
    iput-wide v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    goto :goto_1d

    .line 93
    :cond_31
    const/high16 v4, 0x3f80

    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    goto :goto_1d
.end method


# virtual methods
.method public awakenScrollBars()Z
    .registers 4

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, rc:Z
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    if-gtz v1, :cond_10

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    if-lez v1, :cond_1a

    .line 71
    :cond_10
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 73
    const/4 v0, 0x1

    .line 75
    :cond_1a
    return v0
.end method

.method public drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z
    .registers 16
    .parameter "canvas"
    .parameter "horizontalRange"
    .parameter "horizontalOffset"
    .parameter "horizontalExtent"

    .prologue
    const/4 v9, 0x0

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, redraw:Z
    if-lez p4, :cond_70

    if-ge p4, p2, :cond_70

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->calculateOpacity()F

    move-result v2

    .local v2, opacity:F
    cmpl-float v7, v2, v9

    if-lez v7, :cond_70

    .line 121
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    sub-int v6, v7, v8

    .line 122
    .local v6, y:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 123
    .local v4, size:I
    int-to-float v7, v4

    int-to-float v8, p4

    mul-float/2addr v7, v8

    int-to-float v8, p2

    div-float v0, v7, v8

    .line 124
    .local v0, length:F
    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 127
    .local v5, x:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    mul-int/lit8 v1, v7, 0x2

    .line 128
    .local v1, minLength:I
    int-to-float v7, v1

    cmpg-float v7, v0, v7

    if-gez v7, :cond_41

    .line 129
    int-to-float v0, v1

    .line 132
    :cond_41
    add-float v7, v5, v0

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_71

    .line 133
    int-to-float v7, v4

    sub-float v5, v7, v0

    .line 140
    :cond_4b
    :goto_4b
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 141
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 142
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    mul-float/2addr v10, v2

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 143
    int-to-float v7, v6

    add-float v8, v5, v0

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    invoke-virtual {p1, v5, v7, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 144
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 145
    const/4 v3, 0x1

    .line 147
    .end local v0           #length:F
    .end local v1           #minLength:I
    .end local v2           #opacity:F
    .end local v4           #size:I
    .end local v5           #x:F
    .end local v6           #y:I
    :cond_70
    return v3

    .line 136
    .restart local v0       #length:F
    .restart local v1       #minLength:I
    .restart local v2       #opacity:F
    .restart local v4       #size:I
    .restart local v5       #x:F
    .restart local v6       #y:I
    :cond_71
    cmpg-float v7, v5, v9

    if-gez v7, :cond_4b

    .line 137
    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    goto :goto_4b
.end method

.method public drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z
    .registers 16
    .parameter "canvas"
    .parameter "verticalRange"
    .parameter "verticalOffset"
    .parameter "verticalExtent"

    .prologue
    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, redraw:Z
    if-lez p4, :cond_70

    if-ge p4, p2, :cond_70

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->calculateOpacity()F

    move-result v2

    .local v2, opacity:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_70

    .line 171
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    sub-int v5, v7, v8

    .line 172
    .local v5, x:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 173
    .local v4, size:I
    int-to-float v7, v4

    int-to-float v8, p4

    mul-float/2addr v7, v8

    int-to-float v8, p2

    div-float v0, v7, v8

    .line 174
    .local v0, length:F
    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 177
    .local v6, y:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    mul-int/lit8 v1, v7, 0x2

    .line 178
    .local v1, minLength:I
    int-to-float v7, v1

    cmpg-float v7, v0, v7

    if-gez v7, :cond_41

    .line 179
    int-to-float v0, v1

    .line 182
    :cond_41
    add-float v7, v6, v0

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4b

    .line 183
    int-to-float v7, v4

    sub-float v6, v7, v0

    .line 185
    :cond_4b
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 186
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 187
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    mul-float/2addr v10, v2

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 188
    int-to-float v7, v5

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    add-float v9, v6, v0

    invoke-virtual {p1, v7, v6, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 189
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 190
    const/4 v3, 0x1

    .line 192
    .end local v0           #length:F
    .end local v1           #minLength:I
    .end local v2           #opacity:F
    .end local v4           #size:I
    .end local v5           #x:I
    .end local v6           #y:F
    :cond_70
    return v3
.end method

.method public fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I[F[I)Z
    .registers 23
    .parameter "canvas"
    .parameter "backgroundColor"
    .parameter "fadingEdgeStrength"
    .parameter "paddingOffset"

    .prologue
    .line 227
    const/4 v12, 0x0

    .line 228
    .local v12, edgesRequired:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v14

    .line 229
    .local v14, left:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v16

    .line 230
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p4, v2

    add-int v15, v1, v2

    .line 231
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p4, v2

    add-int v11, v1, v2

    .line 232
    .local v11, bottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aget v2, p4, v2

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    aget v2, p4, v2

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 235
    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_6b

    const/4 v1, 0x2

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14a

    .line 236
    :cond_6b
    const/4 v12, 0x1

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    if-nez v1, :cond_86

    .line 238
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001c

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 241
    :cond_86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v13

    .line 242
    .local v13, hFadeLength:I
    add-int v1, v14, v13

    sub-int v2, v15, v13

    if-le v1, v2, :cond_98

    .line 243
    sub-int v1, v15, v14

    div-int/lit8 v13, v1, 0x2

    .line 245
    :cond_98
    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f1

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 247
    const/4 v1, 0x0

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    add-int v1, v14, v13

    int-to-float v5, v1

    int-to-float v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 250
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_ee

    .line 251
    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    .line 252
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    add-int v1, v14, v13

    int-to-float v5, v1

    int-to-float v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 255
    :cond_ee
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 257
    :cond_f1
    const/4 v1, 0x2

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14a

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 259
    const/4 v1, 0x2

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    sub-int v1, v15, v13

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    int-to-float v6, v11

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 262
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_147

    .line 263
    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    .line 264
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    sub-int v1, v15, v13

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    int-to-float v6, v11

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 267
    :cond_147
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 270
    .end local v13           #hFadeLength:I
    :cond_14a
    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_15a

    const/4 v1, 0x3

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_235

    .line 271
    :cond_15a
    const/4 v12, 0x1

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    if-nez v1, :cond_175

    .line 273
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020075

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 276
    :cond_175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    .line 277
    .local v17, vFadeLength:I
    add-int v1, v16, v17

    sub-int v2, v11, v17

    if-le v1, v2, :cond_187

    .line 278
    sub-int v1, v11, v16

    div-int/lit8 v17, v1, 0x2

    .line 280
    :cond_187
    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e0

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 282
    const/4 v1, 0x1

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    add-int v1, v16, v17

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 285
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1dd

    .line 286
    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    .line 287
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    add-int v1, v16, v17

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 290
    :cond_1dd
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 292
    :cond_1e0
    const/4 v1, 0x3

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_235

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 294
    const/4 v1, 0x3

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    sub-int v1, v11, v17

    int-to-float v4, v1

    int-to-float v5, v15

    int-to-float v6, v11

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 297
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_232

    .line 298
    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    .line 299
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    sub-int v1, v11, v17

    int-to-float v4, v1

    int-to-float v5, v15

    int-to-float v6, v11

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 302
    :cond_232
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 305
    .end local v17           #vFadeLength:I
    :cond_235
    return v12
.end method

.method public isHorizontalScrollBarDrawing()Z
    .registers 5

    .prologue
    .line 314
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    if-lez v0, :cond_e

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isVerticalScrollBarDrawing()Z
    .registers 5

    .prologue
    .line 323
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    if-lez v0, :cond_e

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 333
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    .line 334
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    .line 335
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    .line 336
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    .line 337
    return-void
.end method

.method public setHorizontalHeight(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 346
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    .line 347
    return-void
.end method

.method public setPadding(I)V
    .registers 2
    .parameter "padding"

    .prologue
    .line 357
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    .line 358
    return-void
.end method

.method public setVerticalWidth(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 367
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    .line 368
    return-void
.end method

.method public startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z
    .registers 21
    .parameter "canvas"
    .parameter "fadingEdgeStrength"
    .parameter "paddingOffset"

    .prologue
    .line 392
    const/4 v8, 0x0

    .line 394
    .local v8, edgesRequired:Z
    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_21

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_21

    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_21

    const/4 v1, 0x3

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_106

    .line 397
    :cond_21
    const/4 v8, 0x1

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 399
    .local v12, left:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v15

    .line 401
    .local v15, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p3, v2

    add-int v14, v1, v2

    .line 402
    .local v14, right:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p3, v2

    add-int v7, v1, v2

    .line 404
    .local v7, bottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aget v2, p3, v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    aget v2, p3, v2

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v16

    .line 409
    .local v16, vFadeLength:I
    add-int v1, v15, v16

    sub-int v2, v7, v16

    if-le v1, v2, :cond_8c

    .line 410
    sub-int v1, v7, v15

    div-int/lit8 v16, v1, 0x2

    .line 412
    :cond_8c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v10

    .line 413
    .local v10, hFadeLength:I
    add-int v1, v12, v10

    sub-int v2, v14, v10

    if-le v1, v2, :cond_9e

    .line 414
    sub-int v1, v14, v12

    div-int/lit8 v10, v1, 0x2

    .line 416
    :cond_9e
    new-instance v13, Landroid/graphics/RectF;

    int-to-float v1, v12

    int-to-float v2, v15

    int-to-float v3, v14

    int-to-float v4, v7

    invoke-direct {v13, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 417
    .local v13, outRect:Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    add-int v1, v12, v10

    int-to-float v1, v1

    add-int v2, v15, v16

    int-to-float v2, v2

    sub-int v3, v14, v10

    int-to-float v3, v3

    sub-int v4, v7, v16

    int-to-float v4, v4

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 420
    .local v11, inRect:Landroid/graphics/RectF;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v13

    .line 421
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v11

    .line 423
    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_d4

    const/4 v1, 0x3

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_107

    .line 424
    :cond_d4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 425
    const-string v1, "strength"

    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v1

    int-to-float v9, v1

    .line 427
    .local v9, h:F
    const-string v2, "edges"

    iget v1, v13, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v9, v1

    iget v1, v11, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v9, v1

    iget v1, v11, Landroid/graphics/RectF;->top:F

    sub-float v5, v9, v1

    iget v1, v13, Landroid/graphics/RectF;->top:F

    sub-float v6, v9, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FFFF)V

    .line 438
    .end local v7           #bottom:I
    .end local v9           #h:F
    .end local v10           #hFadeLength:I
    .end local v11           #inRect:Landroid/graphics/RectF;
    .end local v12           #left:I
    .end local v13           #outRect:Landroid/graphics/RectF;
    .end local v14           #right:I
    .end local v15           #top:I
    .end local v16           #vFadeLength:I
    :cond_106
    :goto_106
    return v8

    .line 431
    .restart local v7       #bottom:I
    .restart local v10       #hFadeLength:I
    .restart local v11       #inRect:Landroid/graphics/RectF;
    .restart local v12       #left:I
    .restart local v13       #outRect:Landroid/graphics/RectF;
    .restart local v14       #right:I
    .restart local v15       #top:I
    .restart local v16       #vFadeLength:I
    :cond_107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 432
    const-string v1, "strength"

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    .line 433
    const-string v2, "edges"

    iget v3, v13, Landroid/graphics/RectF;->left:F

    iget v4, v11, Landroid/graphics/RectF;->left:F

    iget v5, v11, Landroid/graphics/RectF;->right:F

    iget v6, v13, Landroid/graphics/RectF;->right:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FFFF)V

    goto :goto_106
.end method
