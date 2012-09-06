.class public Lyr;
.super Ljava/lang/Object;
.source "SimpleFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "LwS",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private a:I

.field private a:Landroid/graphics/drawable/Drawable;

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private a:Lys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr",
            "<TT;>.ys;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/view/View;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lyr;->a:[I

    .line 65
    new-array v0, v2, [I

    sput-object v0, Lyr;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyr;->a:Landroid/os/Handler;

    .line 98
    iput-object p2, p0, Lyr;->a:Landroid/view/View;

    .line 99
    iput-object p3, p0, Lyr;->b:Landroid/view/View;

    .line 100
    invoke-direct {p0, p1}, Lyr;->a(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method static synthetic a(Lyr;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lyr;->b:Landroid/view/View;

    return-object v0
.end method

.method private a(D)V
    .registers 6
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    check-cast v0, LwS;

    invoke-interface {v0}, LwS;->a()I

    move-result v0

    iget-object v1, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lyr;->d:I

    .line 286
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    const/4 v1, 0x0

    iget v2, p0, Lyr;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 287
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 167
    sget v2, Luo;->scrollbar_handle_accelerated_anim2:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lyr;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    new-instance v0, Lys;

    invoke-direct {v0, p0}, Lys;-><init>(Lyr;)V

    iput-object v0, p0, Lyr;->a:Lys;

    .line 173
    iput-boolean v4, p0, Lyr;->a:Z

    .line 174
    iput v3, p0, Lyr;->e:I

    .line 175
    invoke-direct {p0}, Lyr;->c()V

    .line 176
    return-void

    .line 165
    nop

    :array_3a
    .array-data 0x4
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
    .end array-data
.end method

.method private a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p2, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lun;->fastscroll_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lyr;->b:I

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lun;->fastscroll_thumb_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lyr;->a:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyr;->c:Z

    .line 149
    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    .line 138
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 140
    iget-object v1, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lyr;->b:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lyr;->a:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    iget-object v0, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 142
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 179
    iget v0, p0, Lyr;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    sget-object v0, Lyr;->a:[I

    .line 180
    :goto_7
    iget-object v1, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 181
    iget-object v1, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 183
    :cond_18
    iget-object v1, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 184
    iget-object v1, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 186
    :cond_29
    return-void

    .line 179
    :cond_2a
    sget-object v0, Lyr;->b:[I

    goto :goto_7
.end method

.method private d()V
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 291
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 294
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lyr;->e:I

    return v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyr;->a(I)V

    .line 190
    return-void
.end method

.method public a(I)V
    .registers 8
    .parameter

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_3e

    .line 129
    :goto_3
    :pswitch_3
    iput p1, p0, Lyr;->e:I

    .line 130
    invoke-direct {p0}, Lyr;->c()V

    .line 131
    return-void

    .line 111
    :pswitch_9
    iget-object v0, p0, Lyr;->a:Landroid/os/Handler;

    iget-object v1, p0, Lyr;->a:Lys;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lyr;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 115
    :pswitch_16
    iget v0, p0, Lyr;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 116
    invoke-direct {p0}, Lyr;->b()V

    .line 122
    :cond_1e
    :pswitch_1e
    iget-object v0, p0, Lyr;->a:Landroid/os/Handler;

    iget-object v1, p0, Lyr;->a:Lys;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 125
    :pswitch_26
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 126
    iget-object v1, p0, Lyr;->b:Landroid/view/View;

    iget v2, p0, Lyr;->b:I

    sub-int v2, v0, v2

    iget v3, p0, Lyr;->c:I

    iget v4, p0, Lyr;->c:I

    iget v5, p0, Lyr;->a:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    .line 109
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3
        :pswitch_16
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method

.method public a(IIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 153
    iget-object v0, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lyr;->b:I

    sub-int v1, p1, v1

    iget v2, p0, Lyr;->a:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    :cond_10
    invoke-virtual {p0, v3}, Lyr;->a(I)V

    .line 160
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 202
    iget v0, p0, Lyr;->e:I

    if-nez v0, :cond_8

    .line 244
    :cond_7
    :goto_7
    return-void

    .line 207
    :cond_8
    iget v1, p0, Lyr;->c:I

    .line 208
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 209
    iget-object v3, p0, Lyr;->a:Lys;

    .line 211
    const/4 v0, -0x1

    .line 212
    iget v4, p0, Lyr;->e:I

    if-ne v4, v10, :cond_37

    .line 213
    invoke-virtual {v3}, Lys;->a()I

    move-result v0

    .line 214
    const/16 v3, 0x68

    if-ge v0, v3, :cond_26

    .line 215
    iget-object v3, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    :cond_26
    iget v3, p0, Lyr;->b:I

    mul-int/2addr v3, v0

    div-int/lit16 v3, v3, 0xd0

    sub-int v3, v2, v3

    .line 218
    iget-object v4, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lyr;->a:I

    invoke-virtual {v4, v3, v9, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    const/4 v3, 0x1

    iput-boolean v3, p0, Lyr;->c:Z

    .line 222
    :cond_37
    iget-object v3, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6b

    .line 223
    iget-object v3, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 224
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 225
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    .line 226
    iget-object v5, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 227
    iget v6, p0, Lyr;->b:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    .line 228
    iget-object v6, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    add-int/2addr v5, v4

    iget-object v7, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v4, v3, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    iget-object v3, p0, Lyr;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    :cond_6b
    int-to-float v3, v1

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    iget-object v3, p0, Lyr;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget v3, p0, Lyr;->e:I

    if-ne v3, v10, :cond_7

    .line 238
    if-nez v0, :cond_83

    .line 239
    invoke-virtual {p0, v9}, Lyr;->a(I)V

    goto :goto_7

    .line 241
    :cond_83
    iget-object v0, p0, Lyr;->b:Landroid/view/View;

    iget v3, p0, Lyr;->b:I

    sub-int v3, v2, v3

    iget v4, p0, Lyr;->a:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7
.end method

.method a(FF)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lyr;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_21

    iget v0, p0, Lyr;->c:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_21

    iget v0, p0, Lyr;->c:I

    iget v1, p0, Lyr;->a:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 297
    iget v0, p0, Lyr;->e:I

    if-lez v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lyr;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 299
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lyr;->a(I)V

    .line 300
    const/4 v0, 0x1

    .line 303
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    iget v0, p0, Lyr;->d:I

    if-ne p1, v0, :cond_8

    .line 282
    :cond_7
    :goto_7
    return-void

    .line 256
    :cond_8
    iput p1, p0, Lyr;->d:I

    .line 258
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    check-cast v0, LwS;

    invoke-interface {v0}, LwS;->a()I

    move-result v0

    iget-object v3, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    .line 261
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    check-cast v0, LwS;

    invoke-interface {v0}, LwS;->a()I

    move-result v0

    iget-object v4, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v0, v4, :cond_39

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Lyr;->b:Z

    .line 263
    iget-boolean v0, p0, Lyr;->b:Z

    if-nez v0, :cond_3b

    .line 264
    iget v0, p0, Lyr;->e:I

    if-eqz v0, :cond_7

    .line 265
    invoke-virtual {p0, v2}, Lyr;->a(I)V

    goto :goto_7

    :cond_39
    move v0, v2

    .line 261
    goto :goto_2b

    .line 270
    :cond_3b
    iget-boolean v0, p0, Lyr;->b:Z

    if-eqz v0, :cond_59

    iget v0, p0, Lyr;->e:I

    if-eq v0, v5, :cond_59

    .line 271
    iget-object v0, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v4, p0, Lyr;->a:I

    sub-int/2addr v0, v4

    mul-int/2addr v0, p1

    div-int/2addr v0, v3

    iput v0, p0, Lyr;->c:I

    .line 272
    iget-boolean v0, p0, Lyr;->c:Z

    if-eqz v0, :cond_59

    .line 273
    invoke-direct {p0}, Lyr;->b()V

    .line 274
    iput-boolean v2, p0, Lyr;->c:Z

    .line 277
    :cond_59
    iput-boolean v1, p0, Lyr;->a:Z

    .line 278
    iget v0, p0, Lyr;->e:I

    if-eq v0, v5, :cond_7

    .line 279
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lyr;->a(I)V

    .line 280
    iget-object v0, p0, Lyr;->a:Landroid/os/Handler;

    iget-object v1, p0, Lyr;->a:Lys;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 307
    iget v1, p0, Lyr;->e:I

    if-nez v1, :cond_9

    .line 348
    :cond_8
    :goto_8
    return v0

    .line 311
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 313
    if-nez v1, :cond_25

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Lyr;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 315
    invoke-virtual {p0, v4}, Lyr;->a(I)V

    .line 316
    invoke-direct {p0}, Lyr;->d()V

    move v0, v2

    .line 317
    goto :goto_8

    .line 319
    :cond_25
    if-ne v1, v2, :cond_3e

    .line 320
    iget v1, p0, Lyr;->e:I

    if-ne v1, v4, :cond_8

    .line 321
    invoke-virtual {p0, v5}, Lyr;->a(I)V

    .line 322
    iget-object v0, p0, Lyr;->a:Landroid/os/Handler;

    .line 323
    iget-object v1, p0, Lyr;->a:Lys;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v1, p0, Lyr;->a:Lys;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 325
    goto :goto_8

    .line 327
    :cond_3e
    if-ne v1, v5, :cond_8

    .line 328
    iget v1, p0, Lyr;->e:I

    if-ne v1, v4, :cond_8

    .line 329
    iget-object v1, p0, Lyr;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v4, p0, Lyr;->a:I

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0xa

    .line 332
    if-gez v1, :cond_61

    .line 337
    :goto_56
    iget v1, p0, Lyr;->c:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v5, :cond_6b

    move v0, v2

    .line 338
    goto :goto_8

    .line 334
    :cond_61
    iget v0, p0, Lyr;->a:I

    add-int/2addr v0, v1

    if-le v0, v3, :cond_80

    .line 335
    iget v0, p0, Lyr;->a:I

    sub-int v0, v3, v0

    goto :goto_56

    .line 340
    :cond_6b
    iput v0, p0, Lyr;->c:I

    .line 342
    iget-boolean v0, p0, Lyr;->a:Z

    if-eqz v0, :cond_7e

    .line 343
    iget v0, p0, Lyr;->c:I

    int-to-float v0, v0

    iget v1, p0, Lyr;->a:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lyr;->a(D)V

    :cond_7e
    move v0, v2

    .line 345
    goto :goto_8

    :cond_80
    move v0, v1

    goto :goto_56
.end method
