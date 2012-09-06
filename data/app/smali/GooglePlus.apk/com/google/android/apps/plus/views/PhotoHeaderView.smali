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
        Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;,
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

.field private static sCropSize:I

.field private static sHasMultitouchDistinct:Z

.field private static sInitialized:Z

.field private static sPhotoOverlayBottomPadding:I

.field private static sPhotoOverlayRightPadding:I

.field private static sPlusOneBitmap:Landroid/graphics/Bitmap;

.field private static sPlusOneBottomMargin:I

.field private static sPlusOneCountLeftMargin:I

.field private static sPlusOneCountPaint:Landroid/text/TextPaint;

.field private static sPlusOneCountTextWidth:I

.field private static sTagPaint:Landroid/graphics/Paint;

.field private static sTagTextBackgroundPaint:Landroid/graphics/Paint;

.field private static sTagTextPadding:I

.field private static sTagTextPaint:Landroid/text/TextPaint;

.field private static sVideoImage:Landroid/graphics/Bitmap;

.field private static sVideoNotReadyImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAllowCrop:Z

.field private mCommentText:Ljava/lang/String;

.field private mCropRect:Landroid/graphics/Rect;

.field private mCropSize:I

.field private mDoubleTapDebounce:Z

.field private mDoubleTapToZoomEnabled:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mExternalClickListener:Landroid/view/View$OnClickListener;

.field private mFixedHeight:I

.field private mFlingDebounce:Z

.field private mFullScreen:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHaveLayout:Z

.field private mIsDoubleTouch:Z

.field private mLastTwoFingerUp:J

.field private mLoading:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxScale:F

.field private mMinScale:F

.field private mOriginalMatrix:Landroid/graphics/Matrix;

.field private mPerformingScale:Z

.field private mPlusOneText:Ljava/lang/String;

.field private mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

.field private mRotation:F

.field private mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

.field private mShowTagShape:Z

.field private mSnapRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;

.field private mTagName:Ljava/lang/CharSequence;

.field private mTagNameBackground:Landroid/graphics/RectF;

.field private mTagShape:Landroid/graphics/RectF;

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mTransformsEnabled:Z

.field private mTranslateRect:Landroid/graphics/RectF;

.field private mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

.field private mValues:[F

.field private mVideoBlob:[B

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    .line 216
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    .line 218
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    .line 226
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->initialize()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    .line 216
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    .line 218
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    .line 231
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->initialize()V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    .line 216
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    .line 218
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    .line 236
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->initialize()V

    .line 237
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/PhotoHeaderView;FFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->scale(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/PhotoHeaderView;FF)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->translate(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->snap()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/views/PhotoHeaderView;FZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->rotate(FZ)V

    return-void
.end method

.method private configureBounds(Z)V
    .registers 9
    .parameter "changed"

    .prologue
    const/4 v5, 0x0

    .line 952
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    if-nez v6, :cond_a

    .line 979
    :cond_9
    :goto_9
    return-void

    .line 955
    :cond_a
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 956
    .local v1, dwidth:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 958
    .local v0, dheight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v4

    .line 959
    .local v4, vwidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v3

    .line 961
    .local v3, vheight:I
    if-ltz v1, :cond_22

    if-ne v4, v1, :cond_51

    :cond_22
    if-ltz v0, :cond_26

    if-ne v3, v0, :cond_51

    :cond_26
    const/4 v2, 0x1

    .line 965
    .local v2, fits:Z
    :goto_27
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v5, v5, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 968
    if-nez p1, :cond_3d

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_43

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_43

    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    if-eqz v5, :cond_43

    .line 969
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->generateMatrix()V

    .line 970
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->generateScale()V

    .line 973
    :cond_43
    if-nez v2, :cond_4d

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 975
    :cond_4d
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_9

    .end local v2           #fits:Z
    :cond_51
    move v2, v5

    .line 961
    goto :goto_27

    .line 977
    .restart local v2       #fits:Z
    :cond_53
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
    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    .line 946
    :goto_6
    return-void

    .line 905
    :cond_7
    const/high16 v1, 0x4000

    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    int-to-float v2, v2

    mul-float v18, v1, v2

    .line 907
    .local v18, textPadding:F
    sub-float v1, p4, p2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float v17, p2, v1

    .line 909
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

    .line 910
    .local v16, nameWidth:F
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v8, v1, v2

    .line 912
    .local v8, nameHeight:F
    add-float v14, v16, v18

    .line 913
    .local v14, nameRectWidth:F
    add-float v10, v8, v18

    .line 916
    .local v10, nameRectHeight:F
    const/high16 v1, 0x4000

    div-float v1, v14, v1

    sub-float v11, v17, v1

    .line 917
    .local v11, nameRectLeft:F
    const/4 v1, 0x0

    cmpg-float v1, v11, v1

    if-gez v1, :cond_46

    .line 919
    const/4 v11, 0x0

    .line 921
    :cond_46
    add-float v12, v11, v14

    .line 922
    .local v12, nameRectRight:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v12, v1

    if-lez v1, :cond_55

    .line 923
    move/from16 v12, p4

    .line 924
    sub-float v11, v12, v14

    .line 927
    :cond_55
    move/from16 v13, p5

    .line 928
    .local v13, nameRectTop:F
    add-float v9, v13, v10

    .line 930
    .local v9, nameRectBottom:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v19

    .line 931
    .local v19, vheight:I
    move/from16 v0, v19

    int-to-float v1, v0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_68

    .line 933
    move/from16 v9, p3

    .line 934
    sub-float v13, v9, v10

    .line 938
    :cond_68
    sget v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    int-to-float v1, v1

    add-float v5, v11, v1

    .line 939
    .local v5, nameLeft:F
    sget v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    int-to-float v1, v1

    add-float v15, v13, v1

    .line 941
    .local v15, nameTop:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    invoke-virtual {v1, v11, v13, v12, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagNameBackground:Landroid/graphics/RectF;

    const/high16 v2, 0x4040

    const/high16 v3, 0x4040

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 944
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

.method private generateMatrix()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 986
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 987
    .local v1, dwidth:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 989
    .local v0, dheight:I
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v5, :cond_35

    sget v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropSize:I

    .line 990
    .local v4, vwidth:I
    :goto_13
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v5, :cond_3a

    sget v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropSize:I

    .line 992
    .local v3, vheight:I
    :goto_19
    if-ltz v1, :cond_1d

    if-ne v4, v1, :cond_3f

    :cond_1d
    if-ltz v0, :cond_21

    if-ne v3, v0, :cond_3f

    :cond_21
    const/4 v2, 0x1

    .line 996
    .local v2, fits:Z
    :goto_22
    if-eqz v2, :cond_41

    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v5, :cond_41

    .line 997
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1008
    :goto_2d
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1009
    return-void

    .line 989
    .end local v2           #fits:Z
    .end local v3           #vheight:I
    .end local v4           #vwidth:I
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v4

    goto :goto_13

    .line 990
    .restart local v4       #vwidth:I
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v3

    goto :goto_19

    .line 992
    .restart local v3       #vheight:I
    :cond_3f
    const/4 v2, 0x0

    goto :goto_22

    .line 1000
    .restart local v2       #fits:Z
    :cond_41
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1001
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v5, :cond_5f

    .line 1002
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1006
    :goto_53
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2d

    .line 1004
    :cond_5f
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v6, v4

    int-to-float v7, v3

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_53
.end method

.method private generateScale()V
    .registers 7

    .prologue
    const/high16 v5, 0x4100

    .line 1012
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 1013
    .local v1, dwidth:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 1015
    .local v0, dheight:I
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v4, :cond_34

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getCropSize()I

    move-result v3

    .line 1016
    .local v3, vwidth:I
    :goto_16
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v4, :cond_39

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getCropSize()I

    move-result v2

    .line 1018
    .local v2, vheight:I
    :goto_1e
    if-ge v1, v3, :cond_3e

    if-ge v0, v2, :cond_3e

    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v4, :cond_3e

    .line 1019
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    .line 1023
    :goto_2a
    iget v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    mul-float/2addr v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMaxScale:F

    .line 1024
    return-void

    .line 1015
    .end local v2           #vheight:I
    .end local v3           #vwidth:I
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v3

    goto :goto_16

    .line 1016
    .restart local v3       #vwidth:I
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v2

    goto :goto_1e

    .line 1021
    .restart local v2       #vheight:I
    :cond_3e
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    goto :goto_2a
.end method

.method private getCropSize()I
    .registers 2

    .prologue
    .line 1030
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropSize:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropSize:I

    :goto_6
    return v0

    :cond_7
    sget v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropSize:I

    goto :goto_6
.end method

.method private getScale()F
    .registers 3

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1040
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private initialize()V
    .registers 10

    .prologue
    const v8, 0x7f0d00cd

    const v7, 0x7f0d00c5

    const v5, 0x7f0d00c4

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1216
    .local v0, context:Landroid/content/Context;
    sget-boolean v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sInitialized:Z

    if-nez v3, :cond_1d1

    .line 1217
    sput-boolean v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sInitialized:Z

    .line 1219
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1222
    .local v1, resources:Landroid/content/res/Resources;
    const v3, 0x7f020155

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    .line 1224
    const v3, 0x7f020156

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    .line 1225
    const v3, 0x7f020241

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 1226
    const v3, 0x7f0200e1

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoNotReadyImage:Landroid/graphics/Bitmap;

    .line 1230
    const v3, 0x7f0a0062

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sBackgroundColor:I

    .line 1233
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 1234
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1235
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v4, 0x7f0a0070

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1236
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1238
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 1241
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 1242
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1243
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v4, 0x7f0a006f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1244
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1246
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 1249
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    .line 1250
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1251
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    const v4, 0x7f0a0063

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1252
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1253
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    const v4, 0x7f0d00d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1254
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagPaint:Landroid/graphics/Paint;

    const v4, 0x7f0d00d1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v5, 0x7f0a0064

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1257
    const v3, 0x7f0d00b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropSize:I

    .line 1259
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    .line 1260
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1261
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    const v4, 0x7f0a0075

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1262
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1264
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    .line 1265
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1266
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    const v4, 0x7f0a0076

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1267
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1268
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    const v4, 0x7f0d00b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1270
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    .line 1271
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1272
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    const v4, 0x7f0a0065

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1273
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1274
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1275
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v6, v6, v6, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1276
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 1278
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    .line 1279
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    const v4, 0x7f0a0066

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1281
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextBackgroundPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1284
    const v3, 0x7f0d00b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayRightPadding:I

    .line 1286
    const v3, 0x7f0d00b5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayBottomPadding:I

    .line 1288
    const v3, 0x7f0d00ba

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountLeftMargin:I

    .line 1290
    const v3, 0x7f0d00bb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountTextWidth:I

    .line 1292
    const v3, 0x7f0d00bf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountLeftMargin:I

    .line 1294
    const v3, 0x7f0d00c0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountTextWidth:I

    .line 1296
    const v3, 0x7f0d00be

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBottomMargin:I

    .line 1298
    const v3, 0x7f0d00d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sTagTextPadding:I

    .line 1301
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sHasMultitouchDistinct:Z

    .line 1305
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_1d1
    new-instance v3, Landroid/view/GestureDetector;

    const/4 v4, 0x0

    sget-boolean v5, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sHasMultitouchDistinct:Z

    if-nez v5, :cond_201

    :goto_1d8
    invoke-direct {v3, v0, p0, v4, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1306
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-direct {v2, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    .line 1307
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;-><init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    .line 1308
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;-><init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    .line 1309
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;-><init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mSnapRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;

    .line 1310
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;-><init>(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    .line 1311
    return-void

    .line 1305
    :cond_201
    const/4 v2, 0x0

    goto :goto_1d8
.end method

.method private rotate(FZ)V
    .registers 6
    .parameter "degrees"
    .parameter "animate"

    .prologue
    .line 1201
    if-eqz p2, :cond_8

    .line 1202
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->start(F)V

    .line 1208
    :goto_7
    return-void

    .line 1204
    :cond_8
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    .line 1205
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

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    goto :goto_7
.end method

.method private scale(FFF)V
    .registers 10
    .parameter "newScale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1058
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1061
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1062
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMaxScale:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1064
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v0

    .line 1065
    .local v0, currentScale:F
    div-float v1, p1, v0

    .line 1068
    .local v1, factor:F
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1071
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->snap()V

    .line 1074
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotation:F

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 1077
    return-void
.end method

.method private snap()V
    .registers 16

    .prologue
    const/high16 v14, 0x41a0

    const/high16 v13, 0x4000

    const/4 v10, 0x0

    .line 1143
    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1144
    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v12, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1147
    iget-boolean v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v11, :cond_7d

    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v3, v11

    .line 1148
    .local v3, maxLeft:F
    :goto_1c
    iget-boolean v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v11, :cond_7f

    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v11

    .line 1149
    .local v4, maxRight:F
    :goto_25
    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 1150
    .local v1, l:F
    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v11, Landroid/graphics/RectF;->right:F

    .line 1153
    .local v6, r:F
    sub-float v11, v6, v1

    sub-float v12, v4, v3

    cmpg-float v11, v11, v12

    if-gez v11, :cond_85

    .line 1155
    sub-float v11, v4, v3

    add-float v12, v6, v1

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    add-float v8, v3, v11

    .line 1167
    .local v8, translateX:F
    :goto_3d
    iget-boolean v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v11, :cond_95

    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v10

    .line 1168
    .local v5, maxTop:F
    :goto_46
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v10, :cond_97

    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v10

    .line 1169
    .local v2, maxBottom:F
    :goto_4f
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v10, Landroid/graphics/RectF;->top:F

    .line 1170
    .local v7, t:F
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 1173
    .local v0, b:F
    sub-float v10, v0, v7

    sub-float v11, v2, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9d

    .line 1175
    sub-float v10, v2, v5

    add-float v11, v0, v7

    sub-float/2addr v10, v11

    div-float/2addr v10, v13

    add-float v9, v5, v10

    .line 1186
    .local v9, translateY:F
    :goto_67
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v14

    if-gtz v10, :cond_77

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v14

    if-lez v10, :cond_ad

    .line 1187
    :cond_77
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mSnapRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;

    invoke-virtual {v10, v8, v9}, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->start(FF)Z

    .line 1192
    :goto_7c
    return-void

    .end local v0           #b:F
    .end local v1           #l:F
    .end local v2           #maxBottom:F
    .end local v3           #maxLeft:F
    .end local v4           #maxRight:F
    .end local v5           #maxTop:F
    .end local v6           #r:F
    .end local v7           #t:F
    .end local v8           #translateX:F
    .end local v9           #translateY:F
    :cond_7d
    move v3, v10

    .line 1147
    goto :goto_1c

    .line 1148
    .restart local v3       #maxLeft:F
    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v11

    int-to-float v4, v11

    goto :goto_25

    .line 1156
    .restart local v1       #l:F
    .restart local v4       #maxRight:F
    .restart local v6       #r:F
    :cond_85
    cmpl-float v11, v1, v3

    if-lez v11, :cond_8c

    .line 1158
    sub-float v8, v3, v1

    .restart local v8       #translateX:F
    goto :goto_3d

    .line 1159
    .end local v8           #translateX:F
    :cond_8c
    cmpg-float v11, v6, v4

    if-gez v11, :cond_93

    .line 1161
    sub-float v8, v4, v6

    .restart local v8       #translateX:F
    goto :goto_3d

    .line 1163
    .end local v8           #translateX:F
    :cond_93
    const/4 v8, 0x0

    .restart local v8       #translateX:F
    goto :goto_3d

    :cond_95
    move v5, v10

    .line 1167
    goto :goto_46

    .line 1168
    .restart local v5       #maxTop:F
    :cond_97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v10

    int-to-float v2, v10

    goto :goto_4f

    .line 1176
    .restart local v0       #b:F
    .restart local v2       #maxBottom:F
    .restart local v7       #t:F
    :cond_9d
    cmpl-float v10, v7, v5

    if-lez v10, :cond_a4

    .line 1178
    sub-float v9, v5, v7

    .restart local v9       #translateY:F
    goto :goto_67

    .line 1179
    .end local v9           #translateY:F
    :cond_a4
    cmpg-float v10, v0, v2

    if-gez v10, :cond_ab

    .line 1181
    sub-float v9, v2, v0

    .restart local v9       #translateY:F
    goto :goto_67

    .line 1183
    .end local v9           #translateY:F
    :cond_ab
    const/4 v9, 0x0

    .restart local v9       #translateY:F
    goto :goto_67

    .line 1189
    :cond_ad
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1190
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    goto :goto_7c
.end method

.method private translate(FF)Z
    .registers 15
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 1090
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1091
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1093
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v10, :cond_84

    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v10

    .line 1094
    .local v3, maxLeft:F
    :goto_17
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v10, :cond_86

    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v4, v10

    .line 1095
    .local v4, maxRight:F
    :goto_20
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 1096
    .local v1, l:F
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v10, Landroid/graphics/RectF;->right:F

    .line 1099
    .local v6, r:F
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v10, :cond_8c

    .line 1101
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float v10, v3, v10

    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float v11, v4, v11

    invoke-static {v11, p1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1112
    .local v8, translateX:F
    :goto_40
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v10, :cond_ac

    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v10

    .line 1113
    .local v5, maxTop:F
    :goto_49
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v10, :cond_ae

    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v10

    .line 1114
    .local v2, maxBottom:F
    :goto_52
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v10, Landroid/graphics/RectF;->top:F

    .line 1115
    .local v7, t:F
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 1119
    .local v0, b:F
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v10, :cond_b4

    .line 1121
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v5, v10

    iget-object v11, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float v11, v2, v11

    invoke-static {v11, p2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1133
    .local v9, translateY:F
    :goto_72
    iget-object v10, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1134
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 1136
    cmpl-float v10, v8, p1

    if-nez v10, :cond_d4

    cmpl-float v10, v9, p2

    if-nez v10, :cond_d4

    const/4 v10, 0x1

    :goto_83
    return v10

    .line 1093
    .end local v0           #b:F
    .end local v1           #l:F
    .end local v2           #maxBottom:F
    .end local v3           #maxLeft:F
    .end local v4           #maxRight:F
    .end local v5           #maxTop:F
    .end local v6           #r:F
    .end local v7           #t:F
    .end local v8           #translateX:F
    .end local v9           #translateY:F
    :cond_84
    const/4 v3, 0x0

    goto :goto_17

    .line 1094
    .restart local v3       #maxLeft:F
    :cond_86
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v10

    int-to-float v4, v10

    goto :goto_20

    .line 1105
    .restart local v1       #l:F
    .restart local v4       #maxRight:F
    .restart local v6       #r:F
    :cond_8c
    sub-float v10, v6, v1

    sub-float v11, v4, v3

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9f

    .line 1106
    sub-float v10, v4, v3

    add-float v11, v6, v1

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v8, v3, v10

    .restart local v8       #translateX:F
    goto :goto_40

    .line 1108
    .end local v8           #translateX:F
    :cond_9f
    sub-float v10, v4, v6

    sub-float v11, v3, v1

    invoke-static {v11, p1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .restart local v8       #translateX:F
    goto :goto_40

    .line 1112
    :cond_ac
    const/4 v5, 0x0

    goto :goto_49

    .line 1113
    .restart local v5       #maxTop:F
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v10

    int-to-float v2, v10

    goto :goto_52

    .line 1125
    .restart local v0       #b:F
    .restart local v2       #maxBottom:F
    .restart local v7       #t:F
    :cond_b4
    sub-float v10, v0, v7

    sub-float v11, v2, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c7

    .line 1126
    sub-float v10, v2, v5

    add-float v11, v0, v7

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v9, v5, v10

    .restart local v9       #translateY:F
    goto :goto_72

    .line 1128
    .end local v9           #translateY:F
    :cond_c7
    sub-float v10, v2, v0

    sub-float v11, v5, v7

    invoke-static {v11, p2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .restart local v9       #translateY:F
    goto :goto_72

    .line 1136
    :cond_d4
    const/4 v10, 0x0

    goto :goto_83
.end method


# virtual methods
.method public bindPhoto(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "photoBitmap"

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, changed:Z
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2f

    .line 481
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 482
    .local v1, drawableBitmap:Landroid/graphics/Bitmap;
    if-ne p1, v1, :cond_e

    .line 502
    .end local v1           #drawableBitmap:Landroid/graphics/Bitmap;
    :goto_d
    return-void

    .line 487
    .restart local v1       #drawableBitmap:Landroid/graphics/Bitmap;
    :cond_e
    if-eqz p1, :cond_47

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_28

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_47

    :cond_28
    const/4 v0, 0x1

    .line 492
    :goto_29
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    .line 493
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 496
    .end local v1           #drawableBitmap:Landroid/graphics/Bitmap;
    :cond_2f
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_40

    if-eqz p1, :cond_40

    .line 497
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 500
    :cond_40
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->configureBounds(Z)V

    .line 501
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    goto :goto_d

    .line 487
    .restart local v1       #drawableBitmap:Landroid/graphics/Bitmap;
    :cond_47
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public bindTagData(Landroid/graphics/RectF;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "rect"
    .parameter "name"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    .line 601
    iput-object p2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagName:Ljava/lang/CharSequence;

    .line 602
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 458
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 459
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    .line 460
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->stop()V

    .line 462
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 464
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    .line 465
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mSnapRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->stop()V

    .line 466
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mSnapRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->stop()V

    .line 468
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    .line 469
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 471
    return-void
.end method

.method public enableAllowCrop(Z)V
    .registers 4
    .parameter "allowCrop"

    .prologue
    .line 667
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    if-eqz v0, :cond_e

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set crop after view has been laid out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_e
    if-nez p1, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v0, :cond_1c

    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot unset crop mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_1c
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    .line 674
    return-void
.end method

.method public enableImageTransforms(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    .line 888
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-nez v0, :cond_9

    .line 889
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->resetTransformations()V

    .line 891
    :cond_9
    return-void
.end method

.method public getCroppedPhoto()Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/16 v7, 0x100

    const/high16 v8, 0x4380

    .line 680
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v6, :cond_a

    .line 681
    const/4 v1, 0x0

    .line 706
    :cond_9
    :goto_9
    return-object v1

    .line 684
    :cond_a
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 686
    .local v1, croppedBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 689
    .local v2, croppedCanvas:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 690
    .local v0, cropWidth:I
    int-to-float v6, v0

    div-float v5, v8, v6

    .line 691
    .local v5, scaleWidth:F
    int-to-float v6, v0

    div-float v4, v8, v6

    .line 694
    .local v4, scaleHeight:F
    new-instance v3, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-direct {v3, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 695
    .local v3, matrix:Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 696
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 699
    sget v6, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sBackgroundColor:I

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 702
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_9

    .line 703
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 704
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 511
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVideoData()[B
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoBlob:[B

    return-object v0
.end method

.method public hideTagShape()V
    .registers 2

    .prologue
    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mShowTagShape:Z

    .line 619
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 620
    return-void
.end method

.method public interceptMoveLeft(FF)Z
    .registers 10
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 389
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-nez v5, :cond_7

    .line 415
    :cond_6
    :goto_6
    return v3

    .line 392
    :cond_7
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    #getter for: Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->access$000(Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v3, v4

    .line 394
    goto :goto_6

    .line 396
    :cond_11
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 397
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 398
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 400
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 401
    .local v2, viewWidth:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    const/4 v6, 0x2

    aget v1, v5, v6

    .line 402
    .local v1, transX:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v6

    .line 404
    .local v0, drawWidth:F
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v5, :cond_6

    cmpg-float v5, v0, v2

    if-lez v5, :cond_6

    .line 407
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_6

    .line 410
    add-float v3, v0, v1

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4f

    move v3, v4

    .line 412
    goto :goto_6

    :cond_4f
    move v3, v4

    .line 415
    goto :goto_6
.end method

.method public interceptMoveRight(FF)Z
    .registers 10
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-nez v5, :cond_7

    .line 448
    :cond_6
    :goto_6
    return v3

    .line 425
    :cond_7
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    #getter for: Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->access$000(Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v3, v4

    .line 427
    goto :goto_6

    .line 429
    :cond_11
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 430
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 431
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 433
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 434
    .local v2, viewWidth:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mValues:[F

    const/4 v6, 0x2

    aget v1, v5, v6

    .line 435
    .local v1, transX:F
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v6

    .line 437
    .local v0, drawWidth:F
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v5, :cond_6

    cmpg-float v5, v0, v2

    if-lez v5, :cond_6

    .line 440
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-nez v5, :cond_49

    move v3, v4

    .line 442
    goto :goto_6

    .line 443
    :cond_49
    add-float v5, v0, v1

    cmpl-float v5, v2, v5

    if-gez v5, :cond_6

    move v3, v4

    .line 448
    goto :goto_6
.end method

.method public isPhotoBound()Z
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPhotoLoading()Z
    .registers 2

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mLoading:Z

    return v0
.end method

.method public isVideo()Z
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoBlob:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isVideoReady()Z
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoBlob:[B

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoReady:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    .line 277
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapToZoomEnabled:Z

    if-eqz v2, :cond_30

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v2, :cond_30

    .line 278
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapDebounce:Z

    if-nez v2, :cond_2d

    .line 279
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v0

    .line 280
    .local v0, currentScale:F
    const/high16 v2, 0x3fc0

    mul-float v1, v0, v2

    .line 283
    .local v1, targetScale:F
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMinScale:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 284
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMaxScale:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->start(FFFF)Z

    .line 288
    .end local v0           #currentScale:F
    .end local v1           #targetScale:F
    :cond_2d
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapDebounce:Z

    .line 290
    :cond_30
    const/4 v2, 0x1

    return v2
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_e

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mSnapRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$SnapRunnable;->stop()V

    .line 337
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28
    .parameter "canvas"

    .prologue
    .line 739
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 741
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_147

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v22

    .line 746
    .local v22, saveCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_26

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 751
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 753
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoBlob:[B

    if-eqz v2, :cond_68

    .line 756
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoReady:Z

    if-eqz v2, :cond_228

    sget-object v23, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 757
    .local v23, videoImage:Landroid/graphics/Bitmap;
    :goto_44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v2, v7

    div-int/lit8 v16, v2, 0x2

    .line 758
    .local v16, drawLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v2, v7

    div-int/lit8 v17, v2, 0x2

    .line 759
    .local v17, drawTop:I
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 763
    .end local v16           #drawLeft:I
    .end local v17           #drawTop:I
    .end local v23           #videoImage:Landroid/graphics/Bitmap;
    :cond_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_88

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 767
    :cond_88
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mShowTagShape:Z

    if-eqz v2, :cond_f4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    if-eqz v2, :cond_f4

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v18

    .line 769
    .local v18, drawWidth:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v15

    .line 771
    .local v15, drawHeight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float v3, v2, v7

    .line 772
    .local v3, tagLeft:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float v4, v2, v7

    .line 773
    .local v4, tagTop:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float v5, v2, v7

    .line 774
    .local v5, tagRight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTagShape:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float v6, v2, v7

    .line 776
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

    .line 778
    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->drawTagName(Landroid/graphics/Canvas;FFFF)V

    .line 781
    .end local v3           #tagLeft:F
    .end local v4           #tagTop:F
    .end local v5           #tagRight:F
    .end local v6           #tagBottom:F
    .end local v15           #drawHeight:F
    .end local v18           #drawWidth:F
    :cond_f4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v2, :cond_147

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v21

    .line 783
    .local v21, previousSaveCount:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v2

    int-to-float v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v2

    int-to-float v11, v2

    sget-object v12, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropDimPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_12c

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 791
    :cond_12c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 792
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 798
    .end local v21           #previousSaveCount:I
    .end local v22           #saveCount:I
    :cond_147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayBottomPadding:I

    sub-int v25, v2, v7

    .line 800
    .local v25, yPos:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-eqz v2, :cond_1bb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentText:Ljava/lang/String;

    if-eqz v2, :cond_1bb

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v2, :cond_1bb

    .line 802
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v2, v7

    float-to-int v14, v2

    .line 804
    .local v14, commentTextHeight:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 806
    .local v13, commentHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayRightPadding:I

    sub-int/2addr v2, v7

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountTextWidth:I

    sub-int v24, v2, v7

    .line 808
    .local v24, xPos:I
    sub-int v25, v25, v13

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentText:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v7, v0

    move/from16 v0, v25

    int-to-float v8, v0

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 812
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentCountLeftMargin:I

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    sub-int v24, v24, v2

    .line 813
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCommentBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v24

    int-to-float v7, v0

    move/from16 v0, v25

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 815
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBottomMargin:I

    sub-int v25, v25, v2

    .line 818
    .end local v13           #commentHeight:I
    .end local v14           #commentTextHeight:I
    .end local v24           #xPos:I
    :cond_1bb
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-eqz v2, :cond_227

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneText:Ljava/lang/String;

    if-eqz v2, :cond_227

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-nez v2, :cond_227

    .line 820
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v20, v0

    .line 822
    .local v20, plusOneTextHeight:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 824
    .local v19, plusOneHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPhotoOverlayRightPadding:I

    sub-int/2addr v2, v7

    sget v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountTextWidth:I

    sub-int v24, v2, v7

    .line 826
    .restart local v24       #xPos:I
    sub-int v25, v25, v19

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneText:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v7, v0

    move/from16 v0, v25

    int-to-float v8, v0

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 830
    sget v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneCountLeftMargin:I

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    sub-int v24, v24, v2

    .line 831
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v24

    int-to-float v7, v0

    move/from16 v0, v25

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 833
    .end local v19           #plusOneHeight:I
    .end local v20           #plusOneTextHeight:I
    .end local v24           #xPos:I
    :cond_227
    return-void

    .line 756
    .end local v25           #yPos:I
    .restart local v22       #saveCount:I
    :cond_228
    sget-object v23, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sVideoNotReadyImage:Landroid/graphics/Bitmap;

    goto/16 :goto_44
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPerformingScale:Z

    if-nez v0, :cond_14

    .line 343
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFlingDebounce:Z

    if-nez v0, :cond_11

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->start(FF)Z

    .line 346
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFlingDebounce:Z

    .line 348
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 837
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 838
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mHaveLayout:Z

    .line 839
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getWidth()I

    move-result v5

    .line 840
    .local v5, layoutWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getHeight()I

    move-result v4

    .line 842
    .local v4, layoutHeight:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mAllowCrop:Z

    if-eqz v6, :cond_37

    .line 843
    sget v6, Lcom/google/android/apps/plus/views/PhotoHeaderView;->sCropSize:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropSize:I

    .line 844
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropSize:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 845
    .local v1, cropLeft:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropSize:I

    sub-int v6, v4, v6

    div-int/lit8 v3, v6, 0x2

    .line 846
    .local v3, cropTop:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropSize:I

    add-int v2, v1, v6

    .line 847
    .local v2, cropRight:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropSize:I

    add-int v0, v3, v6

    .line 851
    .local v0, cropBottom:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 853
    .end local v0           #cropBottom:I
    .end local v1           #cropLeft:I
    .end local v2           #cropRight:I
    .end local v3           #cropTop:I
    :cond_37
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->configureBounds(Z)V

    .line 854
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 314
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 858
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 859
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 861
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setMeasuredDimension(II)V

    .line 865
    :goto_19
    return-void

    .line 863
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_19
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 7
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    .line 353
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v2, :cond_1f

    .line 354
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPerformingScale:Z

    .line 355
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    .line 356
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getScale()F

    move-result v0

    .line 357
    .local v0, currentScale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v0, v2

    .line 358
    .local v1, newScale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->scale(FFF)V

    .line 360
    .end local v0           #currentScale:F
    .end local v1           #newScale:F
    :cond_1f
    return v4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 365
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_c

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->stop()V

    .line 367
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    .line 369
    :cond_c
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 374
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    if-eqz v0, :cond_e

    .line 375
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mDoubleTapDebounce:Z

    .line 376
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->resetTransformations()V

    .line 378
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPerformingScale:Z

    .line 379
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFlingDebounce:Z

    .line 380
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mLastTwoFingerUp:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 324
    .local v0, timeSinceTwoFingerUp:J
    const-wide/16 v2, 0x190

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTransformsEnabled:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPerformingScale:Z

    if-nez v2, :cond_1e

    .line 326
    neg-float v2, p3

    neg-float v3, p4

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->translate(FF)Z

    .line 328
    :cond_1e
    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 318
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    if-nez v0, :cond_d

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 303
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mIsDoubleTouch:Z

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 241
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_a

    .line 272
    :cond_9
    :goto_9
    return v4

    .line 246
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 251
    .local v1, actionMasked:I
    packed-switch v1, :pswitch_data_4c

    .line 260
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 262
    .local v0, action:I
    packed-switch v0, :pswitch_data_52

    :pswitch_22
    goto :goto_9

    .line 265
    :pswitch_23
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    #getter for: Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->mRunning:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->access$000(Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 266
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->snap()V

    .line 268
    :cond_2e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPerformingScale:Z

    goto :goto_9

    .line 253
    .end local v0           #action:I
    :pswitch_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mLastTwoFingerUp:J

    goto :goto_1b

    .line 255
    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 256
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mLastTwoFingerUp:J

    goto :goto_1b

    .line 251
    nop

    :pswitch_data_4c
    .packed-switch 0x6
        :pswitch_32
    .end packed-switch

    .line 262
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public resetTransformations()V
    .registers 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 721
    return-void
.end method

.method public setCommentCount(I)V
    .registers 5
    .parameter "commentCount"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentText:Ljava/lang/String;

    .line 519
    .local v0, oldCommentText:Ljava/lang/String;
    if-gez p1, :cond_5

    .line 534
    :cond_4
    :goto_4
    return-void

    .line 523
    :cond_5
    if-nez p1, :cond_16

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentText:Ljava/lang/String;

    .line 531
    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 532
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    goto :goto_4

    .line 525
    :cond_16
    const/16 v1, 0x63

    if-le p1, v1, :cond_28

    .line 526
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentText:Ljava/lang/String;

    goto :goto_a

    .line 528
    :cond_28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mCommentText:Ljava/lang/String;

    goto :goto_a
.end method

.method public setFixedHeight(I)V
    .registers 6
    .parameter "fixedHeight"

    .prologue
    const/4 v1, 0x1

    .line 873
    iget v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    if-eq p1, v2, :cond_1a

    move v0, v1

    .line 874
    .local v0, adjustBounds:Z
    :goto_6
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    .line 875
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFixedHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setMeasuredDimension(II)V

    .line 876
    if-eqz v0, :cond_19

    .line 877
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->configureBounds(Z)V

    .line 878
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->requestLayout()V

    .line 880
    :cond_19
    return-void

    .line 873
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
    .line 649
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-eq p1, v0, :cond_1f

    .line 650
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    .line 651
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mFullScreen:Z

    if-nez v0, :cond_19

    .line 652
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mScaleRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$ScaleRunnable;->stop()V

    .line 653
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mTranslateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$TranslateRunnable;->stop()V

    .line 654
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mRotateRunnable:Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView$RotateRunnable;->stop()V

    .line 656
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->requestLayout()V

    .line 657
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 659
    :cond_1f
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 385
    return-void
.end method

.method public setPhotoLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mLoading:Z

    .line 641
    return-void
.end method

.method public setPlusOneCount(I)V
    .registers 5
    .parameter "plusOneCount"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneText:Ljava/lang/String;

    .line 541
    .local v0, oldPlusOneText:Ljava/lang/String;
    if-gez p1, :cond_5

    .line 558
    :cond_4
    :goto_4
    return-void

    .line 545
    :cond_5
    if-nez p1, :cond_16

    .line 546
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneText:Ljava/lang/String;

    .line 555
    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 556
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    goto :goto_4

    .line 548
    :cond_16
    const/16 v1, 0x63

    if-le p1, v1, :cond_28

    .line 549
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneText:Ljava/lang/String;

    goto :goto_a

    .line 551
    :cond_28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mPlusOneText:Ljava/lang/String;

    goto :goto_a
.end method

.method public setVideoBlob([B)V
    .registers 5
    .parameter "videoBlob"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoBlob:[B

    .line 565
    if-eqz p1, :cond_17

    .line 567
    :try_start_4
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    .line 568
    .local v0, proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v1

    .line 569
    .local v1, status:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-eq v1, v2, :cond_14

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-ne v1, v2, :cond_18

    :cond_14
    const/4 v2, 0x1

    :goto_15
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mVideoReady:Z
    :try_end_17
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_17} :catch_1a

    .line 573
    .end local v0           #proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .end local v1           #status:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    :cond_17
    :goto_17
    return-void

    .line 569
    .restart local v0       #proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .restart local v1       #status:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    :cond_18
    const/4 v2, 0x0

    goto :goto_15

    .line 570
    .end local v0           #proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .end local v1           #status:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    :catch_1a
    move-exception v2

    goto :goto_17
.end method

.method public showTagShape()V
    .registers 2

    .prologue
    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoHeaderView;->mShowTagShape:Z

    .line 610
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    .line 611
    return-void
.end method
