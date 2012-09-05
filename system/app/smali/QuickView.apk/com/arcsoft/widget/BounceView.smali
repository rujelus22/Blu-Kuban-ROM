.class public Lcom/arcsoft/widget/BounceView;
.super Landroid/view/View;
.source "BounceView.java"


# static fields
.field private static final ANIM_SPEED:I = 0xa

.field public static final ARROW_HEIGHT:I = 0x50

.field public static final ARROW_WIDTH:I = 0x50

.field private static final BAR_HEIGHT:I = 0x14

.field private static final BAR_WIDTH:I = 0x50

.field public static final BOUNCE_STYLE_ACC:I = 0xa

.field public static final BOUNCE_STYLE_ACCDEC:I = 0xe

.field public static final BOUNCE_STYLE_BOUNCE:I = 0xb

.field public static final BOUNCE_STYLE_DEC:I = 0xd

.field public static final BOUNCE_STYLE_LINEAR:I = 0xc

.field public static final DIR_ALL:I = 0x0

.field public static final DIR_BOTTOM:I = 0x8

.field public static final DIR_LEFT:I = 0x1

.field public static final DIR_RIGHT:I = 0x4

.field public static final DIR_SHOW_ALL:I = 0x10

.field public static final DIR_TOP:I = 0x2

.field private static final EDGE_WIDTH:I = 0xa

.field private static final GLOW_WIDTH:I = 0xb9

.field public static final MOVE_DOWN:I = -0x1

.field public static final MOVE_UP:I = 0x1

.field public static final NO_MOVE:I = 0x0

.field private static final OFFSET_X:I = 0x64

.field private static final OFFSET_Y:I = 0xa

.field public static final RESET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BounceView:"


# instance fields
.field public CurrentDirection:I

.field private bBounceBack:Z

.field public bTouching:Z

.field public curX:F

.field public curY:F

.field private dX:F

.field private dY:F

.field private mAnimCount:I

.field private mArrowDownX:I

.field public mArrowDownY:I

.field private mArrowUpX:I

.field public mArrowUpY:I

.field private mBarX:I

.field private mBarY:I

.field private mBitmapArrowDown:Landroid/graphics/drawable/Drawable;

.field private mBitmapArrowDownDisable:Landroid/graphics/drawable/Drawable;

.field private mBitmapArrowUp:Landroid/graphics/drawable/Drawable;

.field private mBitmapArrowUpDisable:Landroid/graphics/drawable/Drawable;

.field private mBitmapBar:Landroid/graphics/drawable/Drawable;

.field private mBitmapEdgeBottom:Landroid/graphics/drawable/Drawable;

.field private mBitmapEdgeLeft:Landroid/graphics/drawable/Drawable;

.field private mBitmapEdgeRight:Landroid/graphics/drawable/Drawable;

.field private mBitmapEdgeTop:Landroid/graphics/drawable/Drawable;

.field private mBitmapGlowBottom:Landroid/graphics/drawable/Drawable;

.field private mBitmapGlowLeft:Landroid/graphics/drawable/Drawable;

.field private mBitmapGlowRight:Landroid/graphics/drawable/Drawable;

.field private mBitmapGlowTop:Landroid/graphics/drawable/Drawable;

.field private mBounceBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mDown:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowRect:Landroid/graphics/RectF;

.field public mUp:Z

.field public mbSingleZoomMode:Z

.field private rtImgRect:Landroid/graphics/Rect;

.field private rtScreenRect:Landroid/graphics/Rect;

.field private screenHeight:I

.field private screenWidth:I

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    .line 45
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    iput v4, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    .line 46
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iput v4, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    .line 47
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->bTouching:Z

    .line 48
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mContext:Landroid/content/Context;

    .line 49
    iput v2, p0, Lcom/arcsoft/widget/BounceView;->screenWidth:I

    iput v2, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    .line 54
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->bBounceBack:Z

    .line 56
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowLeft:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowTop:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowRight:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowBottom:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeLeft:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeTop:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeRight:Landroid/graphics/drawable/Drawable;

    .line 63
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeBottom:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUp:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDown:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUpDisable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDownDisable:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapBar:Landroid/graphics/drawable/Drawable;

    .line 71
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mBarX:I

    .line 72
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    .line 73
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpX:I

    .line 74
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    .line 75
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownX:I

    .line 76
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    .line 77
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->mUp:Z

    .line 78
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->mDown:Z

    .line 89
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->mbSingleZoomMode:Z

    .line 95
    iput v2, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    .line 96
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->rtScreenRect:Landroid/graphics/Rect;

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    .line 670
    new-instance v0, Lcom/arcsoft/widget/BounceView$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/BounceView$1;-><init>(Lcom/arcsoft/widget/BounceView;)V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/arcsoft/widget/BounceView;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    .line 45
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    iput v4, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    .line 46
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iput v4, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    .line 47
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->bTouching:Z

    .line 48
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mContext:Landroid/content/Context;

    .line 49
    iput v2, p0, Lcom/arcsoft/widget/BounceView;->screenWidth:I

    iput v2, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    .line 54
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->bBounceBack:Z

    .line 56
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowLeft:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowTop:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowRight:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowBottom:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeLeft:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeTop:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeRight:Landroid/graphics/drawable/Drawable;

    .line 63
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeBottom:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUp:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDown:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUpDisable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDownDisable:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapBar:Landroid/graphics/drawable/Drawable;

    .line 71
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mBarX:I

    .line 72
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    .line 73
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpX:I

    .line 74
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    .line 75
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownX:I

    .line 76
    iput v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    .line 77
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->mUp:Z

    .line 78
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->mDown:Z

    .line 89
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->mbSingleZoomMode:Z

    .line 95
    iput v2, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    .line 96
    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->rtScreenRect:Landroid/graphics/Rect;

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    .line 670
    new-instance v0, Lcom/arcsoft/widget/BounceView$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/BounceView$1;-><init>(Lcom/arcsoft/widget/BounceView;)V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/arcsoft/widget/BounceView;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/widget/BounceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/arcsoft/widget/BounceView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/arcsoft/widget/BounceView;)Landroid/view/animation/Interpolator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/arcsoft/widget/BounceView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->dX:F

    return v0
.end method

.method static synthetic access$300(Lcom/arcsoft/widget/BounceView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->dY:F

    return v0
.end method

.method static synthetic access$400(Lcom/arcsoft/widget/BounceView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawScrollMask(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 214
    iget v10, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iget v11, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 215
    .local v1, dX:F
    iget v10, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    iget v11, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 216
    .local v2, dY:F
    iget v10, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iget v11, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    sub-float/2addr v10, v11

    cmpg-float v10, v10, v12

    if-gtz v10, :cond_91

    move v5, v8

    .line 217
    .local v5, toLeftOfStart:Z
    :goto_1f
    iget v10, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    iget v11, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    sub-float/2addr v10, v11

    cmpg-float v10, v10, v12

    if-gtz v10, :cond_93

    move v6, v8

    .line 218
    .local v6, toTopOfStart:Z
    :goto_29
    const/4 v7, 0x0

    .local v7, top:F
    const/4 v3, 0x0

    .local v3, left:F
    const/4 v4, 0x0

    .local v4, right:F
    const/4 v0, 0x0

    .line 219
    .local v0, bottom:F
    iget v8, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_95

    if-nez v6, :cond_95

    .line 221
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v7, v8, v2

    .line 224
    :goto_3c
    iget v8, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_9b

    if-eqz v6, :cond_9b

    .line 226
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float v0, v8, v2

    .line 229
    :goto_4b
    iget v8, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a1

    if-nez v5, :cond_a1

    .line 231
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float v3, v8, v1

    .line 235
    :goto_5a
    iget v8, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_a7

    if-eqz v5, :cond_a7

    .line 237
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 241
    :goto_69
    iget v8, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_8b

    .line 243
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v7, v8, v2

    .line 244
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float v0, v8, v2

    .line 245
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float v3, v8, v1

    .line 246
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 249
    :cond_8b
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v3, v7, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 253
    return-void

    .end local v0           #bottom:F
    .end local v3           #left:F
    .end local v4           #right:F
    .end local v5           #toLeftOfStart:Z
    .end local v6           #toTopOfStart:Z
    .end local v7           #top:F
    :cond_91
    move v5, v9

    .line 216
    goto :goto_1f

    .restart local v5       #toLeftOfStart:Z
    :cond_93
    move v6, v9

    .line 217
    goto :goto_29

    .line 223
    .restart local v0       #bottom:F
    .restart local v3       #left:F
    .restart local v4       #right:F
    .restart local v6       #toTopOfStart:Z
    .restart local v7       #top:F
    :cond_95
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v7, v8

    goto :goto_3c

    .line 228
    :cond_9b
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v8

    goto :goto_4b

    .line 233
    :cond_a1
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v8

    goto :goto_5a

    .line 239
    :cond_a7
    iget-object v8, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v8

    goto :goto_69
.end method

.method private initPaint()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mPaint:Landroid/graphics/Paint;

    .line 208
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 210
    return-void
.end method

.method private setDefaultRect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->updateScreenSize()V

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->screenWidth:I

    iget v2, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/BounceView;->setRect(Landroid/graphics/Rect;)V

    .line 139
    return-void
.end method

.method private startMyAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 661
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->bBounceBack:Z

    .line 662
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->dX:F

    .line 663
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->dY:F

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    .line 665
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-eqz v0, :cond_1b

    .line 666
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->postInvalidate()V

    .line 667
    :cond_1b
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 668
    return-void
.end method


# virtual methods
.method public actionDown(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 584
    iput-boolean v1, p0, Lcom/arcsoft/widget/BounceView;->bTouching:Z

    .line 585
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->reset()V

    .line 586
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 587
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    :cond_f
    div-int/lit8 v0, p1, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    .line 589
    div-int/lit8 v0, p2, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    .line 590
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    .line 591
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    .line 592
    return-void
.end method

.method public actionMove(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 602
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 604
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->reset()V

    .line 606
    :cond_9
    return-void
.end method

.method public actionUp()V
    .registers 3

    .prologue
    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/BounceView;->bTouching:Z

    .line 611
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    .line 620
    :cond_d
    :goto_d
    return-void

    .line 616
    :cond_e
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->isBouncing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 617
    invoke-direct {p0}, Lcom/arcsoft/widget/BounceView;->startMyAnimation()V

    goto :goto_d

    .line 619
    :cond_18
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->reset()V

    goto :goto_d
.end method

.method public drawArrows(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .parameter "canvas"
    .parameter "up"
    .parameter "down"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBitmapBar:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarX:I

    iget v2, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    iget v3, p0, Lcom/arcsoft/widget/BounceView;->mBarX:I

    add-int/lit8 v3, v3, 0x50

    iget v4, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBitmapBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpX:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    iget v2, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpX:I

    add-int/lit8 v2, v2, 0x50

    iget v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    add-int/lit8 v3, v3, 0x50

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownX:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    iget v2, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownX:I

    add-int/lit8 v2, v2, 0x50

    iget v3, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    add-int/lit8 v3, v3, 0x50

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    return-void
.end method

.method public drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "alpha"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 406
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 407
    invoke-virtual {p2, p4, p5, p6, p7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 409
    return-void
.end method

.method public drawGlows(Landroid/graphics/Canvas;)V
    .registers 20
    .parameter "canvas"

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->curX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->startX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 353
    .local v14, dX:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->curY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->startY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 354
    .local v15, dY:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->curX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->startX:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_19b

    const/16 v16, 0x1

    .line 355
    .local v16, toLeftOfStart:Z
    :goto_2a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->curY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->startY:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_19f

    const/16 v17, 0x1

    .line 356
    .local v17, toTopOfStart:Z
    :goto_3a
    const/high16 v1, 0x437f

    mul-float/2addr v1, v15

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1a3

    const/16 v4, 0xff

    .line 357
    .local v4, alphaTopBottom:I
    :goto_4d
    const/high16 v1, 0x437f

    mul-float/2addr v1, v14

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->screenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1b2

    const/16 v13, 0xff

    .line 359
    .local v13, alphaLeftRight:I
    :goto_60
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1c1

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v8, v1, 0xb9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 363
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeTop:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v12, v1, 0xa

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v1, -0xb9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 367
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeBottom:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v1, -0xa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 370
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v11, v1, 0xb9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move v8, v13

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 371
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeLeft:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v11, v1, 0xa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 374
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v9, v1, -0xb9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move v8, v13

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 375
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeRight:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v9, v1, -0xa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 403
    :cond_19a
    :goto_19a
    return-void

    .line 354
    .end local v4           #alphaTopBottom:I
    .end local v13           #alphaLeftRight:I
    .end local v16           #toLeftOfStart:Z
    .end local v17           #toTopOfStart:Z
    :cond_19b
    const/16 v16, 0x0

    goto/16 :goto_2a

    .line 355
    .restart local v16       #toLeftOfStart:Z
    :cond_19f
    const/16 v17, 0x0

    goto/16 :goto_3a

    .line 356
    .restart local v17       #toTopOfStart:Z
    :cond_1a3
    const/high16 v1, 0x437f

    mul-float/2addr v1, v15

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v4, v1

    goto/16 :goto_4d

    .line 357
    .restart local v4       #alphaTopBottom:I
    :cond_1b2
    const/high16 v1, 0x437f

    mul-float/2addr v1, v14

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/arcsoft/widget/BounceView;->screenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v13, v1

    goto/16 :goto_60

    .line 380
    .restart local v13       #alphaLeftRight:I
    :cond_1c1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_217

    if-nez v17, :cond_217

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v8, v1, 0xb9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 383
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeTop:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v12, v1, 0xa

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 386
    :cond_217
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_26d

    if-eqz v17, :cond_26d

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v1, -0xb9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 389
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeBottom:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v1, -0xa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 392
    :cond_26d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c4

    if-nez v16, :cond_2c4

    .line 394
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v11, v1, 0xb9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move v8, v13

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 395
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeLeft:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v11, v1, 0xa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 398
    :cond_2c4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_19a

    if-eqz v16, :cond_19a

    .line 400
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v9, v1, -0xb9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move v8, v13

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 401
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeRight:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v9, v1, -0xa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/arcsoft/widget/BounceView;->drawGlowOneSide(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIII)V

    goto/16 :goto_19a
.end method

.method public endAllBounce(Landroid/graphics/Rect;Z)V
    .registers 5
    .parameter "rect"
    .parameter "bInvalidate"

    .prologue
    .line 493
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-eqz v0, :cond_16

    .line 495
    if-nez p2, :cond_c

    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 497
    :cond_c
    invoke-virtual {p0, p1}, Lcom/arcsoft/widget/BounceView;->setRect(Landroid/graphics/Rect;)V

    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/BounceView;->hideBounce(I)V

    .line 499
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->invalidate()V

    .line 509
    :cond_16
    :goto_16
    return-void

    .line 503
    :cond_17
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->isBouncing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 504
    invoke-direct {p0}, Lcom/arcsoft/widget/BounceView;->startMyAnimation()V

    goto :goto_16

    .line 506
    :cond_21
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->reset()V

    goto :goto_16
.end method

.method public endSingleBounce(Landroid/graphics/Rect;I)V
    .registers 5
    .parameter "rect"
    .parameter "direction"

    .prologue
    .line 513
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_13

    .line 515
    invoke-virtual {p0, p1}, Lcom/arcsoft/widget/BounceView;->setRect(Landroid/graphics/Rect;)V

    .line 516
    invoke-virtual {p0, p2}, Lcom/arcsoft/widget/BounceView;->hideBounce(I)V

    .line 517
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->invalidate()V

    .line 519
    :cond_13
    return-void
.end method

.method public hideBounce(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 469
    if-nez p1, :cond_6

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    .line 474
    :goto_5
    return-void

    .line 472
    :cond_6
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    xor-int/2addr v0, p1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    goto :goto_5
.end method

.method public init()V
    .registers 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/arcsoft/widget/BounceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowLeft:Landroid/graphics/drawable/Drawable;

    .line 113
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowTop:Landroid/graphics/drawable/Drawable;

    .line 114
    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowRight:Landroid/graphics/drawable/Drawable;

    .line 115
    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapGlowBottom:Landroid/graphics/drawable/Drawable;

    .line 117
    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeLeft:Landroid/graphics/drawable/Drawable;

    .line 118
    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeTop:Landroid/graphics/drawable/Drawable;

    .line 119
    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeRight:Landroid/graphics/drawable/Drawable;

    .line 120
    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapEdgeBottom:Landroid/graphics/drawable/Drawable;

    .line 122
    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUp:Landroid/graphics/drawable/Drawable;

    .line 123
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDown:Landroid/graphics/drawable/Drawable;

    .line 124
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUpDisable:Landroid/graphics/drawable/Drawable;

    .line 125
    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDownDisable:Landroid/graphics/drawable/Drawable;

    .line 126
    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapBar:Landroid/graphics/drawable/Drawable;

    .line 128
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/arcsoft/widget/BounceView;->setBounceStyle(I)V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/arcsoft/widget/BounceView;->hideBounce(I)V

    .line 130
    invoke-direct {p0}, Lcom/arcsoft/widget/BounceView;->setDefaultRect()V

    .line 131
    invoke-direct {p0}, Lcom/arcsoft/widget/BounceView;->initPaint()V

    .line 132
    return-void
.end method

.method public isBouncing()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, res:Z
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_1b

    .line 424
    :goto_1a
    return v1

    .line 418
    :cond_1b
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    if-ne v2, v3, :cond_47

    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    if-ne v2, v3, :cond_47

    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    if-ne v2, v3, :cond_47

    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    if-eq v2, v3, :cond_4a

    :cond_47
    const/4 v0, 0x1

    :goto_48
    move v1, v0

    .line 424
    goto :goto_1a

    :cond_4a
    move v0, v1

    .line 418
    goto :goto_48
.end method

.method public isBouncingBack()Z
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/arcsoft/widget/BounceView;->mbSingleZoomMode:Z

    if-eqz v0, :cond_19

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 190
    iget-boolean v0, p0, Lcom/arcsoft/widget/BounceView;->mUp:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUp:Landroid/graphics/drawable/Drawable;

    :goto_d
    iget-boolean v1, p0, Lcom/arcsoft/widget/BounceView;->mDown:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDown:Landroid/graphics/drawable/Drawable;

    :goto_13
    invoke-virtual {p0, p1, v0, v1}, Lcom/arcsoft/widget/BounceView;->drawArrows(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 194
    :cond_19
    iget-boolean v0, p0, Lcom/arcsoft/widget/BounceView;->bTouching:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/arcsoft/widget/BounceView;->bBounceBack:Z

    if-eqz v0, :cond_2d

    .line 196
    :cond_21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/BounceView;->drawScrollMask(Landroid/graphics/Canvas;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/arcsoft/widget/BounceView;->drawGlows(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 203
    :cond_2d
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    return-void

    .line 190
    :cond_31
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowUpDisable:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_34
    iget-object v1, p0, Lcom/arcsoft/widget/BounceView;->mBitmapArrowDownDisable:Landroid/graphics/drawable/Drawable;

    goto :goto_13
.end method

.method public reset()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 163
    iget v3, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-eqz v3, :cond_33

    move v0, v1

    .line 164
    .local v0, bInvalidate:Z
    :goto_8
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->bBounceBack:Z

    .line 165
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/arcsoft/widget/BounceView;->setRect(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {p0, v2}, Lcom/arcsoft/widget/BounceView;->hideBounce(I)V

    .line 167
    iget-object v3, p0, Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    .line 169
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    .line 170
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    .line 171
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    .line 172
    iput v2, p0, Lcom/arcsoft/widget/BounceView;->mAnimCount:I

    .line 173
    iput v4, p0, Lcom/arcsoft/widget/BounceView;->dX:F

    iput v4, p0, Lcom/arcsoft/widget/BounceView;->dY:F

    .line 174
    iget v1, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-eqz v1, :cond_2b

    .line 175
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->postInvalidate()V

    .line 176
    :cond_2b
    iput-boolean v2, p0, Lcom/arcsoft/widget/BounceView;->mbSingleZoomMode:Z

    .line 178
    if-eqz v0, :cond_32

    .line 180
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->invalidate()V

    .line 182
    :cond_32
    return-void

    .end local v0           #bInvalidate:Z
    :cond_33
    move v0, v2

    .line 163
    goto :goto_8
.end method

.method public setBounceStyle(I)V
    .registers 3
    .parameter "style"

    .prologue
    .line 522
    packed-switch p1, :pswitch_data_34

    .line 540
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 543
    :goto_a
    return-void

    .line 525
    :pswitch_b
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_a

    .line 528
    :pswitch_13
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_a

    .line 531
    :pswitch_1b
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_a

    .line 534
    :pswitch_23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_a

    .line 537
    :pswitch_2b
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_a

    .line 522
    nop

    :pswitch_data_34
    .packed-switch 0xa
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "rect"

    .prologue
    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_9

    .line 153
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    :goto_8
    return-void

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->rtScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 157
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 158
    iget-object v0, p0, Lcom/arcsoft/widget/BounceView;->mShadowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/arcsoft/widget/BounceView;->rtImgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_8
.end method

.method public showBounce(I)V
    .registers 4
    .parameter "direction"

    .prologue
    const/high16 v1, 0x4382

    .line 434
    sparse-switch p1, :sswitch_data_4a

    .line 466
    :goto_5
    return-void

    .line 437
    :sswitch_6
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    .line 438
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    .line 463
    :goto_f
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    .line 465
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->invalidate()V

    goto :goto_5

    .line 441
    :sswitch_18
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    .line 442
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    goto :goto_f

    .line 445
    :sswitch_22
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    .line 446
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    goto :goto_f

    .line 449
    :sswitch_2c
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    .line 450
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    goto :goto_f

    .line 453
    :sswitch_36
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    .line 454
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    .line 456
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->startX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curX:F

    .line 457
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->startY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->curY:F

    goto :goto_f

    .line 434
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_22
        0x4 -> :sswitch_18
        0x8 -> :sswitch_2c
        0x10 -> :sswitch_36
    .end sparse-switch
.end method

.method public startAllBounce(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "rect"

    .prologue
    .line 478
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-nez v0, :cond_c

    .line 480
    invoke-virtual {p0, p1}, Lcom/arcsoft/widget/BounceView;->setRect(Landroid/graphics/Rect;)V

    .line 481
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/BounceView;->showBounce(I)V

    .line 483
    :cond_c
    return-void
.end method

.method public startBounce(Landroid/graphics/Rect;I)V
    .registers 3
    .parameter "rect"
    .parameter "direction"

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/arcsoft/widget/BounceView;->setRect(Landroid/graphics/Rect;)V

    .line 488
    invoke-virtual {p0, p2}, Lcom/arcsoft/widget/BounceView;->showBounce(I)V

    .line 489
    return-void
.end method

.method public updateArrowPositions(IIIIZZ)V
    .registers 12
    .parameter "startPointX"
    .parameter "startPointY"
    .parameter "offsety"
    .parameter "flag"
    .parameter "zoomoutEnabled"
    .parameter "zoominEnabled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 295
    const-string v0, "BounceView:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateArrowPositions: startPointX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startPointY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offsety="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v0, p1, -0x64

    add-int/lit8 v0, v0, -0x50

    if-gez v0, :cond_99

    add-int/lit8 v0, p1, 0x64

    add-int/lit8 v0, v0, 0x50

    :goto_42
    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mBarX:I

    .line 297
    add-int/lit8 v0, p2, -0x50

    add-int/lit8 v0, v0, -0xa

    if-gez v0, :cond_9e

    .line 298
    const/16 v0, 0x5a

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    .line 304
    :goto_4e
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mBarX:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpX:I

    .line 305
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mBarX:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownX:I

    .line 306
    if-eq p4, v4, :cond_5e

    if-ne p4, v3, :cond_118

    .line 308
    :cond_5e
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, -0x50

    add-int/lit8 v1, v1, -0xa

    if-ge v0, v1, :cond_b6

    .line 309
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    .line 317
    :cond_6d
    :goto_6d
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, -0x50

    add-int/lit8 v1, v1, -0xa

    if-le v0, v1, :cond_ff

    .line 318
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v0, v0, -0x50

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    .line 324
    :cond_7f
    :goto_7f
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_108

    .line 325
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    .line 335
    :cond_91
    :goto_91
    iput-boolean p6, p0, Lcom/arcsoft/widget/BounceView;->mUp:Z

    .line 336
    iput-boolean p5, p0, Lcom/arcsoft/widget/BounceView;->mDown:Z

    .line 338
    invoke-virtual {p0}, Lcom/arcsoft/widget/BounceView;->postInvalidate()V

    .line 339
    return-void

    .line 296
    :cond_99
    add-int/lit8 v0, p1, -0x64

    add-int/lit8 v0, v0, -0x50

    goto :goto_42

    .line 299
    :cond_9e
    add-int/lit8 v0, p2, 0x50

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x14

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    if-le v0, v1, :cond_b3

    .line 300
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    add-int/lit8 v0, v0, -0x50

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    goto :goto_4e

    .line 302
    :cond_b3
    iput p2, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    goto :goto_4e

    .line 310
    :cond_b6
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x14

    if-le v0, v1, :cond_c6

    .line 311
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    goto :goto_6d

    .line 312
    :cond_c6
    if-ne p4, v4, :cond_e2

    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, -0x50

    add-int/lit8 v1, v1, -0xa

    if-ne v0, v1, :cond_e2

    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x14

    if-ne v0, v1, :cond_e2

    .line 313
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    goto :goto_6d

    .line 314
    :cond_e2
    if-ne p4, v3, :cond_6d

    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, -0x50

    add-int/lit8 v1, v1, -0xa

    if-ne v0, v1, :cond_6d

    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x14

    if-ne v0, v1, :cond_6d

    .line 315
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    goto/16 :goto_6d

    .line 320
    :cond_ff
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    if-gez v0, :cond_7f

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    goto/16 :goto_7f

    .line 327
    :cond_108
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    iget v1, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    add-int/lit8 v1, v1, -0x50

    if-le v0, v1, :cond_91

    .line 328
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    goto/16 :goto_91

    .line 330
    :cond_118
    const/4 v0, 0x2

    if-ne p4, v0, :cond_91

    .line 331
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v0, v0, -0x50

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowUpY:I

    .line 332
    iget v0, p0, Lcom/arcsoft/widget/BounceView;->mBarY:I

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/arcsoft/widget/BounceView;->mArrowDownY:I

    goto/16 :goto_91
.end method

.method public updateScreenSize()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->mContext:Landroid/content/Context;

    if-nez v2, :cond_6

    .line 149
    :goto_5
    return-void

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 145
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 146
    .local v0, dp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/arcsoft/widget/BounceView;->screenWidth:I

    .line 147
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    .line 148
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView;->rtScreenRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/arcsoft/widget/BounceView;->screenWidth:I

    iget v4, p0, Lcom/arcsoft/widget/BounceView;->screenHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5
.end method
