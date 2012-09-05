.class public Lcom/google/android/apps/plus/views/PhotoHeaderView;
.super Landroid/view/View;
.source "PhotoHeaderView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;,
        Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;,
        Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;
    }
.end annotation


# static fields
.field private static sBackgroundColor:I

.field private static sCommentBitmap:Landroid/graphics/Bitmap;

.field private static sCommentCountLeftMargin:I

.field private static sCommentCountPaint:Landroid/text/TextPaint;

.field private static sCommentCountTextWidth:I

.field private static sCropDimPaint:Landroid/graphics/Paint;

.field private static sCropPaint:Landroid/graphics/Paint;

.field private static sCropViewPaint:Landroid/graphics/Paint;

.field private static sCropWidth:I

.field private static sHasMultitouchDistinct:Z

.field private static sInitialized:Z

.field private static sPhotoOverlayBottomPadding:I

.field private static sPhotoOverlayRightPadding:I

.field private static sPlusOneBitmap:Landroid/graphics/Bitmap;

.field private static sPlusOneBottomMargin:I

.field private static sPlusOneCountLeftMargin:I

.field private static sPlusOneCountPaint:Landroid/text/TextPaint;

.field private static sPlusOneCountTextWidth:I

.field private static sPlusOneIconRightPaddingHack:I

.field private static sTagPaint:Landroid/graphics/Paint;

.field private static sTagTextBackgroundPaint:Landroid/graphics/Paint;

.field private static sTagTextPadding:I

.field private static sTagTextPaint:Landroid/text/TextPaint;

.field private static sVideoImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAllowCrop:Z

.field private mCommentCount:I

.field private mCropRect:Landroid/graphics/Rect;

.field private mDoubleTapDebounce:Z

.field private mDoubleTapToZoomEnabled:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mExternalClickListener:Landroid/view/View$OnClickListener;

.field private mFixedHeight:I

.field private mFullScreen:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHaveLayout:Z

.field private mIsDoubleTouch:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxScale:F

.field private mMinScale:F

.field private mOriginalMatrix:Landroid/graphics/Matrix;

.field private mOverlay:Landroid/graphics/Bitmap;

.field private mOverlayCanvas:Landroid/graphics/Canvas;

.field private mPlusOneCount:I

.field private mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

.field private mRotation:F

.field private mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

.field private mShowTagShape:Z

.field private mTagName:Ljava/lang/CharSequence;

.field private mTagNameBackground:Landroid/graphics/RectF;

.field private mTagShape:Landroid/graphics/RectF;

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mTransformsEnabled:Z

.field private mTranslateRect:Landroid/graphics/RectF;

.field private mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

.field private mValues:[F

.field private mVideoData:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    .line 193
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    .line 195
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    .line 197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    .line 201
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->initialize()V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    .line 193
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    .line 195
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    .line 197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    .line 206
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->initialize()V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    .line 193
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    .line 195
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    .line 197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    .line 211
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->initialize()V

    .line 212
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/PhotoHeaderView;FFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->scale(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/PhotoHeaderView;FF)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->translate(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/views/PhotoHeaderView;FZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->rotate(FZ)V

    return-void
.end method

.method private configureBounds(Z)V
    .registers 9
    .parameter "changed"

    .prologue
    const/4 v5, 0x0

    .line 804
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    if-nez v6, :cond_a

    .line 828
    :cond_9
    :goto_9
    return-void

    .line 807
    :cond_a
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 808
    .local v1, dwidth:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 810
    .local v0, dheight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v4

    .line 811
    .local v4, vwidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v3

    .line 813
    .local v3, vheight:I
    if-ltz v1, :cond_22

    if-ne v4, v1, :cond_3d

    :cond_22
    if-ltz v0, :cond_26

    if-ne v3, v0, :cond_3d

    :cond_26
    const/4 v2, 0x1

    .line 817
    .local v2, fits:Z
    :goto_27
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v5, v5, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 820
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->generateMatrix(Z)V

    .line 822
    if-nez v2, :cond_39

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 824
    :cond_39
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_9

    .end local v2           #fits:Z
    :cond_3d
    move v2, v5

    .line 813
    goto :goto_27

    .line 826
    .restart local v2       #fits:Z
    :cond_3f
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_9
.end method

.method private drawTagName(Landroid/graphics/Canvas;FFFF)V
    .registers 26
    .parameter "canvas"
    .parameter "tagLeft"
    .parameter "tagTop"
    .parameter "tagRight"
    .parameter "tagBottom"

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    .line 798
    :goto_6
    return-void

    .line 757
    :cond_7
    const/high16 v1, 0x4000

    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    int-to-float v2, v2

    mul-float v18, v1, v2

    .line 759
    .local v18, textPadding:F
    sub-float v1, p4, p2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float v17, p2, v1

    .line 761
    .local v17, tagCenter:F
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v16

    .line 762
    .local v16, nameWidth:F
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v8, v1, v2

    .line 764
    .local v8, nameHeight:F
    add-float v14, v16, v18

    .line 765
    .local v14, nameRectWidth:F
    add-float v10, v8, v18

    .line 768
    .local v10, nameRectHeight:F
    const/high16 v1, 0x4000

    div-float v1, v14, v1

    sub-float v11, v17, v1

    .line 769
    .local v11, nameRectLeft:F
    const/4 v1, 0x0

    cmpg-float v1, v11, v1

    if-gez v1, :cond_46

    .line 771
    const/4 v11, 0x0

    .line 773
    :cond_46
    add-float v12, v11, v14

    .line 774
    .local v12, nameRectRight:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v12, v1

    if-lez v1, :cond_55

    .line 775
    move/from16 v12, p4

    .line 776
    sub-float v11, v12, v14

    .line 779
    :cond_55
    move/from16 v13, p5

    .line 780
    .local v13, nameRectTop:F
    add-float v9, v13, v10

    .line 782
    .local v9, nameRectBottom:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v19

    .line 783
    .local v19, vheight:I
    move/from16 v0, v19

    int-to-float v1, v0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_68

    .line 785
    move/from16 v9, p3

    .line 786
    sub-float v13, v9, v10

    .line 790
    :cond_68
    sget v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    int-to-float v1, v1

    add-float v5, v11, v1

    .line 791
    .local v5, nameLeft:F
    sget v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    int-to-float v1, v1

    add-float v15, v13, v1

    .line 793
    .local v15, nameTop:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    invoke-virtual {v1, v11, v13, v12, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    const/high16 v2, 0x4040

    const/high16 v3, 0x4040

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v6, v15, v1

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method private generateMatrix(Z)V
    .registers 12
    .parameter "changed"

    .prologue
    const/high16 v9, 0x4100

    const/4 v8, 0x0

    .line 835
    if-nez p1, :cond_14

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    if-nez v5, :cond_14

    .line 865
    :cond_13
    :goto_13
    return-void

    .line 838
    :cond_14
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 839
    .local v1, dwidth:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 841
    .local v0, dheight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v4

    .line 842
    .local v4, vwidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v3

    .line 844
    .local v3, vheight:I
    if-ltz v1, :cond_2c

    if-ne v4, v1, :cond_51

    :cond_2c
    if-ltz v0, :cond_30

    if-ne v3, v0, :cond_51

    :cond_30
    const/4 v2, 0x1

    .line 848
    .local v2, fits:Z
    :goto_31
    if-eqz v2, :cond_53

    .line 849
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 856
    :goto_38
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 859
    if-ge v1, v4, :cond_6d

    if-ge v0, v3, :cond_6d

    .line 860
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    .line 864
    :goto_47
    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    mul-float/2addr v5, v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMaxScale:F

    goto :goto_13

    .line 844
    .end local v2           #fits:Z
    :cond_51
    const/4 v2, 0x0

    goto :goto_31

    .line 852
    .restart local v2       #fits:Z
    :cond_53
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 853
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v6, v4

    int-to-float v7, v3

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 854
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_38

    .line 862
    :cond_6d
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    goto :goto_47
.end method

.method private getScale()F
    .registers 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 874
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private initialize()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 1011
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1013
    .local v0, context:Landroid/content/Context;
    sget-boolean v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sInitialized:Z

    if-nez v4, :cond_1e7

    .line 1014
    sput-boolean v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sInitialized:Z

    .line 1016
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1019
    .local v1, resources:Landroid/content/res/Resources;
    const v4, 0x7f020072

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    .line 1020
    const v4, 0x7f0200ac

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    .line 1021
    const v4, 0x7f020152

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 1024
    const v4, 0x7f090041

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sBackgroundColor:I

    .line 1027
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 1028
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1029
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v5, 0x7f09004f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1030
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v5, 0x7f0c0090

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1033
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 1034
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1035
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x7f09

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1036
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v5, 0x7f0c008f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1039
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    .line 1040
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1041
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    const v5, 0x7f090042

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1042
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1043
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    const v5, 0x7f0c009d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1044
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    const v5, 0x7f0c009c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f090043

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1047
    const v4, 0x7f0c007c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropWidth:I

    .line 1049
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    .line 1050
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1051
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    const v5, 0x7f090054

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1052
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1054
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropViewPaint:Landroid/graphics/Paint;

    .line 1055
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1056
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1057
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropViewPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1058
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropViewPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1060
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    .line 1061
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1062
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    const v5, 0x7f090055

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1063
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1064
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    const v5, 0x7f0c007d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1066
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    .line 1067
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1068
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    const v5, 0x7f090044

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1069
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1070
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    const v5, 0x7f0c0098

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1071
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    const/high16 v5, -0x100

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1073
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    .line 1074
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    const v5, 0x7f090045

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1076
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1079
    const v4, 0x7f0c007e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayRightPadding:I

    .line 1081
    const v4, 0x7f0c007f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayBottomPadding:I

    .line 1083
    const v4, 0x7f0c0084

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountLeftMargin:I

    .line 1085
    const v4, 0x7f0c0085

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountTextWidth:I

    .line 1087
    const v4, 0x7f0c0089

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountLeftMargin:I

    .line 1089
    const v4, 0x7f0c008b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountTextWidth:I

    .line 1091
    const v4, 0x7f0c0088

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBottomMargin:I

    .line 1093
    const v4, 0x7f0c008a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneIconRightPaddingHack:I

    .line 1095
    const v4, 0x7f0c009b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    .line 1098
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sHasMultitouchDistinct:Z

    .line 1102
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_1e7
    new-instance v4, Landroid/view/GestureDetector;

    const/4 v5, 0x0

    sget-boolean v6, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sHasMultitouchDistinct:Z

    if-nez v6, :cond_210

    :goto_1ee
    invoke-direct {v4, v0, p0, v5, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1103
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-direct {v2, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    .line 1104
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;-><init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    .line 1105
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;-><init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    .line 1106
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;-><init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    .line 1107
    return-void

    :cond_210
    move v2, v3

    .line 1102
    goto :goto_1ee
.end method

.method private rotate(FZ)V
    .registers 6
    .parameter "degrees"
    .parameter "animate"

    .prologue
    .line 998
    if-eqz p2, :cond_8

    .line 999
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->start(F)V

    .line 1005
    :goto_7
    return-void

    .line 1001
    :cond_8
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    .line 1002
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    goto :goto_7
.end method

.method private scale(FFF)V
    .registers 21
    .parameter "newScale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 892
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    neg-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 895
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    move/from16 v0, p1

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 896
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMaxScale:F

    move/from16 v0, p1

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v6

    .line 899
    .local v6, currentScale:F
    div-float v7, p1, v6

    .line 902
    .local v7, factor:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v7, v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v13, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 906
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v13

    int-to-float v12, v13

    .line 908
    .local v12, width:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v13

    int-to-float v8, v13

    .line 909
    .local v8, height:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v9, v13, Landroid/graphics/RectF;->left:F

    .line 910
    .local v9, left:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v11, v13, Landroid/graphics/RectF;->top:F

    .line 911
    .local v11, top:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v10, v13, Landroid/graphics/RectF;->right:F

    .line 912
    .local v10, right:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v2, v13, Landroid/graphics/RectF;->bottom:F

    .line 913
    .local v2, bottom:F
    const/4 v4, 0x0

    .line 914
    .local v4, correctionX:F
    const/4 v5, 0x0

    .line 915
    .local v5, correctionY:F
    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-lez v13, :cond_c5

    cmpg-float v13, v10, v12

    if-gez v13, :cond_c5

    .line 916
    sub-float v13, v12, v9

    sub-float/2addr v13, v10

    const/high16 v14, 0x4000

    div-float v4, v13, v14

    .line 932
    :cond_8d
    :goto_8d
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-lez v13, :cond_f2

    cmpg-float v13, v2, v8

    if-gez v13, :cond_f2

    .line 933
    sub-float v13, v8, v11

    sub-float/2addr v13, v2

    const/high16 v14, 0x4000

    div-float v5, v13, v14

    .line 949
    :cond_9d
    :goto_9d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 955
    return-void

    .line 917
    :cond_c5
    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-lez v13, :cond_db

    .line 918
    neg-float v3, v9

    .line 919
    .local v3, correction:F
    add-float v13, v10, v3

    cmpl-float v13, v13, v12

    if-ltz v13, :cond_d3

    .line 920
    move v4, v3

    goto :goto_8d

    .line 922
    :cond_d3
    sub-float v13, v12, v9

    sub-float/2addr v13, v10

    const/high16 v14, 0x4000

    div-float v4, v13, v14

    goto :goto_8d

    .line 924
    .end local v3           #correction:F
    :cond_db
    cmpg-float v13, v10, v12

    if-gez v13, :cond_8d

    .line 925
    sub-float v3, v12, v10

    .line 926
    .restart local v3       #correction:F
    add-float v13, v9, v3

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_ea

    .line 927
    move v4, v3

    goto :goto_8d

    .line 929
    :cond_ea
    sub-float v13, v12, v9

    sub-float/2addr v13, v10

    const/high16 v14, 0x4000

    div-float v4, v13, v14

    goto :goto_8d

    .line 934
    .end local v3           #correction:F
    :cond_f2
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-lez v13, :cond_108

    .line 935
    neg-float v3, v11

    .line 936
    .restart local v3       #correction:F
    add-float v13, v2, v3

    cmpl-float v13, v13, v8

    if-ltz v13, :cond_100

    .line 937
    move v5, v3

    goto :goto_9d

    .line 939
    :cond_100
    sub-float v13, v8, v11

    sub-float/2addr v13, v2

    const/high16 v14, 0x4000

    div-float v5, v13, v14

    goto :goto_9d

    .line 941
    .end local v3           #correction:F
    :cond_108
    cmpg-float v13, v2, v8

    if-gez v13, :cond_9d

    .line 942
    sub-float v3, v8, v2

    .line 943
    .restart local v3       #correction:F
    add-float v13, v11, v3

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_117

    .line 944
    move v5, v3

    goto :goto_9d

    .line 946
    :cond_117
    sub-float v13, v8, v11

    sub-float/2addr v13, v2

    const/high16 v14, 0x4000

    div-float v5, v13, v14

    goto/16 :goto_9d
.end method

.method private translate(FF)V
    .registers 12
    .parameter "translateX"
    .parameter "translateY"

    .prologue
    const/high16 v8, 0x4000

    .line 966
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 967
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 970
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v6, :cond_75

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v5, v6

    .line 971
    .local v5, width:F
    :goto_19
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    .line 972
    .local v2, l:F
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v3, v6, Landroid/graphics/RectF;->right:F

    .line 973
    .local v3, r:F
    sub-float v6, v3, v2

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v5, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7b

    .line 974
    sub-float v6, v5, v3

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    invoke-static {v7, p1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 978
    :goto_3e
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v6, :cond_85

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v6

    .line 979
    .local v1, height:F
    :goto_47
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v4, v6, Landroid/graphics/RectF;->top:F

    .line 980
    .local v4, t:F
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    .line 981
    .local v0, b:F
    sub-float v6, v0, v4

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v1, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8b

    .line 982
    sub-float v6, v1, v0

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    invoke-static {v7, p2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 986
    :goto_6c
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 988
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 989
    return-void

    .line 970
    .end local v0           #b:F
    .end local v1           #height:F
    .end local v2           #l:F
    .end local v3           #r:F
    .end local v4           #t:F
    .end local v5           #width:F
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v6

    int-to-float v5, v6

    goto :goto_19

    .line 976
    .restart local v2       #l:F
    .restart local v3       #r:F
    .restart local v5       #width:F
    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    sub-float/2addr v6, v2

    div-float p1, v6, v8

    goto :goto_3e

    .line 978
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v6

    int-to-float v1, v6

    goto :goto_47

    .line 984
    .restart local v0       #b:F
    .restart local v1       #height:F
    .restart local v4       #t:F
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float/2addr v6, v4

    div-float p2, v6, v8

    goto :goto_6c
.end method


# virtual methods
.method public bindPhoto(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "photoBitmap"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    .line 417
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 419
    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->configureBounds(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 421
    return-void
.end method

.method public bindTagData(Landroid/graphics/RectF;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "rect"
    .parameter "name"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    .line 473
    iput-object p2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    .line 474
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 394
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->stop()V

    .line 396
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 398
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->stop()V

    .line 400
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    .line 401
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    .line 407
    :cond_28
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 408
    return-void
.end method

.method public enableAllowCrop(Z)V
    .registers 4
    .parameter "allowCrop"

    .prologue
    .line 525
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    if-eqz v0, :cond_e

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set crop after view has been laid out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_e
    if-nez p1, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v0, :cond_1c

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot unset crop mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_1c
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    .line 532
    return-void
.end method

.method public enableImageTransforms(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    .line 740
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-nez v0, :cond_9

    .line 741
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->resetTransformations()V

    .line 743
    :cond_9
    return-void
.end method

.method public getCroppedPhoto()Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/16 v7, 0x100

    const/high16 v6, 0x4380

    .line 538
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v5, :cond_a

    .line 539
    const/4 v0, 0x0

    .line 563
    :cond_9
    :goto_9
    return-object v0

    .line 542
    :cond_a
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    .local v0, croppedBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 547
    .local v1, croppedCanvas:Landroid/graphics/Canvas;
    sget v5, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropWidth:I

    int-to-float v5, v5

    div-float v4, v6, v5

    .line 548
    .local v4, scaleWidth:F
    sget v5, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropWidth:I

    int-to-float v5, v5

    div-float v3, v6, v5

    .line 551
    .local v3, scaleHeight:F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 552
    .local v2, matrix:Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 553
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 556
    sget v5, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sBackgroundColor:I

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 559
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_9

    .line 560
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 561
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 430
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVideoData()[B
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoData:[B

    return-object v0
.end method

.method public hideTagShape()V
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mShowTagShape:Z

    .line 491
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 492
    return-void
.end method

.method public interceptMoveLeft(FF)Z
    .registers 10
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-nez v5, :cond_7

    .line 351
    :cond_6
    :goto_6
    return v3

    .line 328
    :cond_7
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    #getter for: Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->access$000(Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v3, v4

    .line 330
    goto :goto_6

    .line 332
    :cond_11
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 333
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 334
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 336
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 337
    .local v2, viewWidth:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    const/4 v6, 0x2

    aget v1, v5, v6

    .line 338
    .local v1, transX:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v6

    .line 340
    .local v0, drawWidth:F
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v5, :cond_6

    cmpg-float v5, v0, v2

    if-lez v5, :cond_6

    .line 343
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_6

    .line 346
    add-float v3, v0, v1

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4f

    move v3, v4

    .line 348
    goto :goto_6

    :cond_4f
    move v3, v4

    .line 351
    goto :goto_6
.end method

.method public interceptMoveRight(FF)Z
    .registers 10
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-nez v5, :cond_7

    .line 384
    :cond_6
    :goto_6
    return v3

    .line 361
    :cond_7
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    #getter for: Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->access$000(Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v3, v4

    .line 363
    goto :goto_6

    .line 365
    :cond_11
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 366
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 367
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 369
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 370
    .local v2, viewWidth:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    const/4 v6, 0x2

    aget v1, v5, v6

    .line 371
    .local v1, transX:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v6

    .line 373
    .local v0, drawWidth:F
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v5, :cond_6

    cmpg-float v5, v0, v2

    if-lez v5, :cond_6

    .line 376
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-nez v5, :cond_49

    move v3, v4

    .line 378
    goto :goto_6

    .line 379
    :cond_49
    add-float v5, v0, v1

    cmpl-float v5, v2, v5

    if-gez v5, :cond_6

    move v3, v4

    .line 384
    goto :goto_6
.end method

.method public isPhotoSet()Z
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isVideo()Z
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoData:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    .line 223
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    if-eqz v2, :cond_30

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v2, :cond_30

    .line 224
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapDebounce:Z

    if-nez v2, :cond_2d

    .line 225
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v0

    .line 226
    .local v0, currentScale:F
    const/high16 v2, 0x3fc0

    mul-float v1, v0, v2

    .line 229
    .local v1, targetScale:F
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 230
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMaxScale:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->start(FFFF)Z

    .line 234
    .end local v0           #currentScale:F
    .end local v1           #targetScale:F
    :cond_2d
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapDebounce:Z

    .line 236
    :cond_30
    const/4 v2, 0x1

    return v2
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_9

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 279
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26
    .parameter "canvas"

    .prologue
    .line 596
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 598
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_108

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v21

    .line 603
    .local v21, saveCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_26

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 608
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 610
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoData:[B

    if-eqz v2, :cond_64

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v2

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v2, v7

    div-int/lit8 v16, v2, 0x2

    .line 614
    .local v16, drawLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v2

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v2, v7

    div-int/lit8 v17, v2, 0x2

    .line 615
    .local v17, drawTop:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoImage:Landroid/graphics/Bitmap;

    move/from16 v0, v16

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 619
    .end local v16           #drawLeft:I
    .end local v17           #drawTop:I
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_84

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 623
    :cond_84
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mShowTagShape:Z

    if-eqz v2, :cond_f0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    if-eqz v2, :cond_f0

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v18

    .line 625
    .local v18, drawWidth:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v15

    .line 627
    .local v15, drawHeight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float v3, v2, v7

    .line 628
    .local v3, tagLeft:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float v4, v2, v7

    .line 629
    .local v4, tagTop:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float v5, v2, v7

    .line 630
    .local v5, tagRight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float v6, v2, v7

    .line 632
    .local v6, tagBottom:F
    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 634
    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->drawTagName(Landroid/graphics/Canvas;FFFF)V

    .line 637
    .end local v3           #tagLeft:F
    .end local v4           #tagTop:F
    .end local v5           #tagRight:F
    .end local v6           #tagBottom:F
    .end local v15           #drawHeight:F
    .end local v18           #drawWidth:F
    :cond_f0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v2, :cond_108

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_108

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 643
    .end local v21           #saveCount:I
    :cond_108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayBottomPadding:I

    sub-int v23, v2, v7

    .line 645
    .local v23, yPos:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-eqz v2, :cond_180

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentCount:I

    if-lez v2, :cond_180

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v2, :cond_180

    .line 647
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v2, v7

    float-to-int v14, v2

    .line 649
    .local v14, commentTextHeight:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 651
    .local v13, commentHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayRightPadding:I

    sub-int/2addr v2, v7

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountTextWidth:I

    sub-int v22, v2, v7

    .line 653
    .local v22, xPos:I
    sub-int v23, v23, v13

    .line 654
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v22

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 657
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountLeftMargin:I

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    sub-int v22, v22, v2

    .line 658
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v22

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 660
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBottomMargin:I

    sub-int v23, v23, v2

    .line 663
    .end local v13           #commentHeight:I
    .end local v14           #commentTextHeight:I
    .end local v22           #xPos:I
    :cond_180
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-eqz v2, :cond_1f4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneCount:I

    if-lez v2, :cond_1f4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v2, :cond_1f4

    .line 665
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v20, v0

    .line 667
    .local v20, plusOneTextHeight:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 669
    .local v19, plusOneHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayRightPadding:I

    sub-int/2addr v2, v7

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountTextWidth:I

    sub-int v22, v2, v7

    .line 671
    .restart local v22       #xPos:I
    sub-int v23, v23, v19

    .line 672
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v22

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 675
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountLeftMargin:I

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    sub-int v22, v22, v2

    .line 676
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneIconRightPaddingHack:I

    sub-int v22, v22, v2

    .line 677
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v22

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 679
    .end local v19           #plusOneHeight:I
    .end local v20           #plusOneTextHeight:I
    .end local v22           #xPos:I
    :cond_1f4
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->start(FF)Z

    .line 287
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 683
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    .line 685
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v12

    .line 686
    .local v12, layoutWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v11

    .line 688
    .local v11, layoutHeight:I
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v12, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v11, :cond_6f

    .line 690
    :cond_26
    sget v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropWidth:I

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 691
    .local v10, cropWidth:I
    sub-int v0, v12, v10

    div-int/lit8 v7, v0, 0x2

    .line 692
    .local v7, cropLeft:I
    sub-int v0, v11, v10

    div-int/lit8 v9, v0, 0x2

    .line 693
    .local v9, cropTop:I
    add-int v8, v7, v10

    .line 694
    .local v8, cropRight:I
    add-int v6, v9, v10

    .line 698
    .local v6, cropBottom:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 699
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    .line 700
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlay:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 701
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlayCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v4, v11

    sget-object v5, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 702
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 703
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 705
    .end local v6           #cropBottom:I
    .end local v7           #cropLeft:I
    .end local v8           #cropRight:I
    .end local v9           #cropTop:I
    .end local v10           #cropWidth:I
    :cond_6f
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->configureBounds(Z)V

    .line 706
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 260
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 710
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 711
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 713
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setMeasuredDimension(II)V

    .line 717
    :goto_19
    return-void

    .line 715
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_19
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .parameter "detector"

    .prologue
    .line 292
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v2, :cond_1c

    .line 293
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    .line 294
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v0

    .line 295
    .local v0, currentScale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v0, v2

    .line 296
    .local v1, newScale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->scale(FFF)V

    .line 298
    .end local v0           #currentScale:F
    .end local v1           #newScale:F
    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 303
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_c

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->stop()V

    .line 305
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    .line 307
    :cond_c
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 3
    .parameter "detector"

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    if-eqz v0, :cond_e

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapDebounce:Z

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->resetTransformations()V

    .line 316
    :cond_e
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_9

    .line 269
    neg-float v0, p3

    neg-float v1, p4

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->translate(FF)V

    .line 271
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 264
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    if-nez v0, :cond_d

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 249
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public resetTransformations()V
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 577
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 578
    return-void
.end method

.method public setCommentCount(I)V
    .registers 2
    .parameter "commentCount"

    .prologue
    .line 437
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentCount:I

    .line 438
    return-void
.end method

.method public setFixedHeight(I)V
    .registers 6
    .parameter "fixedHeight"

    .prologue
    const/4 v1, 0x1

    .line 725
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    if-eq p1, v2, :cond_1a

    move v0, v1

    .line 726
    .local v0, adjustBounds:Z
    :goto_6
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 727
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setMeasuredDimension(II)V

    .line 728
    if-eqz v0, :cond_19

    .line 729
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->configureBounds(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->requestLayout()V

    .line 732
    :cond_19
    return-void

    .line 725
    .end local v0           #adjustBounds:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setFullScreen(ZZ)V
    .registers 4
    .parameter "fullScreen"
    .parameter "animate"

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-eq p1, v0, :cond_1f

    .line 508
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    .line 509
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-nez v0, :cond_19

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->stop()V

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->stop()V

    .line 514
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->requestLayout()V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 517
    :cond_1f
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 321
    return-void
.end method

.method public setPlusOneCount(I)V
    .registers 2
    .parameter "plusOneCount"

    .prologue
    .line 444
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneCount:I

    .line 445
    return-void
.end method

.method public setVideoData([B)V
    .registers 2
    .parameter "videoData"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoData:[B

    .line 452
    return-void
.end method

.method public showTagShape()V
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mShowTagShape:Z

    .line 482
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 483
    return-void
.end method
