.class public Lcom/android/launcher2/HolographicViewHelper;
.super Ljava/lang/Object;
.source "HolographicViewHelper.java"


# instance fields
.field private mHighlightColor:I

.field private mStatesUpdated:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HolographicViewHelper;->mHighlightColor:I

    .line 37
    return-void
.end method

.method private createPressImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "v"
    .parameter "canvas"

    .prologue
    .line 71
    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 72
    .local v1, padding:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 77
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 79
    iget v2, p0, Lcom/android/launcher2/HolographicViewHelper;->mHighlightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method generatePressedFocusedStates(Landroid/widget/ImageView;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    iget-boolean v3, p0, Lcom/android/launcher2/HolographicViewHelper;->mStatesUpdated:Z

    if-nez v3, :cond_3a

    if-eqz p1, :cond_3a

    .line 44
    iput-boolean v6, p0, Lcom/android/launcher2/HolographicViewHelper;->mStatesUpdated:Z

    .line 45
    iget-object v3, p0, Lcom/android/launcher2/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HolographicViewHelper;->createPressImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46
    .local v1, outline:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 48
    .local v0, d:Lcom/android/launcher2/FastBitmapDrawable;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 49
    .local v2, states:Landroid/graphics/drawable/StateListDrawable;
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 50
    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 51
    new-array v3, v5, [I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .end local v0           #d:Lcom/android/launcher2/FastBitmapDrawable;
    .end local v1           #outline:Landroid/graphics/Bitmap;
    .end local v2           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_3a
    return-void
.end method

.method invalidatePressedFocusedStates(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HolographicViewHelper;->mStatesUpdated:Z

    .line 61
    if-eqz p1, :cond_8

    .line 62
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 64
    :cond_8
    return-void
.end method
