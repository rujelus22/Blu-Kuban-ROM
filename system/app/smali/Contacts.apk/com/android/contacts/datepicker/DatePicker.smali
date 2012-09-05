.class public Lcom/android/contacts/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePicker$SavedState;,
        Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# instance fields
.field private isMonthFirst:Z

.field private isMonthNext:Z

.field private isNumMonth:Z

.field private mCurrentLocale:Ljava/util/Locale;

.field protected mDay:I

.field private mDayNext:Landroid/widget/NumberPicker;

.field protected final mDayPicker:Landroid/widget/NumberPicker;

.field private mHasYear:Z

.field protected mMonth:I

.field private mMonthNext:Landroid/widget/NumberPicker;

.field protected final mMonthPicker:Landroid/widget/NumberPicker;

.field private mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

.field private mTempDate:Ljava/util/Calendar;

.field protected mYear:I

.field private mYearNext:Landroid/widget/NumberPicker;

.field private mYearOptional:Z

.field protected final mYearPicker:Landroid/widget/NumberPicker;

.field private final mYearToggle:Landroid/widget/CheckBox;

.field private months:[Ljava/lang/String;

.field private numberOfMonths:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 130
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 132
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04004d

    const/4 v7, 0x1

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 134
    const v6, 0x7f0d011d

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 135
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v7, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 136
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 138
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 139
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 140
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$1;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 147
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$2;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$2;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    const v6, 0x7f0d011c

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 179
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v7, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 181
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    .line 188
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_168

    .line 189
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7d
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_8f

    .line 190
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 192
    :cond_8f
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    .line 193
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 194
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 195
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v7, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 196
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 197
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 206
    .end local v2           #i:I
    :goto_b1
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 207
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$3;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 224
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$4;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$4;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    const v6, 0x7f0d011e

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 259
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 260
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 261
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 262
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$5;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$5;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 272
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$6;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$6;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    const v6, 0x7f0d011a

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    .line 295
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$7;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$7;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 306
    sget-object v6, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 309
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/16 v7, 0x76c

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 311
    .local v5, mStartYear:I
    const/4 v6, 0x2

    const/16 v7, 0x7f4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 313
    .local v4, mEndYear:I
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 314
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 316
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 320
    .local v1, cal:Ljava/util/Calendar;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 321
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->isMonthFirst:Z

    .line 322
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->isMonthNext:Z

    .line 325
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_167

    .line 328
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->setEnabled(Z)V

    .line 330
    :cond_167
    return-void

    .line 199
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v4           #mEndYear:I
    .end local v5           #mStartYear:I
    :cond_168
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 200
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v7, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 202
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 204
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    goto/16 :goto_b1
.end method

.method static synthetic access$000(Lcom/android/contacts/datepicker/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/datepicker/DatePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isMonthNext:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->isMonthNext:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/datepicker/DatePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/datepicker/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/datepicker/DatePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isMonthFirst:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/contacts/datepicker/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method private adjustMaxDay()V
    .registers 5

    .prologue
    .line 643
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 645
    .local v0, cal:Ljava/util/Calendar;
    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_b
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 646
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 647
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 648
    .local v1, max:I
    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-le v2, v1, :cond_1f

    .line 649
    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 651
    :cond_1f
    return-void

    .line 645
    .end local v1           #max:I
    :cond_20
    const/16 v2, 0x7d0

    goto :goto_b
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 6
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 702
    if-nez p1, :cond_7

    .line 703
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 708
    :goto_6
    return-object v2

    .line 705
    :cond_7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 706
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 707
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_6
.end method

.method private getCurrentYear()I
    .registers 3

    .prologue
    .line 451
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private notifyDateChanged()V
    .registers 5

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_16

    .line 655
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_17

    const/4 v0, 0x0

    .line 656
    .local v0, year:I
    :goto_d
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V

    .line 658
    .end local v0           #year:I
    :cond_16
    return-void

    .line 655
    :cond_17
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_d
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .registers 16
    .parameter "months"

    .prologue
    const/16 v13, 0x64

    const/16 v12, 0x4d

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 370
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([C)V

    .line 376
    .local v6, order:Ljava/lang/String;
    const v10, 0x7f0d011b

    invoke-virtual {p0, v10}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 377
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 379
    const/4 v8, 0x0

    .line 380
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 382
    .local v3, didYear:Z
    iput-object v11, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    .line 383
    iput-object v11, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    .line 384
    iput-object v11, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;

    .line 386
    const/4 v4, 0x0

    .line 387
    .local v4, first:C
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_8c

    .line 388
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 390
    .local v0, c:C
    const/16 v10, 0x27

    if-ne v0, v10, :cond_3c

    .line 391
    if-nez v8, :cond_5c

    move v8, v9

    .line 394
    :cond_3c
    :goto_3c
    if-nez v8, :cond_59

    .line 395
    if-ne v0, v13, :cond_5e

    if-nez v1, :cond_5e

    .line 396
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    const/4 v1, 0x1

    .line 398
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 409
    :cond_51
    :goto_51
    or-int v10, v1, v2

    or-int/2addr v10, v3

    if-eqz v10, :cond_59

    if-nez v4, :cond_59

    .line 410
    move v4, v0

    .line 387
    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 391
    :cond_5c
    const/4 v8, 0x0

    goto :goto_3c

    .line 399
    :cond_5e
    if-eq v0, v12, :cond_64

    const/16 v10, 0x4c

    if-ne v0, v10, :cond_76

    :cond_64
    if-nez v2, :cond_76

    .line 400
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    const/4 v2, 0x1

    .line 402
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_51

    .line 403
    :cond_76
    const/16 v10, 0x79

    if-ne v0, v10, :cond_51

    if-nez v3, :cond_51

    .line 404
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    const/4 v3, 0x1

    .line 406
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v10, v11, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_51

    .line 416
    .end local v0           #c:C
    :cond_8c
    if-nez v2, :cond_93

    .line 417
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    :cond_93
    if-nez v1, :cond_9a

    .line 420
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    :cond_9a
    if-nez v3, :cond_a1

    .line 423
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    :cond_a1
    if-ne v4, v13, :cond_ac

    .line 427
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    .line 428
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    .line 437
    :goto_ab
    return-void

    .line 429
    :cond_ac
    if-ne v4, v12, :cond_b9

    .line 430
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iput-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    .line 431
    iget-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iput-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    .line 432
    iput-boolean v9, p0, Lcom/android/contacts/datepicker/DatePicker;->isMonthFirst:Z

    goto :goto_ab

    .line 434
    :cond_b9
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;

    .line 435
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    goto :goto_ab
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 6
    .parameter "locale"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 693
    :cond_8
    return-void

    .line 685
    :cond_9
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 686
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/android/contacts/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 687
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    .line 688
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    .line 689
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    if-ge v0, v1, :cond_8

    .line 690
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .registers 8
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    const/4 v3, 0x1

    .line 662
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_18

    .line 663
    const v0, 0x2000005

    .line 668
    .local v0, imeOptions:I
    :goto_8
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_17

    .line 669
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 670
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 672
    .end local v1           #input:Landroid/widget/TextView;
    :cond_17
    return-void

    .line 665
    .end local v0           #imeOptions:I
    :cond_18
    const v0, 0x2000006

    .restart local v0       #imeOptions:I
    goto :goto_8
.end method

.method private updateSpinners()V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 592
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 593
    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_58

    move v1, v2

    :goto_14
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 594
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 596
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 597
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 598
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_41

    .line 599
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 603
    .end local v0           #mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_41
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v4, :cond_5a

    :goto_47
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 609
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v1, :cond_5c

    .line 610
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 614
    :goto_57
    return-void

    :cond_58
    move v1, v3

    .line 593
    goto :goto_14

    :cond_5a
    move v2, v3

    .line 603
    goto :goto_47

    .line 612
    :cond_5c
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_57
.end method


# virtual methods
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
    .line 537
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 538
    return-void
.end method

.method public getDayOfMonth()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 635
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_9
.end method

.method public hasYear()Z
    .registers 2

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return v0
.end method

.method public init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .registers 11
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 568
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 569
    return-void
.end method

.method public init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .registers 8
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "yearOptional"
    .parameter "onDateChangedListener"

    .prologue
    const/4 v1, 0x1

    .line 581
    if-eqz p4, :cond_1e

    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    :goto_9
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 582
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 583
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 584
    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 585
    if-eqz p4, :cond_22

    if-eqz p1, :cond_20

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 586
    iput-object p5, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    .line 587
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 588
    return-void

    :cond_1e
    move v0, p1

    .line 581
    goto :goto_9

    .line 585
    :cond_20
    const/4 v0, 0x0

    goto :goto_16

    :cond_22
    move v0, v1

    goto :goto_16
.end method

.method public isYearOptional()Z
    .registers 2

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 549
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    .line 550
    .local v0, ss:Lcom/android/contacts/datepicker/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 551
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 552
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 553
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 554
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 555
    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 556
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 557
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .prologue
    .line 542
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 544
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 338
    return-void
.end method

.method public updateDate(III)V
    .registers 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 440
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-eq v0, p3, :cond_2e

    .line 441
    :cond_c
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result p1

    .end local p1
    :cond_16
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 442
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 443
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 444
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 445
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    .line 448
    :cond_2e
    return-void
.end method

.method protected updateDaySpinner()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 619
    .local v0, cal:Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_b
    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 620
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 621
    .local v1, max:I
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 622
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 623
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 624
    return-void

    .line 619
    .end local v1           #max:I
    :cond_27
    const/16 v2, 0x7d0

    goto :goto_b
.end method
