.class public Lcom/google/android/youtube/app/ui/FixedSlider;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/Slider;


# instance fields
.field public final a:Landroid/app/Activity;

.field private b:Z

.field private c:[Lcom/google/android/youtube/app/ui/aw;

.field private d:[Landroid/view/View;

.field private e:I

.field private f:Z

.field private g:Z


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 226
    if-eqz v3, :cond_d

    .line 227
    invoke-interface {v3, p1}, Lcom/google/android/youtube/app/ui/aw;->a(Landroid/content/res/Configuration;)V

    .line 225
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 230
    :cond_10
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 6
    .parameter

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 130
    if-eqz v3, :cond_d

    .line 131
    invoke-interface {v3, p1}, Lcom/google/android/youtube/app/ui/aw;->a(Landroid/view/Menu;)V

    .line 129
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 134
    :cond_10
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/ui/Slider$Order;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 158
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    .line 138
    return-void
.end method

.method public final c()V
    .registers 5

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->g:Z

    if-eqz v0, :cond_5

    .line 114
    :goto_4
    return-void

    .line 108
    :cond_5
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 109
    if-eqz v3, :cond_12

    .line 110
    invoke-interface {v3}, Lcom/google/android/youtube/app/ui/aw;->g()V

    .line 108
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 113
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->g:Z

    goto :goto_4
.end method

.method public final d()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->g:Z

    if-nez v0, :cond_6

    .line 126
    :goto_5
    return-void

    .line 120
    :cond_6
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    array-length v3, v2

    move v0, v1

    :goto_a
    if-ge v0, v3, :cond_16

    aget-object v4, v2, v0

    .line 121
    if-eqz v4, :cond_13

    .line 122
    invoke-interface {v4}, Lcom/google/android/youtube/app/ui/aw;->h()V

    .line 120
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 125
    :cond_16
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->g:Z

    goto :goto_5
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/FixedSlider;->getDrawingTime()J

    move-result-wide v0

    .line 220
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/youtube/app/ui/FixedSlider;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 221
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/youtube/app/ui/FixedSlider;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 222
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 199
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 200
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 201
    const/4 v0, 0x0

    :goto_a
    const/4 v4, 0x2

    if-ge v0, v4, :cond_24

    .line 202
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    aput v4, v1, v0

    .line 203
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    aput v4, v2, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 205
    :cond_24
    const/4 v0, 0x0

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 206
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->b:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    aget v0, v2, v0

    :goto_30
    aput v0, v3, v4

    .line 208
    const/4 v0, 0x0

    :goto_33
    const/4 v4, 0x2

    if-ge v0, v4, :cond_64

    .line 209
    iget-boolean v4, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->b:Z

    if-eqz v4, :cond_52

    .line 210
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v6, v3, v0

    aget v7, v1, v0

    aget v8, v3, v0

    aget v9, v2, v0

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 208
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 206
    :cond_4e
    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_30

    .line 212
    :cond_52
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v4, v4, v0

    aget v5, v3, v0

    const/4 v6, 0x0

    aget v7, v3, v0

    aget v8, v1, v0

    add-int/2addr v7, v8

    aget v8, v2, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_4b

    .line 215
    :cond_64
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/high16 v8, 0x4000

    .line 163
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 166
    if-eq v0, v8, :cond_15

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Slider can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 170
    if-eq v0, v8, :cond_23

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Slider can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 175
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 176
    new-array v4, v9, [I

    .line 177
    iget v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->e:I

    aput v0, v4, v1

    .line 178
    const/4 v0, 0x1

    iget v5, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->e:I

    rsub-int/lit8 v5, v5, 0x64

    aput v5, v4, v0

    move v0, v1

    .line 181
    :goto_39
    if-ge v0, v9, :cond_6b

    .line 182
    iget-boolean v5, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->b:Z

    if-eqz v5, :cond_56

    .line 183
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v5, v5, v0

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    aget v7, v4, v0

    mul-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x64

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 181
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 187
    :cond_56
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v5, v5, v0

    aget v6, v4, v0

    mul-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x64

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_53

    .line 193
    :cond_6b
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->f:Z

    .line 194
    return-void
.end method

.method public setCollapseStrategy(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method public setFirstLayerWidthPercent(I)V
    .registers 4
    .parameter

    .prologue
    .line 55
    if-ltz p1, :cond_f

    const/16 v0, 0x64

    if-gt p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "argument must be a percentage"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 56
    iput p1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->e:I

    .line 57
    return-void

    .line 55
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "order may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/Slider$Order;->ordinal()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 74
    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->g:Z

    if-nez v1, :cond_1a

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->g()V

    .line 77
    :cond_1a
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->i()V

    .line 79
    :cond_21
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aput-object p2, v1, v0

    .line 80
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/FixedSlider;->removeView(Landroid/view/View;)V

    .line 81
    if-nez p2, :cond_41

    .line 82
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 93
    :goto_39
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/FixedSlider;->addView(Landroid/view/View;)V

    .line 94
    return-void

    .line 84
    :cond_41
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->f()Z

    move-result v1

    if-nez v1, :cond_52

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->b()V

    .line 87
    :cond_52
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->c()V

    .line 88
    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->g:Z

    if-nez v1, :cond_64

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->c:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->h()V

    .line 91
    :cond_64
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->d:[Landroid/view/View;

    invoke-interface {p2}, Lcom/google/android/youtube/app/ui/aw;->n()Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_39
.end method

.method public setOrientation(Lcom/google/android/youtube/app/ui/Slider$Orientation;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Orientation;->VERTICAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->b:Z

    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/FixedSlider;->f:Z

    if-nez v0, :cond_e

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/FixedSlider;->requestLayout()V

    .line 64
    :cond_e
    return-void

    .line 60
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method
