.class public Lcom/google/android/apps/plus/views/ExpandButtonView;
.super Landroid/view/View;
.source "ExpandButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;
    }
.end annotation


# static fields
.field private static sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sButtonHeight:I

.field private static sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sButtonWidth:I

.field private static sCollapseBitmap:Landroid/graphics/Bitmap;

.field private static sExpandBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClicked:Z

.field private mExpanded:Z

.field private mListener:Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    sget-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandButtonView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020199

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    .line 67
    const v1, 0x7f020197

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sCollapseBitmap:Landroid/graphics/Bitmap;

    .line 68
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 69
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 72
    const v1, 0x7f0d01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonWidth:I

    .line 73
    const v1, 0x7f0d01cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonHeight:I

    .line 75
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_4c
    sget-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonWidth:I

    sget v3, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    sget-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandButtonView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020199

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    .line 67
    const v1, 0x7f020197

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sCollapseBitmap:Landroid/graphics/Bitmap;

    .line 68
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 69
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 72
    const v1, 0x7f0d01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonWidth:I

    .line 73
    const v1, 0x7f0d01cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonHeight:I

    .line 75
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_4c
    sget-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonWidth:I

    sget v3, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    sget-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandButtonView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020199

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    .line 67
    const v1, 0x7f020197

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sCollapseBitmap:Landroid/graphics/Bitmap;

    .line 68
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 69
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 72
    const v1, 0x7f0d01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonWidth:I

    .line 73
    const v1, 0x7f0d01cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonHeight:I

    .line 75
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_4c
    sget-object v1, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonWidth:I

    sget v3, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    .line 59
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 131
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 133
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_44

    .line 166
    :cond_13
    :goto_13
    :pswitch_13
    return v2

    .line 135
    :pswitch_14
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 139
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mClicked:Z

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandButtonView;->invalidate()V

    move v2, v3

    .line 141
    goto :goto_13

    .line 145
    :pswitch_23
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 146
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mClicked:Z

    goto :goto_13

    .line 150
    :cond_2e
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mClicked:Z

    if-eqz v4, :cond_37

    .line 151
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mListener:Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;

    invoke-interface {v4, p0}, Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;->onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ExpandButtonView;)V

    .line 154
    :cond_37
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mClicked:Z

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandButtonView;->invalidate()V

    move v2, v3

    .line 156
    goto :goto_13

    .line 160
    :pswitch_3e
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mClicked:Z

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandButtonView;->invalidate()V

    goto :goto_13

    .line 133
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_14
        :pswitch_23
        :pswitch_13
        :pswitch_3e
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 118
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mClicked:Z

    if-eqz v3, :cond_41

    sget-object v0, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 119
    .local v0, background:Landroid/graphics/drawable/NinePatchDrawable;
    :goto_6
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 123
    .local v1, x:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 125
    .local v2, y:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    int-to-float v5, v2

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    return-void

    .line 118
    .end local v0           #background:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_41
    sget-object v0, Lcom/google/android/apps/plus/views/ExpandButtonView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_6
.end method

.method public setClickableButtonListener(Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mListener:Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;

    .line 84
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3
    .parameter "expanded"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mExpanded:Z

    .line 91
    if-eqz p1, :cond_9

    sget-object v0, Lcom/google/android/apps/plus/views/ExpandButtonView;->sCollapseBitmap:Landroid/graphics/Bitmap;

    :goto_6
    iput-object v0, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mBitmap:Landroid/graphics/Bitmap;

    .line 92
    return-void

    .line 91
    :cond_9
    sget-object v0, Lcom/google/android/apps/plus/views/ExpandButtonView;->sExpandBitmap:Landroid/graphics/Bitmap;

    goto :goto_6
.end method

.method public setPosition(II)V
    .registers 4
    .parameter "left"
    .parameter "top"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ExpandButtonView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 106
    return-void
.end method
