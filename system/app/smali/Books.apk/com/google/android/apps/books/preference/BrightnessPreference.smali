.class public Lcom/google/android/apps/books/preference/BrightnessPreference;
.super Landroid/widget/LinearLayout;
.source "BrightnessPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# instance fields
.field private mAutoDrawable:Landroid/graphics/drawable/Drawable;

.field private mAutoListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mBinding:Z

.field private mBrightnessAuto:Landroid/widget/CheckBox;

.field private mBrightnessScrub:Landroid/widget/SeekBar;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mMaxValue:I

.field private mMinValue:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScrubListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStep:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    .line 35
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    .line 36
    const/16 v1, 0x64

    iput v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    .line 37
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    .line 132
    new-instance v1, Lcom/google/android/apps/books/preference/BrightnessPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/BrightnessPreference$1;-><init>(Lcom/google/android/apps/books/preference/BrightnessPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 144
    new-instance v1, Lcom/google/android/apps/books/preference/BrightnessPreference$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/BrightnessPreference$2;-><init>(Lcom/google/android/apps/books/preference/BrightnessPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mScrubListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 53
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/BrightnessPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/preference/BrightnessPreference;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setBrightnessAutoChecked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/preference/BrightnessPreference;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->updateEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/view/Window;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/preference/BrightnessPreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getBrightnessValue()I

    move-result v0

    return v0
.end method

.method private adjustSeekBarRange()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getScrubMaxValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 208
    return-void
.end method

.method private getBrightnessValue()I
    .registers 6

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 182
    .local v0, brightnessAuto:Z
    if-eqz v0, :cond_a

    .line 183
    const/4 v1, -0x1

    .line 185
    :goto_9
    return v1

    :cond_a
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    iget v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    iget v3, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    iget-object v4, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_9
.end method

.method private getScrubMaxValue()I
    .registers 4

    .prologue
    .line 170
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    iget v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    sub-int v0, v1, v2

    .line 171
    .local v0, diff:I
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    rem-int v1, v0, v1

    if-nez v1, :cond_11

    .line 172
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    div-int v1, v0, v1

    .line 175
    :goto_10
    return v1

    :cond_11
    iget v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private setBrightnessAutoChecked(Z)V
    .registers 5
    .parameter "checked"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    const/16 v1, 0x2710

    :goto_b
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 127
    .local v0, invalidate:Z
    if-eqz v0, :cond_16

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 130
    :cond_16
    return-void

    .line 126
    .end local v0           #invalidate:Z
    :cond_17
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private setBrightnessValue(I)V
    .registers 6
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 191
    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    .line 192
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setBrightnessAutoChecked(Z)V

    .line 200
    :goto_8
    return-void

    .line 194
    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setBrightnessAutoChecked(Z)V

    .line 196
    iget v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMaxValue:I

    if-lt p1, v2, :cond_1d

    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getScrubMaxValue()I

    move-result v0

    .line 198
    .local v0, progress:I
    :goto_14
    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    if-gez v0, :cond_19

    move v0, v1

    .end local v0           #progress:I
    :cond_19
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_8

    .line 196
    :cond_1d
    iget v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mMinValue:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mStep:I

    div-int v0, v2, v3

    goto :goto_14
.end method

.method private updateEnabled()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 116
    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1b

    :goto_17
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 122
    :goto_1a
    return-void

    :cond_1b
    move v0, v1

    .line 117
    goto :goto_17

    .line 119
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1a
.end method


# virtual methods
.method public bindPreference()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    .line 97
    :try_start_4
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, value:I
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setBrightnessValue(I)V

    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->updateEnabled()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_16

    .line 101
    iput-boolean v4, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    .line 103
    return-void

    .line 101
    .end local v0           #value:I
    :catchall_16
    move-exception v1

    iput-boolean v4, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z

    throw v1
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mScrubListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessScrub:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mBrightnessAuto:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mAutoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->adjustSeekBarRange()V

    .line 74
    return-void
.end method

.method public persistPreference()V
    .registers 5

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getBrightnessValue()I

    move-result v0

    .line 108
    .local v0, value:I
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v1, :cond_20

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 112
    :cond_20
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->updateEnabled()V

    .line 80
    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .registers 2
    .parameter "window"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mWindow:Landroid/view/Window;

    .line 84
    return-void
.end method

.method public setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
    .registers 3
    .parameter "prefs"
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 89
    iput-object p2, p0, Lcom/google/android/apps/books/preference/BrightnessPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->bindPreference()V

    .line 91
    return-void
.end method
