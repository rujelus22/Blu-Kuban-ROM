.class public Lcom/google/android/apps/books/preference/RadioGroupPreference;
.super Landroid/widget/LinearLayout;
.source "RadioGroupPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# instance fields
.field private mBinding:Z

.field private mGroup:Landroid/widget/RadioGroup;

.field private mGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z

    .line 110
    new-instance v1, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;-><init>(Lcom/google/android/apps/books/preference/RadioGroupPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 38
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/RadioGroupPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 50
    return-void
.end method

.method public persistPreference()V
    .registers 6

    .prologue
    .line 100
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 101
    .local v0, checkedId:I
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_23

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 105
    :cond_23
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v2, :cond_30

    .line 106
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 108
    :cond_30
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 56
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 57
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 58
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 59
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 61
    :cond_1d
    return-void
.end method
