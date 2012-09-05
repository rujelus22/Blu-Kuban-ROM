.class public Lcom/swype/android/settings/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/SeekBarPreference$1;,
        Lcom/swype/android/settings/SeekBarPreference$ValueListener;,
        Lcom/swype/android/settings/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentValue:I

.field private label:Landroid/widget/TextView;

.field private maxLabel:Ljava/lang/String;

.field private maxValue:I

.field private minLabel:Ljava/lang/String;

.field private minValue:I

.field private seekbarControl:Landroid/widget/SeekBar;

.field private showValue:Z

.field private valueSubLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/swype/android/settings/SeekBarPreference;->context:Landroid/content/Context;

    .line 40
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->context:Landroid/content/Context;

    sget-object v2, Lcom/swype/android/inputmethod/R$styleable;->SeekBarPreference:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/swype/android/settings/SeekBarPreference;->minValue:I

    .line 42
    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/swype/android/settings/SeekBarPreference;->maxValue:I

    .line 43
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->minLabel:Ljava/lang/String;

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->maxLabel:Ljava/lang/String;

    .line 45
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/swype/android/settings/SeekBarPreference;->showValue:Z

    .line 46
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->valueSubLabel:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->valueSubLabel:Ljava/lang/String;

    if-nez v1, :cond_41

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->valueSubLabel:Ljava/lang/String;

    .line 50
    :cond_41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/swype/android/settings/SeekBarPreference;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/swype/android/settings/SeekBarPreference;->valueUI2Pref(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/swype/android/settings/SeekBarPreference;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/swype/android/settings/SeekBarPreference;->valueSubLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/swype/android/settings/SeekBarPreference;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/swype/android/settings/SeekBarPreference;->label:Landroid/widget/TextView;

    return-object v0
.end method

.method private setValue(I)V
    .registers 6
    .parameter "preferenceValue"

    .prologue
    .line 107
    iput p1, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    .line 108
    invoke-direct {p0, p1}, Lcom/swype/android/settings/SeekBarPreference;->valuePref2UI(I)I

    move-result v0

    .line 109
    .local v0, uiValue:I
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->seekbarControl:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/swype/android/settings/SeekBarPreference;->valueSubLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method private valuePref2UI(I)I
    .registers 3
    .parameter "value"

    .prologue
    .line 130
    iget v0, p0, Lcom/swype/android/settings/SeekBarPreference;->minValue:I

    sub-int v0, p1, v0

    return v0
.end method

.method private valueUI2Pref(I)I
    .registers 3
    .parameter "value"

    .prologue
    .line 120
    iget v0, p0, Lcom/swype/android/settings/SeekBarPreference;->minValue:I

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 3
    .parameter

    .prologue
    .line 138
    if-eqz p1, :cond_13

    .line 139
    iget-object v0, p0, Lcom/swype/android/settings/SeekBarPreference;->seekbarControl:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/swype/android/settings/SeekBarPreference;->valueUI2Pref(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    .line 140
    iget v0, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SeekBarPreference;->persistInt(I)Z

    .line 142
    :cond_13
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .parameter "a"
    .parameter "index"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/swype/android/settings/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 57
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v2

    .line 59
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03000e

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 60
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v1, 0x7f0d0019

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    iget-object v4, p0, Lcom/swype/android/settings/SeekBarPreference;->minLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {v1, v2}, Lcom/swype/android/widget/Themes;->setSeekbarTextColor(Landroid/widget/TextView;Lcom/swype/android/jni/SwypeCore;)V

    .line 67
    const v1, 0x7f0d001a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    iget-object v4, p0, Lcom/swype/android/settings/SeekBarPreference;->maxLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {v1, v2}, Lcom/swype/android/widget/Themes;->setSeekbarTextColor(Landroid/widget/TextView;Lcom/swype/android/jni/SwypeCore;)V

    .line 71
    const v1, 0x7f0d0018

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->seekbarControl:Landroid/widget/SeekBar;

    .line 72
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->seekbarControl:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/swype/android/settings/SeekBarPreference;->maxValue:I

    iget v5, p0, Lcom/swype/android/settings/SeekBarPreference;->minValue:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 74
    const v1, 0x7f0d0017

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->label:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->label:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/swype/android/widget/Themes;->setSeekbarTextColor(Landroid/widget/TextView;Lcom/swype/android/jni/SwypeCore;)V

    .line 76
    iget-boolean v1, p0, Lcom/swype/android/settings/SeekBarPreference;->showValue:Z

    if-nez v1, :cond_84

    .line 77
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->label:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :goto_71
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSettingsManager()Lcom/swype/android/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swype/android/settings/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/SettingsManager;->getIntValueByKey(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/swype/android/settings/SeekBarPreference;->setValue(I)V

    .line 99
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 100
    return-void

    .line 79
    :cond_84
    iget-object v1, p0, Lcom/swype/android/settings/SeekBarPreference;->seekbarControl:Landroid/widget/SeekBar;

    new-instance v2, Lcom/swype/android/settings/SeekBarPreference$ValueListener;

    invoke-direct {v2, p0, v6}, Lcom/swype/android/settings/SeekBarPreference$ValueListener;-><init>(Lcom/swype/android/settings/SeekBarPreference;Lcom/swype/android/settings/SeekBarPreference$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_71
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/swype/android/settings/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 187
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 196
    :goto_f
    return-void

    .line 192
    :cond_10
    check-cast p1, Lcom/swype/android/settings/SeekBarPreference$SavedState;

    .line 193
    invoke-virtual {p1}, Lcom/swype/android/settings/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 194
    iget v0, p1, Lcom/swype/android/settings/SeekBarPreference$SavedState;->value:I

    iput v0, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    .line 195
    invoke-virtual {p0}, Lcom/swype/android/settings/SeekBarPreference;->notifyChanged()V

    goto :goto_f
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 171
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 172
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/swype/android/settings/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v1

    .line 180
    :goto_b
    return-object v2

    .line 178
    :cond_c
    new-instance v0, Lcom/swype/android/settings/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/swype/android/settings/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 179
    .local v0, myState:Lcom/swype/android/settings/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    iput v2, v0, Lcom/swype/android/settings/SeekBarPreference$SavedState;->value:I

    move-object v2, v0

    .line 180
    goto :goto_b
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 153
    if-eqz p1, :cond_b

    .line 155
    iget v0, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    .line 161
    :goto_a
    return-void

    .line 159
    :cond_b
    iget v0, p0, Lcom/swype/android/settings/SeekBarPreference;->currentValue:I

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SeekBarPreference;->persistInt(I)Z

    goto :goto_a
.end method
