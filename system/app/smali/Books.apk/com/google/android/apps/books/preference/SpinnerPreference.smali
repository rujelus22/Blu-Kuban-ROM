.class public Lcom/google/android/apps/books/preference/SpinnerPreference;
.super Landroid/widget/LinearLayout;
.source "SpinnerPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# instance fields
.field private mBinding:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/preference/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    .line 151
    new-instance v1, Lcom/google/android/apps/books/preference/SpinnerPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/SpinnerPreference$1;-><init>(Lcom/google/android/apps/books/preference/SpinnerPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 45
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "missing entries"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "missing values"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/SpinnerPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    return v0
.end method


# virtual methods
.method public bindPreference()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    .line 122
    :try_start_5
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_32

    move-result-object v1

    .line 123
    .local v1, value:Ljava/lang/String;
    :cond_12
    if-nez v1, :cond_17

    .line 133
    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    .line 135
    :goto_16
    return-void

    .line 126
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2c

    .line 127
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 128
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_32

    .line 133
    :cond_2c
    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    goto :goto_16

    .line 126
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 133
    .end local v0           #i:I
    .end local v1           #value:Ljava/lang/String;
    :catchall_32
    move-exception v2

    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    throw v2
.end method

.method protected createAdapter([Ljava/lang/CharSequence;)Landroid/widget/ArrayAdapter;
    .registers 6
    .parameter "entries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    iget-object v3, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 94
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 95
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 104
    .local v0, index:I
    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public persistPreference()V
    .registers 5

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 149
    :cond_6
    :goto_6
    return-void

    .line 142
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1a

    .line 143
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 146
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v1, :cond_6

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 79
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "entries"
    .parameter "values"

    .prologue
    .line 82
    const-string v1, "missing entries"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 83
    const-string v1, "missing values"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    .line 84
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x1

    :goto_19
    const-string v2, "mismatched entries and values"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/preference/SpinnerPreference;->createAdapter([Ljava/lang/CharSequence;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 88
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    return-void

    .line 84
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_2a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
    .registers 3
    .parameter "prefs"
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 114
    iput-object p2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->bindPreference()V

    .line 116
    return-void
.end method
