.class public Lcom/android/athome/picker/media/MediaRouteButtonFallback;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final l:[I


# instance fields
.field private a:Lcom/android/athome/picker/media/v;

.field private final b:Lcom/android/athome/picker/media/j;

.field private c:I

.field private d:Z

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroid/view/View$OnClickListener;

.field private k:Lcom/android/athome/picker/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->l:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    sget v0, Lcom/android/athome/picker/af;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/android/athome/picker/media/j;

    invoke-direct {v0, p0, v2}, Lcom/android/athome/picker/media/j;-><init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;B)V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->b:Lcom/android/athome/picker/media/j;

    .line 71
    invoke-static {p1}, Lcom/android/athome/picker/media/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/v;

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    .line 73
    sget-object v0, Lcom/android/athome/picker/am;->d:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 75
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    iput-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_46

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getVisibility()I

    move-result v0

    if-nez v0, :cond_64

    move v0, v1

    :goto_43
    invoke-virtual {v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_46
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->refreshDrawableState()V

    .line 77
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->h:I

    .line 79
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->i:I

    .line 81
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 84
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setClickable(Z)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setRouteTypes(I)V

    .line 89
    return-void

    :cond_64
    move v0, v2

    .line 75
    goto :goto_43
.end method

.method static synthetic a(Lcom/android/athome/picker/media/MediaRouteButtonFallback;Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/a;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    return-object v0
.end method

.method private c()V
    .registers 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a()V

    .line 154
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->b()V

    .line 155
    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    iget v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    invoke-virtual {v0}, Lcom/android/athome/picker/media/v;->b()Lcom/android/athome/picker/media/z;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v1}, Lcom/android/athome/picker/media/v;->a()Lcom/android/athome/picker/media/z;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x1

    .line 164
    :goto_11
    iget-boolean v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->f:Z

    if-eq v1, v0, :cond_1a

    .line 165
    iput-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->f:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->refreshDrawableState()V

    .line 168
    :cond_1a
    return-void

    .line 162
    :cond_1b
    const/4 v0, 0x0

    goto :goto_11
.end method

.method final b()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/v;->e()I

    move-result v5

    move v4, v3

    move v1, v3

    .line 173
    :goto_a
    if-ge v4, v5, :cond_2e

    .line 174
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, v4}, Lcom/android/athome/picker/media/v;->c(I)Lcom/android/athome/picker/media/z;

    move-result-object v0

    .line 175
    iget v6, v0, Lcom/android/athome/picker/media/z;->d:I

    iget v7, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_44

    .line 176
    instance-of v6, v0, Lcom/android/athome/picker/media/y;

    if-eqz v6, :cond_2b

    .line 177
    check-cast v0, Lcom/android/athome/picker/media/y;

    iget-object v0, v0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 173
    :goto_26
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_a

    .line 179
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    goto :goto_26

    .line 184
    :cond_2e
    if-eqz v1, :cond_40

    move v0, v2

    :goto_31
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setEnabled(Z)V

    .line 187
    const/4 v0, 0x2

    if-ne v1, v0, :cond_42

    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_42

    :goto_3d
    iput-boolean v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->g:Z

    .line 188
    return-void

    :cond_40
    move v0, v3

    .line 184
    goto :goto_31

    :cond_42
    move v2, v3

    .line 187
    goto :goto_3d

    :cond_44
    move v0, v1

    goto :goto_26
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 203
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 204
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getDrawableState()[I

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->invalidate()V

    .line 208
    :cond_13
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 225
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->d:Z

    .line 227
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    if-eqz v0, :cond_16

    .line 228
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    iget v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->b:Lcom/android/athome/picker/media/j;

    invoke-virtual {v0, v1, v2}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/b;)V

    .line 229
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c()V

    .line 231
    :cond_16
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter

    .prologue
    .line 192
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 193
    iget-boolean v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->f:Z

    if-eqz v1, :cond_f

    .line 194
    sget-object v1, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->l:[I

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mergeDrawableStates([I[I)[I

    .line 196
    :cond_f
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 235
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->b:Lcom/android/athome/picker/media/j;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/b;)V

    .line 238
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->d:Z

    .line 239
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 240
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 289
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 303
    :goto_7
    return-void

    .line 291
    :cond_8
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingLeft()I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 293
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingTop()I

    move-result v2

    .line 294
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 296
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 297
    iget-object v5, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 298
    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 299
    sub-int v1, v3, v2

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 301
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    add-int v3, v0, v4

    add-int v4, v1, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 245
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 246
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 247
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 249
    iget v6, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->h:I

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1d
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 251
    iget v6, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->i:I

    iget-object v7, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2d

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_2d
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 255
    sparse-switch v4, :sswitch_data_76

    .line 264
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    .line 269
    :goto_3f
    sparse-switch v5, :sswitch_data_80

    .line 278
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 282
    :goto_4c
    invoke-virtual {p0, v1, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setMeasuredDimension(II)V

    .line 283
    return-void

    :cond_50
    move v0, v1

    .line 249
    goto :goto_1d

    :sswitch_52
    move v1, v3

    .line 258
    goto :goto_3f

    .line 260
    :sswitch_54
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 261
    goto :goto_3f

    :sswitch_64
    move v0, v2

    .line 272
    goto :goto_4c

    .line 274
    :sswitch_66
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4c

    .line 255
    nop

    :sswitch_data_76
    .sparse-switch
        -0x80000000 -> :sswitch_54
        0x40000000 -> :sswitch_52
    .end sparse-switch

    .line 269
    :sswitch_data_80
    .sparse-switch
        -0x80000000 -> :sswitch_66
        0x40000000 -> :sswitch_64
    .end sparse-switch
.end method

.method public performClick()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v1

    .line 110
    if-nez v1, :cond_a

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->playSoundEffect(I)V

    .line 114
    :cond_a
    iget-boolean v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->g:Z

    if-eqz v2, :cond_47

    .line 115
    iget-boolean v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->f:Z

    if-eqz v2, :cond_20

    .line 116
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    iget v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v3}, Lcom/android/athome/picker/media/v;->a()Lcom/android/athome/picker/media/z;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/z;)V

    .line 131
    :cond_1f
    :goto_1f
    return v1

    .line 118
    :cond_20
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v2}, Lcom/android/athome/picker/media/v;->e()I

    move-result v2

    .line 119
    :goto_26
    if-ge v0, v2, :cond_1f

    .line 120
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v3, v0}, Lcom/android/athome/picker/media/v;->c(I)Lcom/android/athome/picker/media/z;

    move-result-object v3

    .line 121
    iget v4, v3, Lcom/android/athome/picker/media/z;->d:I

    iget v5, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v4}, Lcom/android/athome/picker/media/v;->a()Lcom/android/athome/picker/media/z;

    move-result-object v4

    if-eq v3, v4, :cond_44

    .line 123
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    iget v5, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    invoke-virtual {v4, v5, v3}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/z;)V

    .line 119
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 128
    :cond_47
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_4b
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_5a

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_5a

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4b

    :cond_5a
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_66

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    check-cast v0, Landroid/app/Activity;

    instance-of v2, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_8c

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->d()Landroid/support/v4/app/i;

    move-result-object v2

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    if-nez v0, :cond_80

    const-string v0, "android:MediaRouteChooserDialogFragment"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/i;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/a/a;

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    :cond_80
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    if-eqz v0, :cond_94

    const-string v0, "MediaRouteButtonFallback"

    const-string v2, "showDialog(): Already showing!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_8c
    const-string v0, "MediaRouteButtonFallback"

    const-string v2, "fragments not supported by the activity."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_94
    new-instance v0, Lcom/android/athome/picker/a/a;

    invoke-direct {v0}, Lcom/android/athome/picker/a/a;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/android/athome/picker/a/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    new-instance v3, Lcom/android/athome/picker/media/i;

    invoke-direct {v3, p0}, Lcom/android/athome/picker/media/i;-><init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;)V

    invoke-virtual {v0, v3}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/b;)V

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    iget v3, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    invoke-virtual {v0, v3}, Lcom/android/athome/picker/a/a;->b(I)V

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    const-string v3, "android:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/android/athome/picker/a/a;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    goto/16 :goto_1f
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->j:Landroid/view/View$OnClickListener;

    .line 307
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    if-eqz v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->k:Lcom/android/athome/picker/a/a;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 310
    :cond_b
    return-void
.end method

.method public setRouteTypes(I)V
    .registers 4
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    if-ne p1, v0, :cond_5

    .line 150
    :cond_4
    :goto_4
    return-void

    .line 140
    :cond_5
    iget-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->d:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    if-eqz v0, :cond_14

    .line 141
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->b:Lcom/android/athome/picker/media/j;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/b;)V

    .line 144
    :cond_14
    iput p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c:I

    .line 146
    iget-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->d:Z

    if-eqz v0, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->c()V

    .line 148
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->a:Lcom/android/athome/picker/media/v;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->b:Lcom/android/athome/picker/media/j;

    invoke-virtual {v0, p1, v1}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/b;)V

    goto :goto_4
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 219
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 221
    :cond_14
    return-void

    :cond_15
    move v0, v1

    .line 219
    goto :goto_11
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
