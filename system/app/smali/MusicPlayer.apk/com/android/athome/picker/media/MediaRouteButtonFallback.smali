.class public Lcom/android/athome/picker/media/MediaRouteButtonFallback;
.super Landroid/view/View;
.source "MediaRouteButtonFallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;
    }
.end annotation


# static fields
.field private static final ACTIVATED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRouteTypes:I

.field private mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

.field private final mRouterCallback:Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;

.field private mToggleMode:Z


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

    sput-object v0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->ACTIVATED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    sget v0, Lcom/android/athome/picker/R$attr;->mediaRouteButtonStyleFallback:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v2, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;-><init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;Lcom/android/athome/picker/media/MediaRouteButtonFallback$1;)V

    iput-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouterCallback:Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;

    .line 71
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/media/MediaRouterFallback;

    iput-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    .line 73
    sget-object v2, Lcom/android/athome/picker/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mMinWidth:I

    .line 79
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mMinHeight:I

    .line 81
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 84
    .local v1, routeTypes:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0, v5}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setClickable(Z)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setRouteTypes(I)V

    .line 89
    return-void
.end method

.method static synthetic access$102(Lcom/android/athome/picker/media/MediaRouteButtonFallback;Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    return-object p1
.end method

.method private getActivity()Landroid/app/Activity;
    .registers 4

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 353
    .local v0, context:Landroid/content/Context;
    :goto_4
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_13

    .line 354
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_4

    .line 356
    :cond_13
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1f

    .line 357
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_1f
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    return-object v0
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 93
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 94
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_10
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 97
    if-eqz p1, :cond_28

    .line 98
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 100
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 103
    :cond_28
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->refreshDrawableState()V

    .line 104
    return-void

    :cond_2c
    move v0, v1

    .line 100
    goto :goto_25
.end method

.method private updateRouteInfo()V
    .registers 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRemoteIndicator()V

    .line 154
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRouteCount()V

    .line 155
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 203
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 204
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getDrawableState()[I

    move-result-object v0

    .line 205
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->invalidate()V

    .line 208
    .end local v0           #myDrawableState:[I
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

    iput-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mAttachedToWindow:Z

    .line 227
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    if-eqz v0, :cond_16

    .line 228
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    iget v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouterCallback:Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/athome/picker/media/MediaRouterFallback;->addCallback(ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 229
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRouteInfo()V

    .line 231
    :cond_16
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 192
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 193
    .local v0, drawableState:[I
    iget-boolean v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteActive:Z

    if-eqz v1, :cond_f

    .line 194
    sget-object v1, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->ACTIVATED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mergeDrawableStates([I[I)[I

    .line 196
    :cond_f
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 235
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouterCallback:Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->removeCallback(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 238
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mAttachedToWindow:Z

    .line 239
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 240
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 289
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_8

    .line 303
    :goto_7
    return-void

    .line 291
    :cond_8
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingLeft()I

    move-result v5

    .line 292
    .local v5, left:I
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 293
    .local v6, right:I
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingTop()I

    move-result v7

    .line 294
    .local v7, top:I
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 296
    .local v0, bottom:I
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 297
    .local v4, drawWidth:I
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 298
    .local v1, drawHeight:I
    sub-int v8, v6, v5

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    add-int v2, v5, v8

    .line 299
    .local v2, drawLeft:I
    sub-int v8, v0, v7

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 301
    .local v3, drawTop:I
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 245
    .local v7, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 246
    .local v2, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 247
    .local v6, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 249
    .local v1, heightMode:I
    iget v10, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mMinWidth:I

    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_51

    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    :goto_1d
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 251
    .local v4, minWidth:I
    iget v8, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mMinHeight:I

    iget-object v10, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2d

    iget-object v9, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    :cond_2d
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 255
    .local v3, minHeight:I
    sparse-switch v6, :sswitch_data_76

    .line 264
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingRight()I

    move-result v9

    add-int v5, v8, v9

    .line 269
    .local v5, width:I
    :goto_3f
    sparse-switch v1, :sswitch_data_80

    .line 278
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingBottom()I

    move-result v9

    add-int v0, v8, v9

    .line 282
    .local v0, height:I
    :goto_4d
    invoke-virtual {p0, v5, v0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setMeasuredDimension(II)V

    .line 283
    return-void

    .end local v0           #height:I
    .end local v3           #minHeight:I
    .end local v4           #minWidth:I
    .end local v5           #width:I
    :cond_51
    move v8, v9

    .line 249
    goto :goto_1d

    .line 257
    .restart local v3       #minHeight:I
    .restart local v4       #minWidth:I
    :sswitch_53
    move v5, v7

    .line 258
    .restart local v5       #width:I
    goto :goto_3f

    .line 260
    .end local v5           #width:I
    :sswitch_55
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 261
    .restart local v5       #width:I
    goto :goto_3f

    .line 271
    :sswitch_64
    move v0, v2

    .line 272
    .restart local v0       #height:I
    goto :goto_4d

    .line 274
    .end local v0           #height:I
    :sswitch_66
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    .restart local v0       #height:I
    goto :goto_4d

    .line 255
    nop

    :sswitch_data_76
    .sparse-switch
        -0x80000000 -> :sswitch_55
        0x40000000 -> :sswitch_53
    .end sparse-switch

    .line 269
    :sswitch_data_80
    .sparse-switch
        -0x80000000 -> :sswitch_66
        0x40000000 -> :sswitch_64
    .end sparse-switch
.end method

.method public performClick()Z
    .registers 8

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v1

    .line 110
    .local v1, handled:Z
    if-nez v1, :cond_a

    .line 111
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->playSoundEffect(I)V

    .line 114
    :cond_a
    iget-boolean v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mToggleMode:Z

    if-eqz v4, :cond_4a

    .line 115
    iget-boolean v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteActive:Z

    if-eqz v4, :cond_20

    .line 116
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    iget v5, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    iget-object v6, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v6}, Lcom/android/athome/picker/media/MediaRouterFallback;->getSystemAudioRoute()Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/athome/picker/media/MediaRouterFallback;->selectRoute(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 131
    :cond_1f
    :goto_1f
    return v1

    .line 118
    :cond_20
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v4}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteCount()I

    move-result v0

    .line 119
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    if-ge v2, v0, :cond_1f

    .line 120
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v4, v2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v3

    .line 121
    .local v3, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    invoke-virtual {v3}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getSupportedTypes()I

    move-result v4

    iget v5, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v4}, Lcom/android/athome/picker/media/MediaRouterFallback;->getSystemAudioRoute()Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v4

    if-eq v3, v4, :cond_47

    .line 123
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    iget v5, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    invoke-virtual {v4, v5, v3}, Lcom/android/athome/picker/media/MediaRouterFallback;->selectRoute(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 119
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 128
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    :cond_4a
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->showDialog()V

    goto :goto_1f
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 307
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    if-eqz v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    :cond_b
    return-void
.end method

.method public setRouteTypes(I)V
    .registers 4
    .parameter "types"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    if-ne p1, v0, :cond_5

    .line 150
    :cond_4
    :goto_4
    return-void

    .line 140
    :cond_5
    iget-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mAttachedToWindow:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    if-eqz v0, :cond_14

    .line 141
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouterCallback:Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->removeCallback(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 144
    :cond_14
    iput p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    .line 146
    iget-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mAttachedToWindow:Z

    if-eqz v0, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->updateRouteInfo()V

    .line 148
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouterCallback:Lcom/android/athome/picker/media/MediaRouteButtonFallback$MediaRouteCallback;

    invoke-virtual {v0, p1, v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->addCallback(ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    goto :goto_4
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 219
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

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

.method public showDialog()V
    .registers 5

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 318
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 319
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    instance-of v2, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_29

    .line 320
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    if-nez v2, :cond_1d

    .line 330
    const-string v2, "android:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iput-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    .line 333
    :cond_1d
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    if-eqz v2, :cond_31

    .line 334
    const-string v2, "MediaRouteButtonFallback"

    const-string v3, "showDialog(): Already showing!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_28
    return-void

    .line 324
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_29
    const-string v2, "MediaRouteButtonFallback"

    const-string v3, "fragments not supported by the activity."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 338
    .end local v0           #activity:Landroid/app/Activity;
    :cond_31
    new-instance v2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-direct {v2}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    .line 339
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    new-instance v3, Lcom/android/athome/picker/media/MediaRouteButtonFallback$1;

    invoke-direct {v3, p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback$1;-><init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;)V

    invoke-virtual {v2, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->setLauncherListener(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;)V

    .line 346
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget v3, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    invoke-virtual {v2, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    .line 347
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    const-string v3, "android:MediaRouteChooserDialogFragment"

    invoke-virtual {v2, v1, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_28
.end method

.method updateRemoteIndicator()V
    .registers 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    iget v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    invoke-virtual {v1, v2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getSelectedRoute(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getSystemAudioRoute()Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v2

    if-eq v1, v2, :cond_1b

    const/4 v0, 0x1

    .line 164
    .local v0, isRemote:Z
    :goto_11
    iget-boolean v1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteActive:Z

    if-eq v1, v0, :cond_1a

    .line 165
    iput-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteActive:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->refreshDrawableState()V

    .line 168
    :cond_1a
    return-void

    .line 162
    .end local v0           #isRemote:Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_11
.end method

.method updateRouteCount()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v4}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteCount()I

    move-result v0

    .line 172
    .local v0, N:I
    const/4 v1, 0x0

    .line 173
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_2c

    .line 174
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouter:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v4, v2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v3

    .line 175
    .local v3, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    invoke-virtual {v3}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getSupportedTypes()I

    move-result v4

    iget v7, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_26

    .line 176
    instance-of v4, v3, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    if-eqz v4, :cond_29

    .line 177
    check-cast v3, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .end local v3           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    invoke-virtual {v3}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 173
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 179
    .restart local v3       #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 184
    .end local v3           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    :cond_2c
    if-eqz v1, :cond_3e

    move v4, v5

    :goto_2f
    invoke-virtual {p0, v4}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setEnabled(Z)V

    .line 187
    const/4 v4, 0x2

    if-ne v1, v4, :cond_40

    iget v4, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRouteTypes:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_40

    :goto_3b
    iput-boolean v5, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mToggleMode:Z

    .line 188
    return-void

    :cond_3e
    move v4, v6

    .line 184
    goto :goto_2f

    :cond_40
    move v5, v6

    .line 187
    goto :goto_3b
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
