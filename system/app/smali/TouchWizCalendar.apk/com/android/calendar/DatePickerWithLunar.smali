.class public Lcom/android/calendar/DatePickerWithLunar;
.super Landroid/widget/FrameLayout;
.source "DatePickerWithLunar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;,
        Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;,
        Lcom/android/calendar/DatePickerWithLunar$SavedState;,
        Lcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYMMDD:I

.field private isNumMonth:Z

.field mCurrentDay:I

.field private mCurrentLocale:Ljava/util/Locale;

.field mCurrentMonth:I

.field mCurrentYear:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayDecrementButton:Landroid/widget/ImageButton;

.field private mDayIncrementButton:Landroid/widget/ImageButton;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mIsEnabled:Z

.field private mIsLeapMonth:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthDecrementButton:Landroid/widget/ImageButton;

.field mMonthEdit:Landroid/widget/EditText;

.field private mMonthIncrementButton:Landroid/widget/ImageButton;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mSetLunar:Z

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field mTempDate:Ljava/util/Calendar;

.field private mYearDecrementButton:Landroid/widget/ImageButton;

.field private mYearIncrementButton:Landroid/widget/ImageButton;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const-class v0, Lcom/android/calendar/DatePickerWithLunar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/DatePickerWithLunar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 188
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 26
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v19, "MM/dd/yyyy"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mDateFormat:Ljava/text/DateFormat;

    .line 144
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mIsEnabled:Z

    .line 940
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    .line 942
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    .line 944
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DatePickerWithLunar;->FORMAT_MMDDYYYY:I

    .line 946
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DatePickerWithLunar;->FORMAT_DDMMYYYY:I

    .line 948
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DatePickerWithLunar;->FORMAT_YYYYMMDD:I

    .line 954
    new-instance v18, Lcom/android/calendar/DatePickerWithLunar$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/DatePickerWithLunar$3;-><init>(Lcom/android/calendar/DatePickerWithLunar;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/calendar/DatePickerWithLunar;->setCurrentLocale(Ljava/util/Locale;)V

    .line 197
    sget-object v18, Lcom/android/internal/R$styleable;->DatePicker:[I

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 199
    .local v6, attributesArray:Landroid/content/res/TypedArray;
    const/16 v18, 0x5

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 201
    .local v16, spinnersShown:Z
    const/16 v18, 0x6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 203
    .local v7, calendarViewShown:Z
    const/16 v18, 0x1

    const/16 v19, 0x76c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 205
    .local v17, startYear:I
    const/16 v18, 0x2

    const/16 v19, 0x834

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 206
    .local v9, endYear:I
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, minDate:Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, maxDate:Ljava/lang/String;
    const/16 v18, 0x0

    const v19, 0x1090035

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 210
    .local v12, layoutResourceId:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    const-string v18, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 214
    .local v11, inflater:Landroid/view/LayoutInflater;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v11, v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 216
    new-instance v15, Lcom/android/calendar/DatePickerWithLunar$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/calendar/DatePickerWithLunar$1;-><init>(Lcom/android/calendar/DatePickerWithLunar;)V

    .line 263
    .local v15, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    const v18, 0x1020276

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendar/DatePickerWithLunar;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mSpinners:Landroid/widget/LinearLayout;

    .line 266
    const v18, 0x1020278

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendar/DatePickerWithLunar;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/NumberPicker;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const v19, 0x10202eb

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 275
    const v18, 0x1020277

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendar/DatePickerWithLunar;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/NumberPicker;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3d2

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mNumberOfMonths:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mMonthEdit:Landroid/widget/EditText;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setInputType(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    .line 306
    :goto_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0xc8

    invoke-virtual/range {v18 .. v20}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const v19, 0x10202eb

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 311
    const v18, 0x1020279

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendar/DatePickerWithLunar;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/NumberPicker;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const v19, 0x10202eb

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 318
    new-instance v5, Lcom/android/calendar/DatePickerWithLunar$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/calendar/DatePickerWithLunar$2;-><init>(Lcom/android/calendar/DatePickerWithLunar;)V

    .line 329
    .local v5, TouchListener:Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mDayIncrementButton:Landroid/widget/ImageButton;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mMonthIncrementButton:Landroid/widget/ImageButton;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mYearIncrementButton:Landroid/widget/ImageButton;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mDayDecrementButton:Landroid/widget/ImageButton;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mMonthDecrementButton:Landroid/widget/ImageButton;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mYearDecrementButton:Landroid/widget/ImageButton;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDayIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mDayDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mYearDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 347
    if-nez v16, :cond_432

    if-nez v7, :cond_432

    .line 348
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendar/DatePickerWithLunar;->setSpinnersShown(Z)V

    .line 355
    :goto_2f5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_440

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/calendar/DatePickerWithLunar;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v18

    if-nez v18, :cond_320

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 362
    :cond_320
    :goto_320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DatePickerWithLunar;->setMinDate(J)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->clear()V

    .line 366
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_457

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/android/calendar/DatePickerWithLunar;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v18

    if-nez v18, :cond_363

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x1f

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 373
    :cond_363
    :goto_363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DatePickerWithLunar;->setMaxDate(J)V

    .line 376
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 377
    .local v8, currDate:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 378
    iget v0, v8, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    .line 379
    iget v0, v8, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    .line 380
    iget v0, v8, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/DatePickerWithLunar;->init(IIILcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;)V

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DatePickerWithLunar;->reorderSpinners()V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_3d1

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DatePickerWithLunar;->setContentDescriptions()V

    .line 391
    :cond_3d1
    return-void

    .line 285
    .end local v5           #TouchListener:Landroid/view/View$OnTouchListener;
    .end local v8           #currDate:Landroid/text/format/Time;
    :cond_3d2
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_3f3

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v10

    .line 285
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d3

    .line 288
    :cond_3f3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    goto/16 :goto_1c2

    .line 350
    .end local v10           #i:I
    .restart local v5       #TouchListener:Landroid/view/View$OnTouchListener;
    :cond_432
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendar/DatePickerWithLunar;->setSpinnersShown(Z)V

    .line 351
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/calendar/DatePickerWithLunar;->setCalendarViewShown(Z)V

    goto/16 :goto_2f5

    .line 360
    :cond_440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_320

    .line 371
    :cond_457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x1f

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_363
.end method

.method static synthetic access$000(Lcom/android/calendar/DatePickerWithLunar;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/DatePickerWithLunar;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mSetLunar:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/DatePickerWithLunar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/calendar/DatePickerWithLunar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateInputState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/DatePickerWithLunar;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mIsLeapMonth:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DatePickerWithLunar;IIZZ)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DatePickerWithLunar;->getMaxMonthDay(IIZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/DatePickerWithLunar;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/DatePickerWithLunar;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/DatePickerWithLunar;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/DatePickerWithLunar;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/DatePickerWithLunar;->setDate(III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/DatePickerWithLunar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/DatePickerWithLunar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateCalendarView()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 6
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 575
    if-nez p1, :cond_7

    .line 576
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 581
    :goto_6
    return-object v2

    .line 578
    :cond_7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 579
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 580
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_6
.end method

.method private getMaxMonthDay(IIZZ)I
    .registers 10
    .parameter "year"
    .parameter "month"
    .parameter "isLunarCalendar"
    .parameter "isLeapMonth"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 1157
    const/4 v1, 0x0

    .line 1158
    .local v1, max:I
    if-ne p3, v3, :cond_a

    .line 1159
    invoke-static {p1, p2, p4}, Lcom/android/calendar/lunar/SolarLunarTables;->getDayLengthOf(IIZ)I

    move-result v1

    .line 1168
    :goto_9
    return v1

    .line 1161
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1162
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 1163
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1164
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1166
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    goto :goto_9
.end method

.method private notifyDateChanged()V
    .registers 5

    .prologue
    .line 820
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calendar/DatePickerWithLunar;->sendAccessibilityEvent(I)V

    .line 821
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mOnDateChangedListener:Lcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;

    if-eqz v0, :cond_19

    .line 822
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mOnDateChangedListener:Lcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;->onDateChanged(Lcom/android/calendar/DatePickerWithLunar;III)V

    .line 824
    :cond_19
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .registers 7
    .parameter "date"
    .parameter "outDate"

    .prologue
    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_9} :catch_b

    .line 691
    const/4 v1, 0x1

    .line 694
    :goto_a
    return v1

    .line 692
    :catch_b
    move-exception v0

    .line 693
    .local v0, e:Ljava/text/ParseException;
    sget-object v1, Lcom/android/calendar/DatePickerWithLunar;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private reorderSpinners()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 591
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 592
    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 593
    .local v2, order:[C
    array-length v3, v2

    .line 594
    .local v3, spinnerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v3, :cond_46

    .line 595
    aget-char v4, v2, v1

    sparse-switch v4, :sswitch_data_62

    .line 609
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 597
    :sswitch_1d
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v1}, Lcom/android/calendar/DatePickerWithLunar;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 594
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 601
    :sswitch_2c
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 602
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v1}, Lcom/android/calendar/DatePickerWithLunar;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_29

    .line 605
    :sswitch_39
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v1}, Lcom/android/calendar/DatePickerWithLunar;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_29

    .line 616
    :cond_46
    aget-char v0, v2, v6

    .line 617
    .local v0, c:C
    const/16 v4, 0x4d

    if-ne v0, v4, :cond_50

    .line 618
    invoke-direct {p0, v6}, Lcom/android/calendar/DatePickerWithLunar;->setTextWatcher(I)V

    .line 624
    :cond_4f
    :goto_4f
    return-void

    .line 619
    :cond_50
    const/16 v4, 0x64

    if-ne v0, v4, :cond_59

    .line 620
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/calendar/DatePickerWithLunar;->setTextWatcher(I)V

    goto :goto_4f

    .line 621
    :cond_59
    const/16 v4, 0x79

    if-ne v0, v4, :cond_4f

    .line 622
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/calendar/DatePickerWithLunar;->setTextWatcher(I)V

    goto :goto_4f

    .line 595
    :sswitch_data_62
    .sparse-switch
        0x4d -> :sswitch_2c
        0x64 -> :sswitch_1d
        0x79 -> :sswitch_39
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .registers 6

    .prologue
    const v4, 0x10202ec

    const v3, 0x10202ea

    .line 846
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    const v2, 0x1040562

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    const v2, 0x1040563

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 849
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    const v2, 0x1040560

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    const v2, 0x1040561

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    const v2, 0x1040564

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    const v2, 0x1040565

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 860
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 6
    .parameter "locale"

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 565
    :cond_8
    return-void

    .line 553
    :cond_9
    iput-object p1, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentLocale:Ljava/util/Locale;

    .line 555
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/android/calendar/DatePickerWithLunar;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    .line 556
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/android/calendar/DatePickerWithLunar;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    .line 557
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/android/calendar/DatePickerWithLunar;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    .line 559
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mNumberOfMonths:I

    .line 560
    iget v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mShortMonths:[Ljava/lang/String;

    .line 561
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    iget v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mNumberOfMonths:I

    if-ge v0, v1, :cond_8

    .line 562
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method private setDate(III)V
    .registers 9
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 703
    iput p1, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    .line 704
    iput p2, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    .line 705
    iput p3, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    .line 706
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 707
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 708
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    .line 709
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    .line 710
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    .line 716
    :cond_30
    :goto_30
    return-void

    .line 711
    :cond_31
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 712
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    .line 713
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    .line 714
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    goto :goto_30
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .registers 7
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    .line 835
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_14

    .line 836
    const v0, 0x2000005

    .line 840
    .local v0, imeOptions:I
    :goto_7
    const v2, 0x10202eb

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 841
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 842
    return-void

    .line 838
    .end local v0           #imeOptions:I
    .end local v1           #input:Landroid/widget/TextView;
    :cond_14
    const v0, 0x2000006

    .restart local v0       #imeOptions:I
    goto :goto_7
.end method

.method private setTextWatcher(I)V
    .registers 9
    .parameter "format"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 965
    packed-switch p1, :pswitch_data_146

    .line 1013
    :goto_8
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;-><init>(Lcom/android/calendar/DatePickerWithLunar;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1014
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;

    invoke-direct {v1, p0, v4}, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;-><init>(Lcom/android/calendar/DatePickerWithLunar;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1015
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;

    invoke-direct {v1, p0, v3}, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;-><init>(Lcom/android/calendar/DatePickerWithLunar;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1016
    return-void

    .line 967
    :pswitch_2d
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 968
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 969
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 971
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    if-eqz v0, :cond_7d

    .line 972
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 973
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 977
    :goto_64
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 978
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_8

    .line 975
    :cond_7d
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_64

    .line 982
    :pswitch_8a
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 983
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 984
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 986
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v3}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 987
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    if-eqz v0, :cond_db

    .line 988
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 989
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 993
    :goto_cd
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    .line 991
    :cond_db
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_cd

    .line 997
    :pswitch_e8
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 998
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 999
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1001
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v3}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1002
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    if-eqz v0, :cond_139

    .line 1003
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1004
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1008
    :goto_12b
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v4, v4, v3}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    .line 1006
    :cond_139
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/android/calendar/DatePickerWithLunar$TwTextWatcher;-><init>(Lcom/android/calendar/DatePickerWithLunar;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_12b

    .line 965
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_8a
        :pswitch_e8
    .end packed-switch
.end method

.method private updateCalendarView()V
    .registers 1

    .prologue
    .line 793
    return-void
.end method

.method private updateInputState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 868
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 869
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1b

    .line 870
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 871
    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 872
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 881
    :cond_1b
    :goto_1b
    return-void

    .line 873
    :cond_1c
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 874
    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 875
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1b

    .line 876
    :cond_31
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 877
    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 878
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1b
.end method

.method private updateSpinners()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 747
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 748
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    iget v3, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    iget-boolean v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mSetLunar:Z

    iget-boolean v5, p0, Lcom/android/calendar/DatePickerWithLunar;->mIsLeapMonth:Z

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/calendar/DatePickerWithLunar;->getMaxMonthDay(IIZZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 749
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 750
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 752
    iget-boolean v1, p0, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    if-eqz v1, :cond_8e

    .line 753
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 754
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 759
    :goto_33
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 764
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 767
    .local v0, displayedValues:[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    if-eqz v1, :cond_9b

    .line 768
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 773
    :goto_57
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 774
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 775
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 778
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 780
    iget-boolean v1, p0, Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z

    if-eqz v1, :cond_a1

    .line 781
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 786
    :goto_86
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 787
    return-void

    .line 756
    .end local v0           #displayedValues:[Ljava/lang/String;
    :cond_8e
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 757
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_33

    .line 770
    .restart local v0       #displayedValues:[Ljava/lang/String;
    :cond_9b
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_57

    .line 783
    :cond_a1
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_86
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/calendar/DatePickerWithLunar;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/calendar/DatePickerWithLunar;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 647
    return-void
.end method

.method public getDayOfMonth()I
    .registers 2

    .prologue
    .line 813
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 806
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 799
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    return v0
.end method

.method public init(IIILcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;)V
    .registers 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 676
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/DatePickerWithLunar;->setDate(III)V

    .line 677
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateSpinners()V

    .line 678
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateCalendarView()V

    .line 679
    iput-object p4, p0, Lcom/android/calendar/DatePickerWithLunar;->mOnDateChangedListener:Lcom/android/calendar/DatePickerWithLunar$OnDateChangedListener;

    .line 680
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/android/calendar/DatePickerWithLunar;->setCurrentLocale(Ljava/util/Locale;)V

    .line 495
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 482
    const/16 v0, 0x14

    .line 483
    .local v0, flags:I
    iget-object v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 484
    iget-object v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 485
    iget-object v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 486
    iget-object v2, p0, Lcom/android/calendar/DatePickerWithLunar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 657
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/DatePickerWithLunar$SavedState;

    .line 658
    .local v0, ss:Lcom/android/calendar/DatePickerWithLunar$SavedState;
    invoke-virtual {v0}, Lcom/android/calendar/DatePickerWithLunar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 659
    #getter for: Lcom/android/calendar/DatePickerWithLunar$SavedState;->mYear:I
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar$SavedState;->access$1300(Lcom/android/calendar/DatePickerWithLunar$SavedState;)I

    move-result v1

    #getter for: Lcom/android/calendar/DatePickerWithLunar$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar$SavedState;->access$1400(Lcom/android/calendar/DatePickerWithLunar$SavedState;)I

    move-result v2

    #getter for: Lcom/android/calendar/DatePickerWithLunar$SavedState;->mDay:I
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar$SavedState;->access$1500(Lcom/android/calendar/DatePickerWithLunar$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/DatePickerWithLunar;->setDate(III)V

    .line 660
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateSpinners()V

    .line 661
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateCalendarView()V

    .line 662
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 651
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 652
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/calendar/DatePickerWithLunar$SavedState;

    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DatePickerWithLunar$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/android/calendar/DatePickerWithLunar$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .registers 2
    .parameter "shown"

    .prologue
    .line 523
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    .line 465
    :goto_4
    return-void

    .line 460
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 464
    iput-boolean p1, p0, Lcom/android/calendar/DatePickerWithLunar;->mIsEnabled:Z

    goto :goto_4
.end method

.method public setMaxDate(J)V
    .registers 7
    .parameter "maxDate"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 446
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 447
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 453
    :goto_23
    return-void

    .line 451
    :cond_24
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 452
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateSpinners()V

    goto :goto_23
.end method

.method public setMinDate(J)V
    .registers 7
    .parameter "minDate"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 415
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 416
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 422
    :goto_23
    return-void

    .line 420
    :cond_24
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 421
    invoke-direct {p0}, Lcom/android/calendar/DatePickerWithLunar;->updateSpinners()V

    goto :goto_23
.end method

.method public setSpinnersShown(Z)V
    .registers 4
    .parameter "shown"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/calendar/DatePickerWithLunar;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    return-void

    .line 540
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
