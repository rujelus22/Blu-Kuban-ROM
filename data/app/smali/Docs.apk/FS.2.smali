.class public LFS;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFP;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, LFS;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 172
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v0

    mul-float/2addr v0, v4

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    .line 177
    iget-object v3, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    .line 178
    iget-object v3, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(IFFF)LFR;

    .line 180
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f7fffff

    const/high16 v4, 0x447a

    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    .line 134
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_40

    const/4 v0, 0x1

    .line 136
    :goto_18
    if-nez v0, :cond_42

    cmpg-float v1, p3, v2

    if-gez v1, :cond_42

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 137
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 139
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0, v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    .line 166
    :cond_3b
    :goto_3b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 134
    :cond_40
    const/4 v0, 0x0

    goto :goto_18

    .line 141
    :cond_42
    if-eqz v0, :cond_66

    cmpg-float v1, p4, v2

    if-gez v1, :cond_66

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 142
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 144
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0, v2}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    goto :goto_3b

    .line 146
    :cond_66
    if-nez v0, :cond_8a

    cmpl-float v1, p3, v2

    if-lez v1, :cond_8a

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 147
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 149
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    goto :goto_3b

    .line 151
    :cond_8a
    if-eqz v0, :cond_ae

    cmpl-float v0, p4, v2

    if-lez v0, :cond_ae

    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 152
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 154
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    goto :goto_3b

    .line 158
    :cond_ae
    mul-float v0, p3, p3

    div-float v1, p4, p4

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 159
    const/high16 v2, 0x4461

    .line 160
    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-int v2, v0

    .line 161
    neg-float v0, p3

    div-float/2addr v0, v4

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v1

    div-float v3, v0, v1

    .line 162
    neg-float v0, p4

    div-float/2addr v0, v4

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v1

    div-float v4, v0, v1

    .line 163
    iget-object v8, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    new-instance v0, LFR;

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    neg-float v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    neg-float v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget-object v7, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v7}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v7

    invoke-direct/range {v0 .. v7}, LFR;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;IFFFFF)V

    invoke-static {v8, v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFR;)LFR;

    goto/16 :goto_3b
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v1

    div-float v1, p3, v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->e(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    .line 123
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F

    move-result v1

    div-float v1, p4, v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->f(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F

    .line 124
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    .line 125
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-static {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    .line 126
    iget-object v0, p0, LFS;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->invalidate()V

    .line 127
    const/4 v0, 0x1

    return v0
.end method
