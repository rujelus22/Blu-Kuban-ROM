.class public Lcom/swype/android/widget/HorizontalChoiceView;
.super Landroid/view/View;
.source "HorizontalChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;
    }
.end annotation


# static fields
.field private static final MAX_WORD_COUNT:I = 0x1f4

.field private static final MIN_HWCL_TIP_TEXT_SIZE:F = 16.0f

.field private static final MIN_X_MOVEMENT_SCROLLING:I = 0x14

.field private static final PERCENT_WORD_SHOW:D = 0.8

.field private static final SCROLL_FRAME_PIXEL_STEP:I = 0x1e

.field private static final SELECTING_DEFAULT:I = 0x2

.field private static final SELECTING_INDEX:I = 0x1

.field private static final SELECTING_NONE:I = 0x0

.field public static final SWYPE_KEY_ICON:Ljava/lang/String; = "%ICON%"

.field private static final WORD_PADDING_X:I = 0xa


# instance fields
.field private final HWCL_ICON_POSITION_BETWEEN:I

.field private final HWCL_ICON_POSITION_LEADING:I

.field private final HWCL_ICON_POSITION_NONE:I

.field private final HWCL_ICON_POSITION_TRAILING:I

.field private choiceWidth:I

.field private final choiceWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private customTextColor:I

.field private defaultWordColor:I

.field private downX:D

.field private downY:D

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hwclTipIconPosition:I

.field private lastX:D

.field private lastY:D

.field private listener:Lcom/swype/android/widget/HorizontalViewClickListener;

.field private mAddWord:Landroid/graphics/drawable/Drawable;

.field private mBgPadding:Landroid/graphics/Rect;

.field private mDefaultIndex:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mFirstDrawnIndex:I

.field private mFirstDrawnOnTouch:I

.field private mFontDescent:I

.field private mIsLocked:Z

.field private mIsScrolling:Z

.field private mLastDrawnIndex:I

.field private mLastDrawnOnTouch:I

.field private mLock:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedIndex:I

.field private mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

.field private mTargetScrollX:I

.field private final mTextWidth:[I

.field private final mWordOffsetX:[I

.field private final mWordWidth:[I

.field private minHwclTipTextSize:F

.field private nwpWordColor:I

.field private parentContainer:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

.field private plainTextColor:I

.field private pressedWordColor:I

.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;",
            ">;"
        }
    .end annotation
.end field

.field private tappedHighlight:Landroid/graphics/drawable/Drawable;

.field private theme:Lcom/swype/android/widget/HwclTheme;

.field private totalWidth:I

.field private final wordStrBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4180

    const-wide/high16 v4, -0x4010

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 350
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    .line 193
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    .line 194
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    .line 195
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTextWidth:[I

    .line 233
    iput v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->HWCL_ICON_POSITION_NONE:I

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->HWCL_ICON_POSITION_LEADING:I

    .line 235
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->HWCL_ICON_POSITION_BETWEEN:I

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->HWCL_ICON_POSITION_TRAILING:I

    .line 241
    iput v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    .line 276
    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 282
    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    .line 307
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    .line 318
    iput-wide v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    iput-wide v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downY:D

    .line 324
    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    .line 326
    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    .line 328
    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnOnTouch:I

    .line 330
    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnOnTouch:I

    .line 336
    iput v6, p0, Lcom/swype/android/widget/HorizontalChoiceView;->minHwclTipTextSize:F

    .line 352
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    .line 353
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 354
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 356
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFontDescent:I

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->minHwclTipTextSize:F

    .line 362
    invoke-virtual {p0, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->setWillNotDraw(Z)V

    .line 363
    invoke-virtual {p0, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->setHorizontalScrollBarEnabled(Z)V

    .line 364
    invoke-virtual {p0, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->setVerticalScrollBarEnabled(Z)V

    .line 366
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/swype/android/widget/HorizontalChoiceView$1;

    invoke-direct {v1, p0}, Lcom/swype/android/widget/HorizontalChoiceView$1;-><init>(Lcom/swype/android/widget/HorizontalChoiceView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->gestureDetector:Landroid/view/GestureDetector;

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/widget/HorizontalChoiceView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/swype/android/widget/HorizontalChoiceView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/swype/android/widget/HorizontalChoiceView;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/swype/android/widget/HorizontalChoiceView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/swype/android/widget/HorizontalChoiceView;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downY:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/swype/android/widget/HorizontalChoiceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/swype/android/widget/HorizontalChoiceView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    return p1
.end method

.method static synthetic access$400(Lcom/swype/android/widget/HorizontalChoiceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnOnTouch:I

    return v0
.end method

.method static synthetic access$500(Lcom/swype/android/widget/HorizontalChoiceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnOnTouch:I

    return v0
.end method

.method static synthetic access$600(Lcom/swype/android/widget/HorizontalChoiceView;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/swype/android/widget/HorizontalChoiceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/swype/android/widget/HorizontalChoiceView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/swype/android/widget/HorizontalChoiceView;)Lcom/swype/android/widget/HorizontalViewClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->listener:Lcom/swype/android/widget/HorizontalViewClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/swype/android/widget/HorizontalChoiceView;)Lcom/swype/android/widget/HorizontalChoiceViewContainer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->parentContainer:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    return-object v0
.end method

.method private calculateWordBoundaries()V
    .registers 19

    .prologue
    .line 594
    const/4 v2, 0x0

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWidth:I

    move v3, v0

    div-int/lit8 v4, v3, 0x5

    .line 596
    const/4 v3, -0x1

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-nez v5, :cond_26

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/swype/android/widget/HwclTheme;->getLockDrawableId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    .line 602
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-nez v5, :cond_43

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/swype/android/widget/HwclTheme;->getAddWordDrawable()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    .line 605
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-nez v5, :cond_60

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/swype/android/widget/HwclTheme;->getSwypeKeyDrawable()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 609
    :cond_60
    const/4 v5, 0x0

    move v6, v3

    move v7, v2

    :goto_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_1a5

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    .line 612
    invoke-virtual {v3}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->getCandidateType()I

    move-result v8

    .line 613
    if-nez v2, :cond_a8

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    move-object v2, v0

    const/4 v3, 0x0

    aput v3, v2, v5

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mTextWidth:[I

    move-object v2, v0

    const/4 v3, 0x0

    aput v3, v2, v5

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    move-object v2, v0

    aput v7, v2, v5

    move v2, v6

    move v3, v7

    .line 609
    :goto_a3
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v7, v3

    goto :goto_63

    .line 621
    :cond_a8
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v9

    .line 622
    if-nez v9, :cond_192

    .line 623
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    .line 624
    const/4 v10, 0x1

    if-eq v8, v10, :cond_ba

    const/4 v10, 0x2

    if-ne v8, v10, :cond_13c

    .line 626
    :cond_ba
    const/4 v8, 0x3

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v8

    .line 632
    :goto_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v9, v0

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 634
    const/4 v8, 0x0

    .line 635
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v9

    .line 636
    if-eqz v9, :cond_db

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    .line 640
    :cond_db
    if-nez v9, :cond_e5

    const/16 v9, 0x10

    invoke-virtual {v3, v9}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v9

    if-eqz v9, :cond_14d

    .line 642
    :cond_e5
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    .line 643
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_14d

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 645
    const-string v11, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    move-object v12, v0

    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    move v12, v0

    if-eqz v12, :cond_14b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    .line 647
    :goto_114
    const/high16 v13, 0x41a0

    add-float/2addr v12, v13

    .line 648
    :goto_117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->minHwclTipTextSize:F

    move v13, v0

    cmpl-float v13, v10, v13

    if-ltz v13, :cond_14d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float/2addr v13, v12

    cmpl-float v13, v13, v9

    if-ltz v13, :cond_14d

    .line 649
    float-to-double v13, v10

    const-wide/high16 v15, 0x4000

    sub-double/2addr v13, v15

    double-to-float v10, v13

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_117

    .line 628
    :cond_13c
    const/16 v8, 0x10

    invoke-virtual {v3, v8}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v8

    if-eqz v8, :cond_203

    .line 629
    const/4 v8, 0x1

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v8

    goto/16 :goto_bf

    .line 646
    :cond_14b
    int-to-float v12, v8

    goto :goto_114

    .line 655
    :cond_14d
    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v9, v2, v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    add-float/2addr v2, v8

    .line 656
    float-to-int v8, v2

    add-int/lit8 v8, v8, 0x14

    move/from16 v17, v8

    move v8, v2

    move/from16 v2, v17

    .line 661
    :goto_165
    if-ge v2, v4, :cond_170

    const/16 v9, 0x10

    invoke-virtual {v3, v9}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v9

    if-nez v9, :cond_170

    move v2, v4

    .line 664
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    move-object v9, v0

    aput v2, v9, v5

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mTextWidth:[I

    move-object v9, v0

    float-to-int v8, v8

    aput v8, v9, v5

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    move-object v8, v0

    aput v7, v8, v5

    .line 667
    add-int/2addr v2, v7

    .line 669
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v3

    if-eqz v3, :cond_1ff

    move v3, v2

    move v2, v5

    .line 670
    goto/16 :goto_a3

    .line 658
    :cond_192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 659
    float-to-int v8, v2

    add-int/lit8 v8, v8, 0x14

    move/from16 v17, v8

    move v8, v2

    move/from16 v2, v17

    goto :goto_165

    .line 673
    :cond_1a5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    move v2, v0

    if-eqz v2, :cond_1fd

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v7

    .line 676
    :goto_1b6
    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1fc

    const/4 v3, -0x1

    if-eq v6, v3, :cond_1fc

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    move v4, v0

    sub-int/2addr v3, v4

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    move-object v4, v0

    aget v5, v4, v6

    add-int/2addr v5, v3

    aput v5, v4, v6

    .line 685
    add-int/lit8 v4, v6, 0x1

    :goto_1df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1f7

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    move-object v5, v0

    aget v6, v5, v4

    add-int/2addr v6, v3

    aput v6, v5, v4

    .line 685
    add-int/lit8 v4, v4, 0x1

    goto :goto_1df

    .line 688
    :cond_1f7
    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    .line 690
    :cond_1fc
    return-void

    :cond_1fd
    move v2, v7

    goto :goto_1b6

    :cond_1ff
    move v3, v2

    move v2, v6

    goto/16 :goto_a3

    :cond_203
    move-object v8, v9

    goto/16 :goto_bf
.end method

.method private clear()V
    .registers 4

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    monitor-enter v0

    .line 1035
    :try_start_3
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1036
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1037
    const/4 v1, -0x1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 1038
    const/4 v1, -0x1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    .line 1039
    const/4 v1, -0x1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnOnTouch:I

    .line 1040
    const/4 v1, -0x1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnOnTouch:I

    .line 1041
    const/4 v1, 0x0

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    .line 1042
    const/4 v1, 0x0

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    .line 1043
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    .line 1044
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1045
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1046
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private drawIcon(Landroid/graphics/Canvas;I)V
    .registers 10
    .parameter "canvas"
    .parameter "iconOffset"

    .prologue
    const/4 v6, 0x0

    .line 900
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 901
    .local v1, iconWidth:I
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 902
    .local v0, iconHeight:I
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    .line 904
    .local v2, topOffset:I
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    add-int v5, v2, v0

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 906
    int-to-float v3, p2

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 907
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 908
    neg-int v3, p2

    int-to-float v3, v3

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 909
    return-void
.end method

.method private getSelectionType()I
    .registers 11

    .prologue
    const-wide/high16 v8, -0x4010

    .line 1021
    iget-wide v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->lastX:D

    iget-wide v6, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1022
    .local v0, deltaX:D
    iget-wide v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->lastY:D

    iget-wide v6, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downY:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 1024
    .local v2, deltaY:D
    iget-boolean v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mIsScrolling:Z

    if-nez v4, :cond_2e

    const-wide/high16 v4, 0x4034

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_22

    cmpg-double v4, v2, v0

    if-ltz v4, :cond_2e

    :cond_22
    iget-wide v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_2e

    iget-wide v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downY:D

    cmpl-double v4, v4, v8

    if-nez v4, :cond_30

    .line 1025
    :cond_2e
    const/4 v4, 0x0

    .line 1030
    :goto_2f
    return v4

    .line 1026
    :cond_30
    iget-wide v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->lastY:D

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3d

    .line 1028
    const/4 v4, 0x2

    goto :goto_2f

    .line 1030
    :cond_3d
    const/4 v4, 0x1

    goto :goto_2f
.end method

.method private scrollToTarget()V
    .registers 5

    .prologue
    .line 1061
    iget v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_26

    .line 1062
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v1

    .line 1063
    .local v1, scrollX:I
    add-int/lit8 v1, v1, 0x1e

    .line 1064
    const/4 v0, 0x0

    .line 1065
    .local v0, needsRelayout:Z
    iget v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    if-lt v1, v2, :cond_16

    .line 1066
    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    .line 1067
    const/4 v0, 0x1

    .line 1069
    :cond_16
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    .line 1070
    if-eqz v0, :cond_22

    .line 1071
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->requestLayout()V

    .line 1086
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    .line 1087
    return-void

    .line 1074
    .end local v0           #needsRelayout:Z
    .end local v1           #scrollX:I
    :cond_26
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v1

    .line 1075
    .restart local v1       #scrollX:I
    add-int/lit8 v1, v1, -0x1e

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .restart local v0       #needsRelayout:Z
    iget v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    if-gt v1, v2, :cond_34

    .line 1078
    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    .line 1079
    const/4 v0, 0x1

    .line 1081
    :cond_34
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    .line 1082
    if-eqz v0, :cond_22

    .line 1083
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->requestLayout()V

    goto :goto_22
.end method


# virtual methods
.method public computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 1057
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    return v0
.end method

.method public getDefaultIndex()I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    return v0
.end method

.method public getNumberOfChoiceWords()I
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTotalWidth()I
    .registers 2

    .prologue
    .line 463
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    return v0
.end method

.method public getWords()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    monitor-enter v0

    .line 1052
    :try_start_3
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1053
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isLocked()Z
    .registers 2

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mIsLocked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter

    .prologue
    .line 698
    if-nez p1, :cond_3

    .line 896
    :goto_2
    return-void

    .line 701
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 702
    const/4 v5, 0x0

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mFontDescent:I

    move v7, v0

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v13, v6, 0x2

    .line 706
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 711
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-nez v6, :cond_82

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/swype/android/widget/HwclTheme;->getDividerDrawableId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 716
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-nez v6, :cond_9f

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/swype/android/widget/HwclTheme;->getPressedDrawableId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 719
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->tappedHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-nez v6, :cond_bc

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/swype/android/widget/HwclTheme;->getTappedDrawableId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->tappedHighlight:Landroid/graphics/drawable/Drawable;

    .line 722
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-nez v6, :cond_d9

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/swype/android/widget/HwclTheme;->getLockDrawableId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    .line 726
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-nez v6, :cond_f6

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/swype/android/widget/HwclTheme;->getAddWordDrawable()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    .line 730
    :cond_f6
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    move-object v14, v0

    monitor-enter v14

    .line 734
    :try_start_107
    invoke-direct/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getSelectionType()I

    move-result v15

    .line 735
    const/16 v6, 0x1f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v17

    .line 737
    const/4 v6, 0x0

    move/from16 v18, v6

    move v7, v5

    :goto_122
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_479

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 739
    if-eqz v5, :cond_4ae

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    move-object v6, v0

    aget v19, v6, v18

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mTextWidth:[I

    move-object v6, v0

    aget v8, v6, v18

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    move-object v12, v0

    .line 746
    invoke-virtual {v12}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->getCandidateType()I

    move-result v20

    .line 749
    const/4 v6, 0x2

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_1b5

    add-int v6, v7, v19

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_1b5

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v6

    add-int v6, v6, v17

    if-ge v7, v6, :cond_1b5

    .line 752
    int-to-float v6, v7

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->tappedHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v11, v11, v21

    move-object v0, v6

    move v1, v9

    move v2, v10

    move/from16 v3, v19

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->tappedHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 756
    neg-int v6, v7

    int-to-float v6, v6

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 767
    :cond_1b5
    add-int v6, v7, v19

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_476

    add-int/lit8 v6, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v9

    add-int v9, v9, v17

    if-ge v6, v9, :cond_476

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    move v6, v0

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1d4

    .line 770
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    .line 772
    :cond_1d4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    .line 773
    const/4 v6, 0x4

    invoke-virtual {v12, v6}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v6

    .line 775
    const/4 v9, 0x1

    if-ne v15, v9, :cond_1ee

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    move v9, v0

    move/from16 v0, v18

    move v1, v9

    if-ne v0, v1, :cond_1ee

    if-eqz v6, :cond_1fd

    :cond_1ee
    const/4 v9, 0x2

    if-ne v15, v9, :cond_27e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    move v9, v0

    move/from16 v0, v18

    move v1, v9

    if-ne v0, v1, :cond_27e

    if-nez v6, :cond_27e

    :cond_1fd
    const/4 v6, 0x1

    .line 786
    :goto_1fe
    if-eqz v6, :cond_247

    .line 787
    int-to-float v9, v7

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object v0, v9

    move v1, v10

    move v2, v11

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 791
    neg-int v9, v7

    int-to-float v9, v9

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 798
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    move-object v9, v0

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 800
    const/4 v5, 0x0

    :goto_259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-ge v5, v9, :cond_281

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    move-object v9, v0

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_27b

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    move-object v9, v0

    const/16 v10, 0x20

    invoke-virtual {v9, v5, v10}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 800
    :cond_27b
    add-int/lit8 v5, v5, 0x1

    goto :goto_259

    .line 775
    :cond_27e
    const/4 v6, 0x0

    goto/16 :goto_1fe

    .line 806
    :cond_281
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v5

    .line 808
    if-nez v5, :cond_408

    .line 809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_36f

    const/4 v5, 0x1

    .line 810
    :goto_293
    if-eqz v5, :cond_372

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    .line 812
    :goto_29a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->plainTextColor:I

    move v10, v0

    .line 813
    if-eqz v6, :cond_379

    .line 814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->pressedWordColor:I

    move v5, v0

    .line 820
    :goto_2a6
    const/4 v6, 0x5

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_382

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->customTextColor:I

    move v5, v0

    move-object v6, v9

    .line 830
    :goto_2b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v9, v0

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 833
    sub-int v5, v19, v8

    div-int/lit8 v5, v5, 0x2

    .line 834
    const/16 v6, 0x8

    invoke-virtual {v12, v6}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v6

    if-eqz v6, :cond_3a4

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    const/4 v11, 0x0

    add-int/2addr v8, v9

    invoke-virtual {v10, v11, v9, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 840
    int-to-float v8, v5

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mAddWord:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 842
    neg-int v8, v5

    int-to-float v8, v8

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 843
    add-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    move/from16 v21, v7

    .line 863
    :goto_314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->wordStrBuffer:Ljava/lang/StringBuffer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int v5, v5, v21

    int-to-float v9, v5

    int-to-float v10, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 867
    const/4 v5, 0x2

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_364

    const/16 v5, 0x10

    invoke-virtual {v12, v5}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v5

    if-nez v5, :cond_364

    .line 869
    add-int v5, v21, v19

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 871
    move/from16 v0, v21

    neg-int v0, v0

    move v5, v0

    sub-int v5, v5, v19

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_364
    move/from16 v5, v21

    .line 886
    :goto_366
    add-int v5, v5, v19

    .line 737
    :goto_368
    add-int/lit8 v6, v18, 0x1

    move/from16 v18, v6

    move v7, v5

    goto/16 :goto_122

    .line 809
    :cond_36f
    const/4 v5, 0x0

    goto/16 :goto_293

    .line 810
    :cond_372
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    goto/16 :goto_29a

    .line 816
    :cond_379
    if-eqz v5, :cond_4ab

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->defaultWordColor:I

    move v5, v0

    goto/16 :goto_2a6

    .line 823
    :cond_382
    const/4 v6, 0x6

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_390

    .line 824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->nwpWordColor:I

    move v5, v0

    move-object v6, v9

    goto/16 :goto_2b2

    .line 826
    :cond_390
    const/16 v6, 0x10

    invoke-virtual {v12, v6}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v6

    if-eqz v6, :cond_4a8

    .line 827
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->defaultWordColor:I

    move v5, v0

    .line 828
    const/4 v6, 0x1

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    goto/16 :goto_2b2

    .line 845
    :cond_3a4
    const/16 v6, 0x10

    invoke-virtual {v12, v6}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v6

    if-eqz v6, :cond_49d

    .line 846
    if-nez v18, :cond_3e4

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    move v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_4a5

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I

    move v8, v0

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    .line 850
    :goto_3c6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4a1

    .line 851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->drawIcon(Landroid/graphics/Canvas;I)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    move/from16 v21, v6

    goto/16 :goto_314

    .line 855
    :cond_3e4
    const/4 v6, 0x1

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_49d

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    move v6, v0

    const/4 v8, 0x2

    if-ne v6, v8, :cond_49d

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->drawIcon(Landroid/graphics/Canvas;I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mSwypeKeyIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v7

    move/from16 v21, v6

    goto/16 :goto_314

    .line 874
    :cond_408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    .line 875
    sub-int v6, v19, v5

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mBgPadding:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v6, v8, v9, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mLock:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 879
    neg-int v6, v7

    sub-int v5, v19, v5

    sub-int v5, v6, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 881
    add-int v5, v7, v19

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 883
    neg-int v5, v7

    sub-int v5, v5, v19

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_476
    move v5, v7

    goto/16 :goto_366

    .line 889
    :cond_479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_489

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->drawIcon(Landroid/graphics/Canvas;I)V

    .line 893
    :cond_489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v6

    if-eq v5, v6, :cond_497

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollToTarget()V

    .line 896
    :cond_497
    monitor-exit v14

    goto/16 :goto_2

    :catchall_49a
    move-exception v5

    monitor-exit v14
    :try_end_49c
    .catchall {:try_start_107 .. :try_end_49c} :catchall_49a

    throw v5

    :cond_49d
    move/from16 v21, v7

    goto/16 :goto_314

    :cond_4a1
    move/from16 v21, v6

    goto/16 :goto_314

    :cond_4a5
    move v6, v7

    goto/16 :goto_3c6

    :cond_4a8
    move-object v6, v9

    goto/16 :goto_2b2

    :cond_4ab
    move v5, v10

    goto/16 :goto_2a6

    :cond_4ae
    move v5, v7

    goto/16 :goto_368
.end method

.method public onLayout(ZIIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1091
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1092
    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    if-eqz v0, :cond_43

    .line 1093
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    monitor-enter v1

    .line 1094
    const/4 v0, -0x1

    :try_start_e
    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    .line 1095
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 1096
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 1097
    invoke-direct {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->calculateWordBoundaries()V

    .line 1098
    :goto_1e
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_37

    .line 1099
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->getCandidateType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_44

    .line 1100
    iput v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    .line 1105
    :cond_37
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    .line 1107
    monitor-exit v1

    .line 1109
    :cond_43
    return-void

    .line 1098
    :cond_44
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1e

    .line 1107
    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1117
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1118
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/widget/HorizontalChoiceView;->setMeasuredDimension(II)V

    .line 1119
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->lastX:D

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->lastY:D

    .line 916
    packed-switch v0, :pswitch_data_168

    .line 1011
    :goto_18
    :pswitch_18
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1012
    return v9

    .line 918
    :pswitch_1e
    iput-boolean v7, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mIsScrolling:Z

    .line 919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downY:D

    .line 921
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    monitor-enter v1

    .line 922
    :try_start_31
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnOnTouch:I

    .line 923
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnOnTouch:I

    .line 926
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 927
    iget-wide v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_71

    .line 928
    iget-wide v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    double-to-int v0, v2

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v2

    add-int/2addr v2, v0

    .line 929
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v7

    .line 930
    :goto_53
    if-ge v4, v3, :cond_71

    .line 935
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    aget v0, v0, v4

    iget-object v5, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    aget v5, v5, v4

    add-int/2addr v0, v5

    if-ge v2, v0, :cond_76

    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_76

    .line 937
    iput v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 942
    :cond_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_31 .. :try_end_72} :catchall_7a

    .line 943
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    goto :goto_18

    .line 930
    :cond_76
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_53

    .line 942
    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    .line 954
    :pswitch_7d
    const/4 v0, 0x0

    .line 955
    invoke-direct {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getSelectionType()I

    move-result v1

    .line 957
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    monitor-enter v2

    .line 958
    const/4 v3, 0x2

    if-ne v1, v3, :cond_c0

    .line 959
    const/4 v0, -0x1

    :try_start_89
    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 960
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    if-eq v0, v8, :cond_bb

    .line 961
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    move v0, v9

    .line 997
    :goto_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_15a

    .line 998
    if-eqz v0, :cond_ab

    .line 999
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->listener:Lcom/swype/android/widget/HorizontalViewClickListener;

    if-eqz v0, :cond_ab

    .line 1000
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->listener:Lcom/swype/android/widget/HorizontalViewClickListener;

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->parentContainer:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    invoke-interface {v0, v2, v3, v1}, Lcom/swype/android/widget/HorizontalViewClickListener;->onHorizontalViewClicked(Lcom/swype/android/widget/HorizontalChoiceViewContainer;ILjava/lang/CharSequence;)V

    .line 1005
    :cond_ab
    iput v8, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 1006
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downY:D

    iput-wide v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->downX:D

    .line 1007
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->requestLayout()V

    .line 1008
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    goto/16 :goto_18

    .line 964
    :cond_bb
    :try_start_bb
    const-string v0, ""

    move-object v1, v0

    move v0, v7

    .line 965
    goto :goto_9b

    .line 967
    :cond_c0
    if-ne v1, v9, :cond_163

    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    if-eq v1, v8, :cond_163

    .line 968
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 970
    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    if-ne v1, v3, :cond_10d

    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    if-eq v1, v3, :cond_10d

    .line 972
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    iget v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    aget v3, v3, v4

    int-to-double v3, v3

    const-wide v5, 0x3fc9999999999998L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v1, v3

    .line 974
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v3

    if-le v3, v1, :cond_161

    .line 979
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    aget v1, v1, v3

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    .line 980
    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    move v1, v7

    :goto_109
    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 983
    goto :goto_9b

    :cond_10d
    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    if-ne v1, v3, :cond_15d

    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnIndex:I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    if-eq v1, v3, :cond_15d

    .line 984
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    iget v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    aget v3, v3, v4

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v1, v3

    .line 985
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_15d

    .line 990
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I

    iget v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mWordWidth:[I

    iget v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnIndex:I

    aget v3, v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    .line 992
    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    move-object v1, v0

    move v0, v7

    .line 993
    goto/16 :goto_9b

    .line 997
    :catchall_15a
    move-exception v0

    monitor-exit v2
    :try_end_15c
    .catchall {:try_start_bb .. :try_end_15c} :catchall_15a

    throw v0

    :cond_15d
    move-object v1, v0

    move v0, v9

    goto/16 :goto_9b

    :cond_161
    move v1, v9

    goto :goto_109

    :cond_163
    move-object v1, v0

    move v0, v7

    goto/16 :goto_9b

    .line 916
    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_7d
        :pswitch_18
    .end packed-switch
.end method

.method public setChoiceWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 467
    iput p1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWidth:I

    .line 468
    return-void
.end method

.method public setIME(Lcom/swype/android/widget/HorizontalChoiceViewContainer;Lcom/swype/android/widget/HorizontalViewClickListener;Lcom/swype/android/widget/HwclTheme;Lcom/swype/android/jni/SwypeCore;)V
    .registers 8
    .parameter "parentContainer"
    .parameter "listener"
    .parameter "theme"
    .parameter "core"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->parentContainer:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    .line 477
    iput-object p2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->listener:Lcom/swype/android/widget/HorizontalViewClickListener;

    .line 478
    iput-object p3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->theme:Lcom/swype/android/widget/HwclTheme;

    .line 479
    invoke-virtual {p3}, Lcom/swype/android/widget/HwclTheme;->getBackgroundResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/swype/android/widget/HorizontalChoiceView;->setBackgroundResource(I)V

    .line 483
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 484
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p3}, Lcom/swype/android/widget/HwclTheme;->getPlainTextColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->plainTextColor:I

    .line 485
    invoke-virtual {p3}, Lcom/swype/android/widget/HwclTheme;->getDefaultWordColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->defaultWordColor:I

    .line 486
    invoke-virtual {p3}, Lcom/swype/android/widget/HwclTheme;->getPressedWordColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->pressedWordColor:I

    .line 487
    invoke-virtual {p3}, Lcom/swype/android/widget/HwclTheme;->getJapaneseSpellingTextColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->customTextColor:I

    .line 488
    invoke-virtual {p3}, Lcom/swype/android/widget/HwclTheme;->getNWPWordColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->nwpWordColor:I

    .line 492
    const/16 v1, 0x35

    iget v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->defaultWordColor:I

    invoke-virtual {p4, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getOptionalSettingInt(II)I

    move-result v1

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->defaultWordColor:I

    .line 493
    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->defaultWordColor:I

    const/high16 v2, -0x100

    or-int/2addr v1, v2

    iput v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->defaultWordColor:I

    .line 494
    return-void
.end method

.method public setListOfWords(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 506
    invoke-direct {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->clear()V

    .line 507
    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    .line 508
    if-eqz p1, :cond_14d

    .line 509
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    monitor-enter v1

    .line 510
    const/4 v0, -0x1

    :try_start_e
    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I

    .line 511
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 512
    if-eqz p2, :cond_36

    move v2, v6

    .line 513
    :goto_18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 514
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    new-instance v4, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    .line 517
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mIsLocked:Z

    .line 522
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 523
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v0, v2, v0

    :goto_47
    if-lez v0, :cond_57

    .line 524
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    new-instance v3, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 526
    :cond_57
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14c

    .line 528
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->getCandidateType()I

    move-result v0

    .line 530
    packed-switch v0, :pswitch_data_15a

    .line 541
    const v0, 0x7f0a0009

    move v2, v0

    .line 545
    :goto_73
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 546
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    const-string v3, "%ICON%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 548
    const-string v3, "%ICON%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 549
    array-length v3, v0

    if-ne v3, v7, :cond_ee

    .line 551
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 552
    const/4 v0, 0x3

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    .line 572
    :cond_b2
    :goto_b2
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 573
    invoke-direct {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->calculateWordBoundaries()V

    .line 574
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    move v2, v6

    .line 575
    :goto_c6
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_14c

    .line 576
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mIsLocked:Z

    .line 575
    :cond_e0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c6

    .line 532
    :pswitch_e4
    const v0, 0x7f0a0001

    move v2, v0

    .line 533
    goto :goto_73

    .line 535
    :pswitch_e9
    const v0, 0x7f0a0012

    move v2, v0

    .line 536
    goto :goto_73

    .line 553
    :cond_ee
    array-length v3, v0

    if-le v3, v7, :cond_b2

    .line 554
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 556
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v0, 0x1

    iput v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    goto :goto_b2

    .line 585
    :catchall_10d
    move-exception v0

    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_e .. :try_end_10f} :catchall_10d

    throw v0

    .line 563
    :cond_110
    const/4 v3, 0x2

    :try_start_111
    iput v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->hwclTipIconPosition:I

    .line 564
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_b2

    .line 579
    :cond_13c
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView;->properties:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->getCandidateType()I

    move-result v0

    if-ne v0, v7, :cond_e0

    .line 580
    iput v2, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mDefaultIndex:I

    .line 585
    :cond_14c
    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_111 .. :try_end_14d} :catchall_10d

    .line 587
    :cond_14d
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    .line 588
    iput v6, p0, Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I

    .line 590
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    .line 591
    return-void

    .line 530
    :pswitch_data_15a
    .packed-switch 0x3
        :pswitch_e4
        :pswitch_e9
    .end packed-switch
.end method
