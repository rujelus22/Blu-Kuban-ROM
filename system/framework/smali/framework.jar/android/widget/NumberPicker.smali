.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$AdjustScrollerCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0x3c

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter; = null

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCheckBeginEditOnUpEvent:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 170
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 187
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    return-void

    .line 170
    nop

    :array_18
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 529
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 538
    const v0, 0x10103be

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 539
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 22
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 549
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 295
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 300
    const/4 v14, 0x5

    new-array v14, v14, [I

    fill-array-data v14, :array_2ce

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 318
    const/high16 v14, -0x8000

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 439
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 444
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 552
    sget-object v14, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 554
    .local v3, attributesArray:Landroid/content/res/TypedArray;
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 555
    const/4 v14, 0x5

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPicker;->mFlingable:Z

    .line 556
    const/4 v14, 0x6

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 557
    const/4 v14, 0x1

    const/high16 v15, 0x4000

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v7, v14

    .line 560
    .local v7, defSelectionDividerHeight:I
    const/4 v14, 0x7

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 562
    const/4 v14, 0x3

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 564
    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 566
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a8

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a8

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-le v14, v15, :cond_a8

    .line 568
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minHeight > maxHeight"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 570
    :cond_a8
    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 572
    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 574
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_dd

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_dd

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-le v14, v15, :cond_dd

    .line 576
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minWidth > maxWidth"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 578
    :cond_dd
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_2c0

    const/4 v14, 0x1

    :goto_e7
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 579
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 581
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 589
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 590
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 594
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v14, 0x1090069

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 596
    new-instance v9, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 611
    .local v9, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v10, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 624
    .local v10, onLongClickListener:Landroid/view/View$OnLongClickListener;
    const v14, 0x10202ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 629
    const v14, 0x10202ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 634
    const v14, 0x10202eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 635
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v15, Landroid/widget/NumberPicker$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    new-instance v17, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v17 .. v18}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 657
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 658
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 659
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 660
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 661
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    div-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextSize()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 666
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 667
    .local v11, paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 668
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 669
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 670
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 672
    .local v5, colors:Landroid/content/res/ColorStateList;
    sget-object v14, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 673
    .local v4, color:I
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 677
    const-string/jumbo v14, "selectorPaintAlpha"

    const/4 v15, 0x2

    new-array v15, v15, [I

    fill-array-data v15, :array_2dc

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2e4

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 681
    .local v13, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2ec

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 683
    .local v12, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Landroid/widget/NumberPicker$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 707
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 708
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x4020

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v14 .. v16}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 710
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 711
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 713
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v14, :cond_2bf

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v14

    if-eqz v14, :cond_2c3

    .line 715
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 724
    :cond_2bf
    :goto_2bf
    return-void

    .line 578
    .end local v4           #color:I
    .end local v5           #colors:Landroid/content/res/ColorStateList;
    .end local v6           #configuration:Landroid/view/ViewConfiguration;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v10           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .end local v11           #paint:Landroid/graphics/Paint;
    .end local v12           #showDecrementButton:Landroid/animation/ObjectAnimator;
    .end local v13           #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_2c0
    const/4 v14, 0x0

    goto/16 :goto_e7

    .line 720
    .restart local v4       #color:I
    .restart local v5       #colors:Landroid/content/res/ColorStateList;
    .restart local v6       #configuration:Landroid/view/ViewConfiguration;
    .restart local v8       #inflater:Landroid/view/LayoutInflater;
    .restart local v9       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v10       #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .restart local v11       #paint:Landroid/graphics/Paint;
    .restart local v12       #showDecrementButton:Landroid/animation/ObjectAnimator;
    .restart local v13       #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_2c3
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 721
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_2bf

    .line 300
    nop

    :array_2ce
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 677
    :array_2dc
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 679
    :array_2e4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 681
    :array_2ec
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/NumberPicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()[C
    .registers 1

    .prologue
    .line 77
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeCurrentByOne(Z)V
    .registers 8
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1488
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_38

    .line 1489
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1490
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1492
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1493
    invoke-direct {p0}, Landroid/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1494
    if-eqz p1, :cond_2e

    .line 1495
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1501
    :goto_2a
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1509
    :goto_2d
    return-void

    .line 1498
    :cond_2e
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2a

    .line 1503
    :cond_38
    if-eqz p1, :cond_42

    .line 1504
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_2d

    .line 1506
    :cond_42
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_2d
.end method

.method private decrementSelectorIndices([I)V
    .registers 5
    .parameter "selectorIndices"

    .prologue
    .line 1721
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_3
    if-lez v0, :cond_e

    .line 1722
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1721
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1724
    :cond_e
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1725
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1d

    .line 1726
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1728
    :cond_1d
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1729
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1730
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 6
    .parameter "selectorIndex"

    .prologue
    .line 1738
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1739
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1740
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1754
    :goto_a
    return-void

    .line 1743
    :cond_b
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_13

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_19

    .line 1744
    :cond_13
    const-string v2, ""

    .line 1753
    :goto_15
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 1746
    :cond_19
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 1747
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1748
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1749
    goto :goto_15

    .line 1750
    .end local v1           #displayedValueIndex:I
    :cond_26
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method private fadeSelectorWheel(J)V
    .registers 5
    .parameter "animationDuration"

    .prologue
    .line 1667
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1668
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1669
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1670
    return-void
.end method

.method private fling(I)V
    .registers 11
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1623
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1625
    if-lez p1, :cond_17

    .line 1626
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1631
    :goto_13
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1632
    return-void

    .line 1628
    :cond_17
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_13
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .registers 5

    .prologue
    .line 1517
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1518
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1519
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1520
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1521
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1522
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1524
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_19
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 1757
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 5
    .parameter "value"

    .prologue
    .line 1842
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1844
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1869
    :goto_8
    return v2

    .line 1845
    :catch_9
    move-exception v0

    .line 1846
    .local v0, e:Ljava/lang/NumberFormatException;
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1850
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 1852
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1853
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1854
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v2, v1

    goto :goto_8

    .line 1850
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1863
    :cond_2e
    :try_start_2e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_31} :catch_33

    move-result v2

    goto :goto_8

    .line 1864
    :catch_33
    move-exception v2

    .line 1869
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_8
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 6
    .parameter "selectorIndex"

    .prologue
    .line 1692
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_14

    .line 1693
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1697
    .end local p1
    :cond_13
    :goto_13
    return p1

    .line 1694
    .restart local p1
    :cond_14
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_13

    .line 1695
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_13
.end method

.method private hideInputControls()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1638
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_a

    .line 1639
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1641
    :cond_a
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1642
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1643
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1644
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .registers 5
    .parameter "selectorIndices"

    .prologue
    .line 1705
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_f

    .line 1706
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1708
    :cond_f
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1709
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_20

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_20

    .line 1710
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1712
    :cond_20
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1713
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1714
    return-void
.end method

.method private initializeFadingEdges()V
    .registers 3

    .prologue
    .line 1584
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1585
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1586
    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 8

    .prologue
    .line 1568
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1569
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1570
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1571
    .local v4, totalTextHeight:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1572
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v2, v5

    .line 1573
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1574
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1576
    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1577
    .local v0, editTextTextPosition:I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1579
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1580
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1581
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    .prologue
    .line 1447
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1448
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1449
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1450
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2b

    .line 1451
    add-int/lit8 v4, v1, -0x2

    add-int v3, v0, v4

    .line 1452
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1d

    .line 1453
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1455
    :cond_1d
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1456
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1450
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1458
    .end local v3           #selectorIndex:I
    :cond_2b
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 6
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1541
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1542
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1543
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1545
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private makeMeasureSpec(II)I
    .registers 8
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1405
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 1416
    .end local p1
    :goto_5
    :sswitch_5
    return p1

    .line 1408
    .restart local p1
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1409
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1410
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_38

    .line 1418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1414
    :sswitch_2a
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 1416
    :sswitch_33
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 1410
    :sswitch_data_38
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x0 -> :sswitch_33
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .registers 5
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1803
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_b

    .line 1804
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 1806
    :cond_b
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 3
    .parameter "scrollState"

    .prologue
    .line 1610
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1617
    :cond_4
    :goto_4
    return-void

    .line 1613
    :cond_5
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1614
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_4

    .line 1615
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_4
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 5
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1592
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1a

    .line 1593
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 1594
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    .line 1595
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1604
    :goto_10
    return-void

    .line 1597
    :cond_11
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1598
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->fadeSelectorWheel(J)V

    goto :goto_10

    .line 1601
    :cond_1a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1602
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    goto :goto_10
.end method

.method private postAdjustScrollerCommand(I)V
    .registers 5
    .parameter "delayMillis"

    .prologue
    .line 1894
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_12

    .line 1895
    new-instance v0, Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AdjustScrollerCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    .line 1899
    :goto_b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1900
    return-void

    .line 1897
    :cond_12
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .registers 3
    .parameter "increment"

    .prologue
    .line 1814
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1815
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1816
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_13

    .line 1817
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1819
    :cond_13
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1820
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1821
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .registers 4
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 1878
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_1b

    .line 1879
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 1883
    :goto_b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1884
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$802(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1885
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1886
    return-void

    .line 1881
    :cond_1b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private removeAllCallbacks()V
    .registers 2

    .prologue
    .line 1827
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 1828
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1830
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_12

    .line 1831
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1833
    :cond_12
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1b

    .line 1834
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1836
    :cond_1b
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 6
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1434
    const/4 v1, -0x1

    if-eq p1, v1, :cond_c

    .line 1435
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1436
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1438
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_c
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1534
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1535
    return-void
.end method

.method private setSelectorWheelState(I)V
    .registers 6
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1552
    iput p1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    .line 1553
    if-ne p1, v3, :cond_c

    .line 1554
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1557
    :cond_c
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_41

    if-ne p1, v3, :cond_41

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1559
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1560
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040559

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1561
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1562
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    .line 1563
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1565
    .end local v0           #text:Ljava/lang/String;
    :cond_41
    return-void
.end method

.method private showInputControls(J)V
    .registers 5
    .parameter "animationDuration"

    .prologue
    .line 1653
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1654
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1655
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_17

    .line 1656
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1657
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1659
    :cond_17
    return-void
.end method

.method private tryComputeMaxWidth()V
    .registers 11

    .prologue
    .line 1091
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_5

    .line 1128
    :cond_4
    :goto_4
    return-void

    .line 1094
    :cond_5
    const/4 v4, 0x0

    .line 1095
    .local v4, maxTextWidth:I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_4b

    .line 1096
    const/4 v3, 0x0

    .line 1097
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    const/16 v8, 0x9

    if-gt v2, v8, :cond_22

    .line 1098
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1099
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1f

    .line 1100
    move v3, v1

    .line 1097
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1103
    .end local v1           #digitWidth:F
    :cond_22
    const/4 v5, 0x0

    .line 1104
    .local v5, numberOfDigits:I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1105
    .local v0, current:I
    :goto_25
    if-lez v0, :cond_2c

    .line 1106
    add-int/lit8 v5, v5, 0x1

    .line 1107
    div-int/lit8 v0, v0, 0xa

    goto :goto_25

    .line 1109
    :cond_2c
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1119
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_2f
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1120
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_4

    .line 1121
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_64

    .line 1122
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1126
    :goto_47
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_4

    .line 1111
    .end local v2           #i:I
    :cond_4b
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1112
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4f
    if-ge v2, v7, :cond_2f

    .line 1113
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1114
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_61

    .line 1115
    float-to-int v4, v6

    .line 1112
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1124
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_64
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_47
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1676
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_c

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_21

    .line 1677
    :cond_c
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1681
    :goto_11
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-le v0, v1, :cond_27

    .line 1682
    :cond_1b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1686
    :goto_20
    return-void

    .line 1679
    :cond_21
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_11

    .line 1684
    :cond_27
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_20
.end method

.method private updateInputTextView()V
    .registers 7

    .prologue
    .line 1784
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_49

    .line 1785
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    :goto_f
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1791
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1792
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040558

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1796
    .end local v0           #text:Ljava/lang/String;
    :cond_48
    return-void

    .line 1787
    :cond_49
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1761
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1762
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1764
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1770
    :goto_13
    return-void

    .line 1767
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1768
    .local v0, current:I
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_13
.end method


# virtual methods
.method protected changeCurrent(I)V
    .registers 4
    .parameter "current"

    .prologue
    .line 1469
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_5

    .line 1479
    :goto_4
    return-void

    .line 1473
    :cond_5
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_d

    .line 1474
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1476
    :cond_d
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1477
    .local v0, previous:I
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1478
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    goto :goto_4
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    .line 931
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_5

    .line 953
    :cond_4
    :goto_4
    return-void

    .line 934
    :cond_5
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 935
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 936
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 937
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 941
    :cond_15
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 942
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 943
    .local v0, currentScrollerY:I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_26

    .line 944
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 946
    :cond_26
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 947
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 948
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 949
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_4

    .line 951
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 1311
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 913
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 914
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_c

    const/16 v1, 0x42

    if-ne v0, v1, :cond_f

    .line 915
    :cond_c
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 917
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 896
    .local v0, action:I
    packed-switch v0, :pswitch_data_1c

    .line 908
    :cond_7
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 898
    :pswitch_c
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 899
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 900
    invoke-direct {p0}, Landroid/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_7

    .line 905
    :pswitch_18
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 896
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 923
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 924
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 926
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 1323
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1327
    iget-object v5, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_10

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_30

    .line 1329
    :cond_10
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawingTime()J

    move-result-wide v2

    .line 1330
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_19
    if-ge v4, v1, :cond_30

    .line 1331
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1332
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_28

    .line 1330
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1335
    :cond_28
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/widget/NumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_25

    .line 1338
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_30
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1289
    const v0, 0x3f666666

    return v0
.end method

.method public getDecrementButton()Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 2067
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getIncrementButton()Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 2051
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    .prologue
    .line 1225
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .prologue
    .line 1193
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 1000
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1284
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 1184
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .prologue
    .line 1139
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 1294
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1297
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1299
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 1301
    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1305
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1306
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .parameter "canvas"

    .prologue
    .line 1342
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v13, :cond_7

    .line 1389
    :goto_6
    return-void

    .line 1346
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v11, v13

    .line 1347
    .local v11, x:F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v12, v13

    .line 1349
    .local v12, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1351
    .local v5, restoreCount:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_34

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1353
    .local v3, clipBounds:Landroid/graphics/Rect;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 1354
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1358
    .end local v3           #clipBounds:Landroid/graphics/Rect;
    :cond_34
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1359
    .local v8, selectorIndices:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_39
    array-length v13, v8

    if-ge v4, v13, :cond_67

    .line 1360
    aget v7, v8, v4

    .line 1361
    .local v7, selectorIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1366
    .local v6, scrollSelectorValue:Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v4, v13, :cond_55

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_5e

    .line 1367
    :cond_55
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1369
    :cond_5e
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 1359
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1373
    .end local v6           #scrollSelectorValue:Ljava/lang/String;
    .end local v7           #selectorIndex:I
    :cond_67
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_b9

    .line 1375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v13, v14

    div-int/lit8 v10, v13, 0x2

    .line 1377
    .local v10, topOfTopDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v10, v13

    .line 1378
    .local v2, bottomOfTopDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    invoke-virtual {v13, v14, v10, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1382
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v9, v10, v13

    .line 1383
    .local v9, topOfBottomDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v1, v2, v13

    .line 1384
    .local v1, bottomOfBottomDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    invoke-virtual {v13, v14, v9, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1388
    .end local v1           #bottomOfBottomDivider:I
    .end local v2           #bottomOfTopDivider:I
    .end local v9           #topOfBottomDivider:I
    .end local v10           #topOfTopDivider:I
    :cond_b9
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_6
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 780
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-nez v5, :cond_f

    :cond_d
    move v3, v4

    .line 825
    :goto_e
    return v3

    .line 783
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_a0

    :cond_16
    :pswitch_16
    move v3, v4

    .line 825
    goto :goto_e

    .line 785
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v5, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    .line 786
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 787
    iget-object v5, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 788
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 789
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 790
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 791
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_66

    .line 792
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 793
    iget-object v5, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_64

    iget-object v5, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_64

    move v2, v3

    .line 795
    .local v2, scrollersFinished:Z
    :goto_4d
    if-nez v2, :cond_5c

    .line 796
    iget-object v5, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 797
    iget-object v5, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 798
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 800
    :cond_5c
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 801
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 802
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_e

    .end local v2           #scrollersFinished:Z
    :cond_64
    move v2, v4

    .line 793
    goto :goto_4d

    .line 805
    :cond_66
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Landroid/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_76

    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Landroid/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_78

    :cond_76
    move v3, v4

    .line 807
    goto :goto_e

    .line 809
    :cond_78
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 810
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 811
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_e

    .line 814
    :pswitch_81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 815
    .local v0, currentMoveY:F
    iget v5, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 816
    .local v1, deltaDownY:I
    iget v5, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_16

    .line 817
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 818
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 819
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 820
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto/16 :goto_e

    .line 783
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_16
        :pswitch_81
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 29
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 728
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v20

    .line 729
    .local v20, msrdWdth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v19

    .line 732
    .local v19, msrdHght:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 733
    .local v12, inctBtnMsrdWdth:I
    sub-int v21, v20, v12

    div-int/lit8 v9, v21, 0x2

    .line 734
    .local v9, incrBtnLeft:I
    const/4 v11, 0x0

    .line 735
    .local v11, incrBtnTop:I
    add-int v10, v9, v12

    .line 736
    .local v10, incrBtnRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    add-int/lit8 v8, v21, 0x0

    .line 737
    .local v8, incrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1, v10, v8}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v16

    .line 741
    .local v16, inptTxtMsrdWdth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v15

    .line 742
    .local v15, inptTxtMsrdHght:I
    sub-int v21, v20, v16

    div-int/lit8 v14, v21, 0x2

    .line 743
    .local v14, inptTxtLeft:I
    sub-int v21, v19, v15

    div-int/lit8 v18, v21, 0x2

    .line 744
    .local v18, inptTxtTop:I
    add-int v17, v14, v16

    .line 745
    .local v17, inptTxtRight:I
    add-int v13, v18, v15

    .line 746
    .local v13, inptTxtBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/widget/EditText;->layout(IIII)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 750
    .local v5, decrBtnMsrdWdth:I
    sub-int v21, v20, v5

    div-int/lit8 v4, v21, 0x2

    .line 751
    .local v4, decrBtnLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    sub-int v7, v19, v21

    .line 752
    .local v7, decrBtnTop:I
    add-int v6, v4, v5

    .line 753
    .local v6, decrBtnRight:I
    move/from16 v3, v19

    .line 754
    .local v3, decrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7, v6, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_a2

    .line 757
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 759
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 760
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 762
    :cond_a2
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 767
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 768
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 769
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 771
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 773
    .local v3, widthSize:I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 775
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 776
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    .line 830
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 831
    const/4 v9, 0x0

    .line 890
    :goto_7
    return v9

    .line 833
    :cond_8
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_12

    .line 834
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 836
    :cond_12
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 838
    .local v0, action:I
    packed-switch v0, :pswitch_data_d8

    .line 890
    :goto_1e
    const/4 v9, 0x1

    goto :goto_7

    .line 840
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 841
    .local v1, currentMoveY:F
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v9, :cond_2d

    iget v9, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_41

    .line 843
    :cond_2d
    iget v9, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 844
    .local v2, deltaDownY:I
    iget v9, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v9, :cond_41

    .line 845
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 846
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 849
    .end local v2           #deltaDownY:I
    :cond_41
    iget v9, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    .line 850
    .local v3, deltaMoveY:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 851
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 852
    iput v1, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    goto :goto_1e

    .line 855
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_50
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v9, :cond_8b

    .line 856
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    sub-long v4, v9, v11

    .line 858
    .local v4, deltaTapTimeMillis:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_8b

    .line 859
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 860
    iget-wide v9, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v9, v10}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 861
    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 862
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 863
    .local v7, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_82

    .line 864
    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 866
    :cond_82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    .line 867
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 870
    .end local v4           #deltaTapTimeMillis:J
    .end local v7           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_8b
    iget-object v8, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 871
    .local v8, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 872
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v6, v9

    .line 873
    .local v6, initialVelocity:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_b9

    .line 874
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->fling(I)V

    .line 875
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 885
    :cond_a9
    :goto_a9
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 886
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    goto/16 :goto_1e

    .line 877
    :cond_b9
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v9, :cond_d2

    .line 878
    iget-object v9, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_a9

    iget-object v9, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 879
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_a9

    .line 882
    :cond_d2
    sget v9, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_a9

    .line 838
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_50
        :pswitch_20
    .end packed-switch
.end method

.method public scrollBy(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x2

    .line 965
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_6

    .line 996
    :cond_5
    :goto_5
    return-void

    .line 968
    :cond_6
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 969
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_19

    if-lez p2, :cond_19

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_19

    .line 971
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_5

    .line 974
    :cond_19
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2a

    if-gez p2, :cond_2a

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2a

    .line 976
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_5

    .line 979
    :cond_2a
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 980
    :cond_2f
    :goto_2f
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_56

    .line 981
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 982
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 983
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 984
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2f

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2f

    .line 985
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2f

    .line 988
    :cond_56
    :goto_56
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_5

    .line 989
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 990
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 991
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 992
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_56

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_56

    .line 993
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_56
.end method

.method public sendAccessibilityEvent(I)V
    .registers 2
    .parameter "eventType"

    .prologue
    .line 1395
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 4
    .parameter "displayedValues"

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1280
    :goto_4
    return-void

    .line 1269
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1270
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1272
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1277
    :goto_13
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1278
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1279
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_4

    .line 1275
    :cond_1d
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_13
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 957
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 958
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 959
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 960
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 961
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 3
    .parameter "formatter"

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1040
    :goto_4
    return-void

    .line 1037
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1038
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1039
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    goto :goto_4
.end method

.method public setMaxValue(I)V
    .registers 5
    .parameter "maxValue"

    .prologue
    .line 1234
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_5

    .line 1249
    :goto_4
    return-void

    .line 1237
    :cond_5
    if-gez p1, :cond_10

    .line 1238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_10
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1241
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_1c

    .line 1242
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1244
    :cond_1c
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_34

    const/4 v0, 0x1

    .line 1245
    .local v0, wrapSelectorWheel:Z
    :goto_27
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1246
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1247
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1248
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_4

    .line 1244
    .end local v0           #wrapSelectorWheel:Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setMinValue(I)V
    .registers 5
    .parameter "minValue"

    .prologue
    .line 1202
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_5

    .line 1217
    :goto_4
    return-void

    .line 1205
    :cond_5
    if-gez p1, :cond_10

    .line 1206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1208
    :cond_10
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1209
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_1c

    .line 1210
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1212
    :cond_1c
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_34

    const/4 v0, 0x1

    .line 1213
    .local v0, wrapSelectorWheel:Z
    :goto_27
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1214
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1215
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1216
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_4

    .line 1212
    .end local v0           #wrapSelectorWheel:Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 3
    .parameter "intervalMillis"

    .prologue
    .line 1175
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1176
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .registers 2
    .parameter "onScrollListener"

    .prologue
    .line 1018
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1019
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2
    .parameter "onValueChangedListener"

    .prologue
    .line 1009
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1010
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1071
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_5

    .line 1085
    :goto_4
    return-void

    .line 1074
    :cond_5
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_f

    .line 1075
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_28

    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1077
    :cond_f
    :goto_f
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_19

    .line 1078
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_2b

    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1080
    :cond_19
    :goto_19
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1081
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1082
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1083
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1084
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_4

    .line 1075
    :cond_28
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_f

    .line 1078
    :cond_2b
    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    goto :goto_19
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 4
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1155
    if-eqz p1, :cond_14

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 1156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_14
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1d

    .line 1159
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1160
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1162
    :cond_1d
    return-void
.end method

.method public twSetMaxInputLength(I)V
    .registers 8
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    .line 2040
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 2041
    .local v1, filterArr:[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 2042
    .local v0, backupFilter:Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 2043
    .local v2, lengthFilter:Landroid/text/InputFilter;
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2044
    return-void
.end method

.method public twSetMonthInputMode()V
    .registers 3

    .prologue
    .line 2071
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2072
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2073
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    return-void
.end method

.method public twSetYearDateTimeInputMode()V
    .registers 3

    .prologue
    .line 2077
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2078
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2079
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2080
    return-void
.end method
