.class public Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
.super Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.source "AxT9KeyboardHwrView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    }
.end annotation


# static fields
.field static STATUSBAR_HEIGHT:I


# instance fields
.field final POST_HWR_RECOGNIZE_TIME:I

.field private isHWRDrawing:Z

.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mHwrBox1RectArea:Landroid/graphics/Rect;

.field private mHwrBox2RectArea:Landroid/graphics/Rect;

.field private mHwrBox3RectArea:Landroid/graphics/Rect;

.field private mHwrBox4RectArea:Landroid/graphics/Rect;

.field private mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

.field private mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

.field mHwrDrawingX:F

.field mHwrDrawingY:F

.field mHwrKeyIndex:I

.field private mHwrPaint:Landroid/graphics/Paint;

.field private mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

.field mHwrPenColor:I

.field mHwrPenThickness:I

.field private mHwrRecognize:Ljava/lang/Runnable;

.field mHwrRecognizeTime:I

.field private mHwrRectArea:Landroid/graphics/Rect;

.field mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mIsTraceDrawing:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mPath:Landroid/graphics/Path;

.field private mPostHwrRecognize:Ljava/lang/Runnable;

.field mStartedHwrTimer:Z

.field private mTimerFlag:Z

.field private mX:F

.field private mY:F

.field private m_Trace:Lcom/sec/android/inputmethod/axt9/AxT9Trace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->STATUSBAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 55
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    .line 66
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    .line 70
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mTimerFlag:Z

    .line 87
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 93
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    .line 100
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->POST_HWR_RECOGNIZE_TIME:I

    .line 101
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    .line 769
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->init()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 55
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    .line 66
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    .line 70
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mTimerFlag:Z

    .line 87
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 93
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    .line 100
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->POST_HWR_RECOGNIZE_TIME:I

    .line 101
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    .line 769
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->init()V

    .line 115
    return-void
.end method

.method private EndDrawTrace()V
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_9

    .line 1095
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1097
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    if-eqz v0, :cond_10

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 1099
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    .line 1100
    return-void
.end method

.method private MoveDrawTrace(FF)V
    .registers 16
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v8, 0x4080

    const/high16 v12, 0x4000

    .line 1068
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 1069
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 1070
    .local v5, previousX:F
    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 1072
    .local v6, previousY:F
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    .line 1074
    .local v0, border:I
    sub-float v7, p1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1075
    .local v3, dx:F
    sub-float v7, p2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1077
    .local v4, dy:F
    cmpl-float v7, v3, v8

    if-gez v7, :cond_23

    cmpl-float v7, v4, v8

    if-ltz v7, :cond_53

    .line 1078
    :cond_23
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1081
    add-float v7, p1, v5

    div-float v1, v7, v12

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    .line 1082
    .local v1, cX:F
    add-float v7, p2, v6

    div-float v2, v7, v12

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    .line 1084
    .local v2, cY:F
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1086
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 1087
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 1088
    invoke-direct {p0, v5, v6, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateTraceLine(FFFF)V

    .line 1089
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    .line 1091
    .end local v1           #cX:F
    .end local v2           #cY:F
    :cond_53
    return-void
.end method

.method private StartDrawTrace(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_9

    .line 1058
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1059
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1060
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 1061
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 1063
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    .line 1064
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    .line 1065
    return-void
.end method

.method private drawHwrLine(FFFF)V
    .registers 11
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 612
    new-instance v5, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 613
    .local v5, paint:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 615
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v5, :cond_2f

    if-eqz v0, :cond_2f

    .line 616
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 618
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 620
    cmpl-float v1, p1, p3

    if-nez v1, :cond_30

    cmpl-float v1, p2, p4

    if-nez v1, :cond_30

    .line 621
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 629
    :goto_2c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrLineRect(FFFF)V

    .line 631
    :cond_2f
    return-void

    .line 623
    :cond_30
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 624
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, p3, p4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 625
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 626
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2c
.end method

.method private invalidateTraceLine(FFFF)V
    .registers 11
    .parameter "oldX"
    .parameter "oldY"
    .parameter "newX"
    .parameter "newY"

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    .line 1105
    .local v1, invalidRect:Landroid/graphics/Rect;
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    .line 1108
    .local v0, border:I
    float-to-int v2, p1

    sub-int/2addr v2, v0

    float-to-int v3, p2

    sub-int/2addr v3, v0

    float-to-int v4, p1

    add-int/2addr v4, v0

    float-to-int v5, p2

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1112
    float-to-int v2, p3

    sub-int/2addr v2, v0

    float-to-int v3, p4

    sub-int/2addr v3, v0

    float-to-int v4, p3

    add-int/2addr v4, v0

    float-to-int v5, p4

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1115
    if-eqz v1, :cond_1f

    .line 1116
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate(Landroid/graphics/Rect;)V

    .line 1118
    :cond_1f
    return-void
.end method

.method private invalideHwrLineRect(FFFF)V
    .registers 11
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 634
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 635
    .local v0, dimen:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 637
    .local v1, rect:Landroid/graphics/Rect;
    cmpl-float v2, p1, p3

    if-nez v2, :cond_57

    cmpl-float v2, p2, p4

    if-nez v2, :cond_57

    .line 638
    sub-float v2, p1, v0

    float-to-int v2, v2

    sub-float v3, p2, v0

    float-to-int v3, v3

    add-float v4, p1, v0

    float-to-int v4, v4

    add-float v5, p2, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 647
    :goto_23
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 648
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 649
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 650
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 652
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate(Landroid/graphics/Rect;)V

    .line 653
    return-void

    .line 641
    :cond_57
    cmpg-float v2, p1, p3

    if-gez v2, :cond_7c

    sub-float v2, p1, v0

    float-to-int v2, v2

    :goto_5e
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 642
    cmpg-float v2, p2, p4

    if-gez v2, :cond_80

    sub-float v2, p2, v0

    float-to-int v2, v2

    :goto_67
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 643
    cmpg-float v2, p1, p3

    if-gez v2, :cond_84

    add-float v2, p3, v0

    float-to-int v2, v2

    :goto_70
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 644
    cmpg-float v2, p2, p4

    if-gez v2, :cond_88

    add-float v2, p4, v0

    float-to-int v2, v2

    :goto_79
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_23

    .line 641
    :cond_7c
    sub-float v2, p3, v0

    float-to-int v2, v2

    goto :goto_5e

    .line 642
    :cond_80
    sub-float v2, p4, v0

    float-to-int v2, v2

    goto :goto_67

    .line 643
    :cond_84
    add-float v2, p1, v0

    float-to-int v2, v2

    goto :goto_70

    .line 644
    :cond_88
    add-float v2, p2, v0

    float-to-int v2, v2

    goto :goto_79
.end method

.method private isHWRInsideCheckArea(FFFFILandroid/graphics/Rect;)Z
    .registers 11
    .parameter "sx"
    .parameter "sy"
    .parameter "ex"
    .parameter "ey"
    .parameter "penThickness"
    .parameter "Area"

    .prologue
    .line 744
    int-to-float v2, p5

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 745
    .local v0, dimetion:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 747
    .local v1, srcRect:Landroid/graphics/Rect;
    cmpg-float v2, p1, p3

    if-gez v2, :cond_33

    sub-float v2, p1, v0

    float-to-int v2, v2

    :goto_11
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 749
    cmpg-float v2, p1, p3

    if-gez v2, :cond_37

    add-float v2, p3, v0

    float-to-int v2, v2

    :goto_1a
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 751
    cmpg-float v2, p2, p4

    if-gez v2, :cond_3b

    sub-float v2, p2, v0

    float-to-int v2, v2

    :goto_23
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 753
    cmpg-float v2, p2, p4

    if-gez v2, :cond_3f

    add-float v2, p4, v0

    float-to-int v2, v2

    :goto_2c
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 755
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2

    .line 747
    :cond_33
    sub-float v2, p3, v0

    float-to-int v2, v2

    goto :goto_11

    .line 749
    :cond_37
    add-float v2, p1, v0

    float-to-int v2, v2

    goto :goto_1a

    .line 751
    :cond_3b
    sub-float v2, p4, v0

    float-to-int v2, v2

    goto :goto_23

    .line 753
    :cond_3f
    add-float v2, p2, v0

    float-to-int v2, v2

    goto :goto_2c
.end method

.method private postInitHwrService()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrPanelArea()V

    .line 150
    return-void
.end method

.method private setHwrArea(IIII)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 697
    return-void
.end method

.method private setHwrBoxArea(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;)V
    .registers 4
    .parameter "box"

    .prologue
    .line 700
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->One:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_c

    .line 701
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 711
    :goto_b
    return-void

    .line 702
    :cond_c
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Two:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_18

    .line 703
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 704
    :cond_18
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Three:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_24

    .line 705
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 706
    :cond_24
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Four:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_30

    .line 707
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 709
    :cond_30
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_b
.end method

.method private setHwrPanelArea()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 656
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 658
    .local v2, keys:[Landroid/inputmethodservice/Keyboard$Key;
    invoke-direct {p0, v5, v5, v5, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrArea(IIII)V

    .line 659
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_39

    .line 660
    aget-object v1, v2, v0

    .line 661
    .local v1, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0xd2

    if-ne v3, v4, :cond_d6

    .line 663
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v8, v1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 664
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 665
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 667
    :cond_37
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    .line 672
    .end local v1           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_39
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 676
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 680
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 684
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    return-void

    .line 659
    .restart local v1       #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7
.end method

.method private setPaintAlpha(I)V
    .registers 7
    .parameter "alpha"

    .prologue
    .line 839
    shr-int/lit8 v2, p1, 0x7

    add-int/2addr p1, v2

    .line 840
    const/16 v0, 0xff

    .line 841
    .local v0, baseAlpha:I
    mul-int/lit16 v2, p1, 0xff

    shr-int/lit8 v1, v2, 0x8

    .line 842
    .local v1, useAlpha:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 843
    return-void
.end method

.method private startHwrRecognizeTimer()V
    .registers 4

    .prologue
    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 716
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognizeTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 717
    return-void
.end method

.method private stopHwrRecognizeTimer()V
    .registers 2

    .prologue
    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 721
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 722
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method private touch_move(FF)V
    .registers 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, areaToRefresh:Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 794
    .local v7, previousX:F
    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 795
    .local v8, previousY:F
    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    sub-float v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 796
    .local v5, dx:F
    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    sub-float v9, p2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 798
    .local v6, dy:F
    const/high16 v9, 0x4080

    cmpl-float v9, v5, v9

    if-gez v9, :cond_21

    const/high16 v9, 0x4080

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_7d

    .line 799
    :cond_21
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    .line 801
    .local v2, border:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    .line 803
    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    float-to-int v9, v9

    sub-int/2addr v9, v2

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    float-to-int v10, v10

    sub-int/2addr v10, v2

    iget v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    float-to-int v11, v11

    add-int/2addr v11, v2

    iget v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    float-to-int v12, v12

    add-int/2addr v12, v2

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 806
    add-float v9, p1, v7

    const/high16 v10, 0x4000

    div-float v3, v9, v10

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    .line 807
    .local v3, cX:F
    add-float v9, p2, v8

    const/high16 v10, 0x4000

    div-float v4, v9, v10

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    .line 809
    .local v4, cY:F
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    iget v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    iget v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    add-float v12, v12, p1

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    iget v13, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    add-float v13, v13, p2

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 812
    float-to-int v9, v7

    sub-int/2addr v9, v2

    float-to-int v10, v8

    sub-int/2addr v10, v2

    float-to-int v11, v7

    add-int/2addr v11, v2

    float-to-int v12, v8

    add-int/2addr v12, v2

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->union(IIII)V

    .line 816
    float-to-int v9, v3

    sub-int/2addr v9, v2

    float-to-int v10, v4

    sub-int/2addr v10, v2

    float-to-int v11, v3

    add-int/2addr v11, v2

    float-to-int v12, v4

    add-int/2addr v12, v2

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->union(IIII)V

    .line 819
    move/from16 v0, p1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 820
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 823
    .end local v2           #border:I
    .end local v3           #cX:F
    .end local v4           #cY:F
    :cond_7d
    if-eqz v1, :cond_85

    .line 824
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 825
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate(Landroid/graphics/Rect;)V

    .line 827
    :cond_85
    return-void
.end method

.method private touch_start(FF)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const v3, 0x3dcccccd

    .line 775
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 776
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 777
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    add-float v2, p1, v3

    add-float/2addr v3, p2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 779
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 780
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 781
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    .line 782
    .local v0, border:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    float-to-int v3, p2

    sub-int/2addr v3, v0

    float-to-int v4, p1

    add-int/2addr v4, v0

    float-to-int v5, p2

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 784
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    .line 785
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    .line 787
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 788
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate()V

    .line 789
    return-void
.end method

.method private touch_up(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 830
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 833
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 834
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate()V

    .line 835
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 836
    return-void
.end method


# virtual methods
.method public closing()V
    .registers 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1133
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 1134
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearCurrentComposing()V

    .line 1137
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1138
    invoke-super {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->closing()V

    .line 1139
    return-void
.end method

.method public finishRecognition()V
    .registers 1

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onPostHwrTimeOut()V

    .line 732
    return-void
.end method

.method public finishRecognitionAndCommit()V
    .registers 1

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 736
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onHwrTimeOut()V

    .line 738
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 739
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onPostHwrTimeOut()V

    .line 740
    return-void
.end method

.method protected freeVariables()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1155
    invoke-super {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->freeVariables()V

    .line 1158
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 1160
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 1161
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    .line 1162
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    .line 1163
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    .line 1164
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    .line 1176
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 1177
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

    .line 1179
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 1181
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    .line 1182
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    .line 1183
    return-void
.end method

.method public getKeyBackGround(I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "primaryCodes"

    .prologue
    .line 583
    const/16 v0, -0xd2

    if-ne p1, v0, :cond_21

    .line 584
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 585
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

    .line 592
    :goto_f
    return-object v0

    .line 586
    :cond_10
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    .line 587
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    .line 589
    :cond_1c
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyBackGround(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_f

    .line 592
    :cond_21
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyBackGround(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_f
.end method

.method public handleHwrTouchDown(II)Z
    .registers 14
    .parameter "x"
    .parameter "y"

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 852
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    .line 853
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 854
    .local v7, CurBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v9

    .line 855
    .local v9, inputMode:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v8, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 856
    .local v8, inputLanguage:S
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSelectLanguage()I

    move-result v10

    .line 858
    .local v10, selectLanguage:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 859
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->One:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 860
    const/4 v9, 0x1

    .line 880
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-eq v7, v0, :cond_3e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v0

    if-lez v0, :cond_3e

    .line 881
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onHwrTimeOut()V

    .line 884
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0, v9, v8}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setHwrInputMode(IS)V

    .line 885
    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 886
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v0

    if-nez v0, :cond_50

    .line 887
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrBoxArea(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;)V

    .line 891
    .end local v7           #CurBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    .end local v8           #inputLanguage:S
    .end local v9           #inputMode:I
    .end local v10           #selectLanguage:I
    :cond_50
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->addPoint(SS)Z

    .line 892
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 893
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 896
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    int-to-float v3, p1

    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRInsideCheckArea(FFFFILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 897
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->touch_start(FF)V

    .line 901
    :cond_73
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->drawHwrLine(FFFF)V

    .line 903
    const/4 v0, 0x1

    return v0

    .line 864
    .restart local v7       #CurBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    .restart local v8       #inputLanguage:S
    .restart local v9       #inputMode:I
    .restart local v10       #selectLanguage:I
    :cond_7e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 865
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Two:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 866
    const/4 v9, 0x1

    .line 867
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 868
    const/16 v8, 0x9

    goto :goto_29

    .line 870
    :cond_94
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 871
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Three:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 872
    const/4 v9, 0x2

    goto :goto_29

    .line 873
    :cond_a0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 874
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Four:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 875
    const/4 v9, 0x3

    goto/16 :goto_29

    .line 877
    :cond_ad
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    goto/16 :goto_29
.end method

.method public handleHwrTouchMove(II)Z
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->addPoint(SS)Z

    .line 909
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    int-to-float v3, p1

    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRInsideCheckArea(FFFFILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 913
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->touch_move(FF)V

    .line 921
    :cond_1d
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 922
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 924
    const/4 v0, 0x1

    return v0
.end method

.method public handleHwrTouchUp(II)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 928
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->endStroke()V

    .line 931
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->touch_up(FF)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeBackSpace()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 937
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrBackgound()V

    .line 943
    :goto_16
    return v2

    .line 941
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->startHwrRecognizeTimer()V

    goto :goto_16
.end method

.method init()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 118
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

    .line 121
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->m_Trace:Lcom/sec/android/inputmethod/axt9/AxT9Trace;

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->initHwrService()V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setPaintAlpha(I)V

    .line 146
    return-void
.end method

.method public initHwrService()V
    .registers 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    if-nez v0, :cond_c

    .line 760
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getHwrService()Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    .line 762
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setContext(Landroid/content/Context;)V

    .line 763
    return-void
.end method

.method public invalideHwrBackgound()V
    .registers 2

    .prologue
    .line 847
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    .line 848
    return-void
.end method

.method public isStartedHwrTimer()Z
    .registers 2

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    return v0
.end method

.method onBufferDraw()V
    .registers 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onBufferDraw()V

    .line 216
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1187
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1189
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 1191
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1a

    .line 1192
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1194
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1204
    :cond_1f
    :goto_1f
    return-void

    .line 1198
    :cond_20
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    if-eqz v0, :cond_1f

    .line 1199
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1f

    .line 1200
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1201
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1f
.end method

.method public onHwrTimeOut()V
    .registers 5

    .prologue
    .line 947
    const/4 v0, 0x0

    .line 951
    .local v0, result:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    if-nez v1, :cond_6

    .line 963
    :goto_5
    return-void

    .line 955
    :cond_6
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    .line 956
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeBoxMode()I

    move-result v0

    .line 961
    :goto_15
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 962
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrBackgound()V

    goto :goto_5

    .line 958
    :cond_20
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeSentence()I

    move-result v0

    goto :goto_15
.end method

.method public onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .registers 28
    .parameter "me"
    .parameter "possiblePoly"

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 260
    const/4 v3, 0x1

    .line 578
    :goto_b
    return v3

    .line 263
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getPaddingLeft()I

    move-result v4

    sub-int v5, v3, v4

    .line 264
    .local v5, touchX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mVerticalCorrection:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getPaddingTop()I

    move-result v4

    sub-int v6, v3, v4

    .line 265
    .local v6, touchY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 266
    .local v9, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 268
    .local v7, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v3, :cond_154

    .line 270
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    .line 274
    .local v16, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMiniKeyboardOnScreen:Z

    if-nez v3, :cond_b7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-nez v3, :cond_b7

    .line 275
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    if-gez v3, :cond_54

    .line 276
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    .line 278
    :cond_54
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v13, v3, v4

    .line 279
    .local v13, dispatchX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v14, v3, v4

    .line 288
    .local v14, dispatchY:F
    :goto_7e
    const/4 v3, 0x0

    cmpg-float v3, v13, v3

    if-gtz v3, :cond_120

    const/high16 v13, 0x3f80

    .end local v13           #dispatchX:F
    :cond_85
    :goto_85
    const/4 v3, 0x0

    cmpg-float v3, v14, v3

    if-gtz v3, :cond_13a

    const/high16 v14, 0x3f80

    .end local v14           #dispatchY:F
    :cond_8c
    :goto_8c
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 290
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSendFirstEvent:Z

    if-nez v3, :cond_ab

    .line 291
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSendFirstEvent:Z

    .line 292
    invoke-static/range {v16 .. v16}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v15

    .line 293
    .local v15, downEvent:Landroid/view/MotionEvent;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v3, v15}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    .end local v15           #downEvent:Landroid/view/MotionEvent;
    :cond_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 298
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 280
    :cond_b7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMiniKeyboardOnScreen:Z

    if-nez v3, :cond_f4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v13, v3, v4

    .line 282
    .restart local v13       #dispatchX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupY:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v14, v3, v4

    .restart local v14       #dispatchY:F
    goto :goto_7e

    .line 284
    .end local v13           #dispatchX:F
    .end local v14           #dispatchY:F
    :cond_f4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v13, v3, v4

    .line 285
    .restart local v13       #dispatchX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v14, v3, v4

    .restart local v14       #dispatchY:F
    goto/16 :goto_7e

    .line 288
    :cond_120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v13, v3

    if-ltz v3, :cond_85

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v13, v3

    goto/16 :goto_85

    .end local v13           #dispatchX:F
    :cond_13a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v14, v3

    if-ltz v3, :cond_8c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v14, v3

    goto/16 :goto_8c

    .line 301
    .end local v14           #dispatchY:F
    .end local v16           #event:Landroid/view/MotionEvent;
    :cond_154
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldEventTime:J

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyIndices(II[I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 305
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_185

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v3, v5, v6}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v19

    .line 308
    .local v19, keyIndices:[I
    if-eqz v19, :cond_185

    move-object/from16 v0, v19

    array-length v3, v0

    if-lez v3, :cond_185

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v6, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getTheNearestKeyIndex(II[I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 312
    .end local v19           #keyIndices:[I
    :cond_185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    move/from16 v18, v0

    .line 315
    .local v18, keyIndex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_19d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_19f

    .line 316
    :cond_19d
    const/16 v18, -0x1

    .line 319
    :cond_19f
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPossiblePoly:Z

    .line 322
    if-nez v9, :cond_1ae

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->clear()V

    .line 323
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 325
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    if-ne v3, v4, :cond_1d5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v3

    if-eqz v3, :cond_1d5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-nez v3, :cond_204

    :cond_1d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v3

    if-nez v3, :cond_204

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_204

    .line 326
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 334
    :cond_204
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v3, :cond_214

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isExpandCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_217

    .line 335
    :cond_214
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 337
    :cond_217
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_235

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v18

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v10, v3, v4

    .line 339
    .local v10, code:I
    :goto_227
    packed-switch v9, :pswitch_data_80e

    .line 576
    :cond_22a
    :goto_22a
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastX:I

    .line 577
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastY:I

    .line 578
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 337
    .end local v10           #code:I
    :cond_235
    const/4 v10, 0x0

    goto :goto_227

    .line 341
    .restart local v10       #code:I
    :pswitch_237
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    .line 342
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 343
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartX:I

    .line 344
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartY:I

    .line 345
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 346
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 347
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 348
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 349
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 350
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 351
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    .line 353
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->checkMultiTap(JI)V

    .line 356
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_2b8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v18

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0xd2

    if-ne v3, v4, :cond_2b8

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v3}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v3

    if-nez v3, :cond_2a6

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrBackgound()V

    .line 360
    :cond_2a6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchDown(II)Z

    .line 361
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 365
    :cond_2b8
    const/16 v3, 0x20

    if-ne v10, v3, :cond_2d9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v3

    if-eqz v3, :cond_2d9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_2d9

    .line 366
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    .line 367
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    .line 369
    :cond_2d9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_302

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    if-nez v3, :cond_302

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->m_Trace:Lcom/sec/android/inputmethod/axt9/AxT9Trace;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->pressTrace(Landroid/view/MotionEvent;I)Z

    .line 373
    int-to-float v3, v5

    int-to-float v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->StartDrawTrace(FF)V

    .line 376
    :cond_302
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ltz v3, :cond_337

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    aget-object v3, v3, v4

    iget-boolean v3, v3, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v3, :cond_337

    .line 377
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->repeatKey()Z

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 380
    .local v20, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v23, 0x190

    move-object/from16 v0, v20

    move-wide/from16 v1, v23

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 382
    .end local v20           #msg:Landroid/os/Message;
    :cond_337
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_356

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 384
    .restart local v20       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v23, 0x320

    move-object/from16 v0, v20

    move-wide/from16 v1, v23

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 386
    .end local v20           #msg:Landroid/os/Message;
    :cond_356
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    goto/16 :goto_22a

    .line 390
    :pswitch_35f
    const/4 v11, 0x0

    .line 392
    .local v11, continueLongPress:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3d8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v10, v3, v4

    .line 393
    :goto_376
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_3ec

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v18

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0xd2

    if-ne v3, v4, :cond_3ec

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    if-eq v3, v4, :cond_39e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    if-ne v3, v4, :cond_3a8

    :cond_39e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v3

    if-nez v3, :cond_3ec

    .line 396
    :cond_3a8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    if-ne v3, v4, :cond_3e9

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v21

    .line 398
    .local v21, size:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3b8
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3da

    .line 399
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchMove(II)Z

    .line 398
    add-int/lit8 v17, v17, 0x1

    goto :goto_3b8

    .line 392
    .end local v17           #i:I
    .end local v21           #size:I
    :cond_3d8
    const/4 v10, 0x0

    goto :goto_376

    .line 401
    .restart local v17       #i:I
    .restart local v21       #size:I
    :cond_3da
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchMove(II)Z

    .line 403
    .end local v17           #i:I
    .end local v21           #size:I
    :cond_3e9
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 404
    :cond_3ec
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    if-ne v3, v4, :cond_40d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    if-eq v3, v4, :cond_40d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    if-eq v3, v4, :cond_40d

    .line 409
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 412
    :cond_40d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_444

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    if-nez v3, :cond_444

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_444

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_432

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    if-eqz v3, :cond_444

    .line 413
    :cond_432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->m_Trace:Lcom/sec/android/inputmethod/axt9/AxT9Trace;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->moveTrace(Landroid/view/MotionEvent;I)Z

    .line 414
    int-to-float v3, v5

    int-to-float v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->MoveDrawTrace(FF)V

    .line 418
    :cond_444
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_4f6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v18

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v12, v3, v4

    .line 419
    .local v12, currentKeyCode:I
    :goto_454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v3

    if-eqz v3, :cond_482

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_482

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    if-nez v3, :cond_482

    .line 420
    const/16 v3, 0x20

    if-ne v10, v3, :cond_53d

    .line 421
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4f9

    .line 422
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    .line 423
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    .line 442
    :cond_482
    :goto_482
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_5c3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    if-nez v3, :cond_5c3

    .line 443
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_553

    .line 444
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 445
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    sub-long v3, v7, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 463
    :cond_4a4
    :goto_4a4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    move/from16 v0, v18

    if-eq v0, v3, :cond_4b9

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 467
    :cond_4b9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    if-eqz v3, :cond_5b8

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 478
    :cond_4cd
    :goto_4cd
    if-nez v11, :cond_22a

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_22a

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 484
    .restart local v20       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v23, 0x320

    move-object/from16 v0, v20

    move-wide/from16 v1, v23

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_22a

    .line 418
    .end local v12           #currentKeyCode:I
    .end local v20           #msg:Landroid/os/Message;
    :cond_4f6
    const/4 v12, 0x0

    goto/16 :goto_454

    .line 424
    .restart local v12       #currentKeyCode:I
    :cond_4f9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    if-eqz v3, :cond_482

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    if-nez v3, :cond_50b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    if-eqz v3, :cond_482

    .line 425
    :cond_50b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    if-eqz v3, :cond_51e

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    sub-int v4, v5, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setDiff(I)V

    .line 428
    :cond_51e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    if-eqz v3, :cond_531

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    sub-int v4, v5, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setDiff(I)V

    .line 431
    :cond_531
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    .line 432
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 434
    :cond_53d
    const/16 v3, 0x20

    if-ne v12, v3, :cond_482

    .line 435
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_482

    .line 436
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    .line 437
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    goto/16 :goto_482

    .line 447
    :cond_553
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move/from16 v0, v18

    if-ne v0, v3, :cond_570

    .line 448
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    move-wide/from16 v23, v0

    sub-long v23, v7, v23

    add-long v3, v3, v23

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 449
    const/4 v11, 0x1

    goto/16 :goto_4a4

    .line 450
    :cond_570
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4a4

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->resetMultiTap()V

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3, v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onChange(I)V

    .line 455
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 456
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastX:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 457
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastY:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 458
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v3, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    move-wide/from16 v23, v0

    sub-long v3, v3, v23

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 459
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 460
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    goto/16 :goto_4a4

    .line 472
    :cond_5b8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    goto/16 :goto_4cd

    .line 473
    :cond_5c3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    if-nez v3, :cond_4cd

    .line 474
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 475
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    sub-long v3, v7, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 476
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    goto/16 :goto_4cd

    .line 490
    .end local v11           #continueLongPress:Z
    .end local v12           #currentKeyCode:I
    :pswitch_5e4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeAllMsg()V

    .line 492
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_655

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v10, v3, v4

    .line 493
    :goto_5fd
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_625

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v18

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0xd2

    if-ne v3, v4, :cond_625

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    if-eq v3, v4, :cond_625

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    if-ne v3, v4, :cond_639

    :cond_625
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    if-ne v3, v4, :cond_657

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v3}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v3

    if-lez v3, :cond_657

    .line 497
    :cond_639
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchUp(II)Z

    .line 498
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    if-ne v3, v4, :cond_657

    .line 499
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 492
    :cond_655
    const/4 v10, 0x0

    goto :goto_5fd

    .line 503
    :cond_657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_67b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsTraceDrawing:Z

    if-eqz v3, :cond_67b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    if-nez v3, :cond_67b

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->m_Trace:Lcom/sec/android/inputmethod/axt9/AxT9Trace;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->releaseTrace(Landroid/view/MotionEvent;I)Z

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->EndDrawTrace()V

    .line 509
    :cond_67b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    if-eqz v3, :cond_6ff

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_6ff

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v22

    .line 511
    .local v22, width:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6ae

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v22, v3, 0x3

    .line 514
    :cond_6ae
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    sub-int v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_6e7

    .line 515
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    sub-int v3, v5, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleChangeLanguage(I)V

    .line 516
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    .line 517
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIndices:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 520
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 521
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    .line 522
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 524
    :cond_6e7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    if-eqz v3, :cond_6f5

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setDiff(I)V

    .line 527
    :cond_6f5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    .line 528
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    .line 531
    .end local v22           #width:I
    :cond_6ff
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move/from16 v0, v18

    if-ne v0, v3, :cond_7ca

    .line 532
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    move-wide/from16 v23, v0

    sub-long v23, v7, v23

    add-long v3, v3, v23

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 540
    :goto_719
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    move-wide/from16 v23, v0

    cmp-long v3, v3, v23

    if-gez v3, :cond_73e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_73e

    .line 541
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 542
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 543
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 546
    :cond_73e
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIndices:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 550
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_76d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v3, :cond_76d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    if-nez v3, :cond_76d

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_76d

    .line 551
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->detectAndSendKey(IIIJ)V

    .line 554
    :cond_76d
    const/4 v3, -0x1

    if-eq v10, v3, :cond_7c3

    const/4 v3, -0x5

    if-eq v10, v3, :cond_7c3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v3

    if-nez v3, :cond_7c3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isThisKeyEnable(I)Z

    move-result v3

    if-eqz v3, :cond_7c3

    const/16 v3, -0x66

    if-eq v10, v3, :cond_7c3

    const/16 v3, -0x67

    if-eq v10, v3, :cond_7c3

    const/16 v3, -0x136

    if-eq v10, v3, :cond_7c3

    const/16 v3, 0xa

    if-eq v10, v3, :cond_7c3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7c3

    if-nez p2, :cond_7c3

    .line 559
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 561
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShiftPressed(Z)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 567
    :cond_7c3
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_22a

    .line 534
    :cond_7ca
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->resetMultiTap()V

    .line 535
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 536
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v3, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    move-wide/from16 v23, v0

    sub-long v3, v3, v23

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 537
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 538
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    goto/16 :goto_719

    .line 570
    :pswitch_7f4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeAllMsg()V

    .line 571
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 572
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 573
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    goto/16 :goto_22a

    .line 339
    nop

    :pswitch_data_80e
    .packed-switch 0x0
        :pswitch_237
        :pswitch_5e4
        :pswitch_35f
        :pswitch_7f4
    .end packed-switch
.end method

.method public onPostHwrTimeOut()V
    .registers 2

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mTimerFlag:Z

    if-eqz v0, :cond_4

    .line 972
    :cond_4
    return-void
.end method

.method public setHwrInputMode(I)V
    .registers 4
    .parameter "inputMode"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v0, p1, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setHwrInputMode(IS)V

    .line 996
    return-void
.end method

.method public setHwrPenColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 1048
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    .line 1049
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1053
    return-void
.end method

.method public setHwrPenThickness(I)V
    .registers 4
    .parameter "thickness"

    .prologue
    .line 1040
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    .line 1041
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1045
    return-void
.end method

.method public setHwrRecognitionTime(I)V
    .registers 2
    .parameter "time"

    .prologue
    .line 1033
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognizeTime:I

    .line 1037
    return-void
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 5
    .parameter "keyboard"

    .prologue
    .line 155
    if-nez p1, :cond_3

    .line 169
    :cond_2
    :goto_2
    return-void

    .line 159
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 163
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->postInitHwrService()V

    .line 166
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_2
.end method
