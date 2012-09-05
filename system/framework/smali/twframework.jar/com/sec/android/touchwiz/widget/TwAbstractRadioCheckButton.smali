.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
.super Landroid/widget/Button;
.source "TwAbstractRadioCheckButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$1;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonDrawableGravity:I

.field protected mButtonDrawablePaddingBottom:I

.field protected mButtonDrawablePaddingLeft:I

.field protected mButtonDrawablePaddingRight:I

.field protected mButtonDrawablePaddingTop:I

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    .line 76
    sget-object v4, Ltouchwiz/R$styleable;->TwAbstractRadioCheckButton:[I

    const v5, 0x2070007

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 83
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1b

    .line 84
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_1b
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 88
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 90
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 93
    .local v3, drawableGravity:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawableGravity(I)V

    .line 95
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    .line 97
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    .line 99
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    .line 101
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    .line 104
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method private setupMinHeight()V
    .registers 4

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, drawableIntrinsicHeight:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 262
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 264
    :cond_b
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setMinHeight(I)V

    .line 265
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 327
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 328
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    .line 331
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->invalidate()V

    .line 335
    .end local v0           #myDrawableState:[I
    :cond_13
    return-void
.end method

.method protected getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonDrawableGravity()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 316
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 317
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 318
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mergeDrawableStates([I[I)[I

    .line 320
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 289
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    .line 291
    :cond_e
    return-void
.end method

.method protected onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .registers 11
    .parameter "canvas"
    .parameter "btnDrawable"
    .parameter "drawGravity"

    .prologue
    .line 300
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .local v0, container:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 303
    .local v1, drawRc:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {p3, v2, v3, v0, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 306
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 307
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 399
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    .line 401
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 402
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->requestLayout()V

    .line 404
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 388
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setFreezesText(Z)V

    .line 389
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 391
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 393
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    .line 394
    return-object v0
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->toggle()V

    .line 127
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .registers 5
    .parameter "resid"

    .prologue
    .line 205
    if-eqz p1, :cond_7

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-ne p1, v1, :cond_7

    .line 220
    :cond_6
    :goto_6
    return-void

    .line 209
    :cond_7
    if-eqz p1, :cond_6

    .line 213
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-eqz v1, :cond_1a

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    if-eqz p1, :cond_30

    .line 229
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 230
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 236
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 238
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 241
    :cond_30
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    .line 242
    return-void

    :cond_34
    move v0, v1

    .line 235
    goto :goto_23
.end method

.method public setButtonDrawableGravity(I)V
    .registers 2
    .parameter "gravity"

    .prologue
    .line 273
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    .line 274
    return-void
.end method

.method public setButtonDrawablePadding(IIII)V
    .registers 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 252
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    .line 253
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    .line 254
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    .line 255
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    .line 256
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 257
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .parameter "checked"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-eq v0, p1, :cond_d

    .line 145
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    .line 149
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    if-eqz v0, :cond_e

    .line 162
    :cond_d
    :goto_d
    return-void

    .line 153
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    .line 154
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1c

    .line 155
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    .line 157
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_27

    .line 158
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    .line 160
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    goto :goto_d
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 172
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 183
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 115
    return-void

    .line 114
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
