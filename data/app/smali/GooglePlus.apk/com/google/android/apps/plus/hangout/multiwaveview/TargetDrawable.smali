.class public Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# static fields
.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 15
    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 19
    new-array v0, v3, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 15
    nop

    :array_1c
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 19
    :array_24
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "res"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 23
    iput v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 24
    iput v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    .line 25
    iput v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    .line 26
    iput v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getScaleX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setScaleX(F)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getScaleY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setScaleY(F)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 74
    if-eqz p2, :cond_44

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_39
    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 76
    sget-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 78
    return-void

    .line 74
    :cond_44
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private resizeDrawables()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    :cond_16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/high16 v2, -0x4100

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 197
    :goto_6
    return-void

    .line 190
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 191
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getScaleX()F
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_7

    .line 95
    :cond_7
    return v1
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 155
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    .line 156
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .parameter "x"

    .prologue
    .line 147
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    .line 148
    return-void
.end method

.method public setScaleY(F)V
    .registers 2
    .parameter "y"

    .prologue
    .line 151
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    .line 152
    return-void
.end method

.method public setState([I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_10

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 83
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 84
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 86
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_10
    return-void
.end method

.method public setX(F)V
    .registers 2
    .parameter "x"

    .prologue
    .line 139
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 140
    return-void
.end method

.method public setY(F)V
    .registers 2
    .parameter "y"

    .prologue
    .line 143
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 144
    return-void
.end method
