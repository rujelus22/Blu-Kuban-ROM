.class public LyL;
.super LFO;
.source "ZoomManager.java"


# instance fields
.field private a:F

.field private final a:LFM;

.field private a:Landroid/widget/ImageView;

.field private final a:LwH;

.field private a:LyM;

.field private a:LyN;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(LwH;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, LFO;-><init>()V

    .line 74
    new-instance v0, LFM;

    invoke-direct {v0, p0}, LFM;-><init>(LFN;)V

    iput-object v0, p0, LyL;->a:LFM;

    .line 75
    iput-object p1, p0, LyL;->a:LwH;

    .line 76
    return-void
.end method


# virtual methods
.method public a(LFM;)V
    .registers 6
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, LyL;->a:LyN;

    if-eqz v0, :cond_8

    iget-object v0, p0, LyL;->a:LyM;

    if-nez v0, :cond_9

    .line 192
    :cond_8
    :goto_8
    return-void

    .line 176
    :cond_9
    iget-object v0, p0, LyL;->a:LyN;

    invoke-interface {v0}, LyN;->a()Landroid/view/View;

    move-result-object v1

    .line 179
    iget-object v0, p0, LyL;->a:LyN;

    iget v2, p0, LyL;->b:F

    iget v3, p0, LyL;->c:F

    invoke-interface {v0, v2, v3}, LyN;->a(FF)V

    .line 182
    iget-object v0, p0, LyL;->a:LyM;

    invoke-interface {v0}, LyM;->l()V

    .line 185
    iget-object v0, p0, LyL;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 186
    iget-object v0, p0, LyL;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 188
    iget-object v2, p0, LyL;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method public a(LyM;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, LyL;->a:LyM;

    .line 104
    return-void
.end method

.method public a(LyN;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, LyL;->a:LyN;

    .line 113
    return-void
.end method

.method public a(LFM;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x2

    .line 117
    iget-object v0, p0, LyL;->a:LyN;

    if-nez v0, :cond_8

    .line 118
    const/4 v0, 0x0

    .line 144
    :goto_7
    return v0

    .line 121
    :cond_8
    iget-object v0, p0, LyL;->a:LyN;

    invoke-interface {v0}, LyN;->f()V

    .line 122
    iget-object v0, p0, LyL;->a:LyN;

    invoke-interface {v0}, LyN;->a()Landroid/view/View;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    .line 126
    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 128
    invoke-virtual {v2, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 132
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, LyL;->a:Landroid/widget/ImageView;

    .line 133
    iget-object v4, p0, LyL;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v3, p0, LyL;->a:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-object v3, p0, LyL;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 138
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, LyL;->a:LwH;

    invoke-interface {v0}, LwH;->b()F

    move-result v0

    iput v0, p0, LyL;->a:F

    .line 141
    invoke-virtual {p1}, LFM;->a()F

    move-result v0

    iput v0, p0, LyL;->b:F

    .line 142
    invoke-virtual {p1}, LFM;->b()F

    move-result v0

    iput v0, p0, LyL;->c:F

    move v0, v1

    .line 144
    goto :goto_7
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, LyL;->a:LyN;

    if-eqz v0, :cond_8

    iget-object v0, p0, LyL;->a:LyM;

    if-nez v0, :cond_a

    .line 91
    :cond_8
    const/4 v0, 0x0

    .line 93
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, LyL;->a:LFM;

    invoke-virtual {v0, p1}, LFM;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public b(LFM;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 149
    iget-object v0, p0, LyL;->a:LyM;

    if-nez v0, :cond_7

    .line 168
    :goto_6
    return v5

    .line 152
    :cond_7
    iget-object v0, p0, LyL;->a:LwH;

    invoke-interface {v0}, LwH;->b()F

    move-result v0

    .line 153
    iget v1, p0, LyL;->a:F

    div-float v1, v0, v1

    .line 154
    iget-object v2, p0, LyL;->a:LwH;

    invoke-virtual {p1}, LFM;->e()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-interface {v2, v0}, LwH;->a(F)V

    .line 155
    iget-object v0, p0, LyL;->a:LwH;

    invoke-interface {v0}, LwH;->b()F

    move-result v0

    iget v2, p0, LyL;->a:F

    div-float v2, v0, v2

    .line 159
    cmpl-float v0, v2, v1

    if-eqz v0, :cond_42

    .line 161
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, LyL;->b:F

    iget v8, p0, LyL;->c:F

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 164
    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 165
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 166
    iget-object v1, p0, LyL;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_42
    move v5, v9

    .line 168
    goto :goto_6
.end method
