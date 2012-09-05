.class public Lcom/google/android/apps/books/preference/LineHeightPreference;
.super Landroid/widget/LinearLayout;
.source "LineHeightPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# static fields
.field private static MIN_VALUE:F

.field public static VALUE_INCREMENT:F


# instance fields
.field private mBinding:Z

.field private mButtonsListener:Landroid/view/View$OnClickListener;

.field private mKey:Ljava/lang/String;

.field private mLineHeightValue:F

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mMinus:Landroid/view/View;

.field private mPlus:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShouldBeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const v0, 0x3fc66666

    sput v0, Lcom/google/android/apps/books/preference/LineHeightPreference;->MIN_VALUE:F

    .line 26
    const/high16 v0, 0x3e80

    sput v0, Lcom/google/android/apps/books/preference/LineHeightPreference;->VALUE_INCREMENT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/preference/LineHeightPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mBinding:Z

    .line 102
    new-instance v1, Lcom/google/android/apps/books/preference/LineHeightPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/LineHeightPreference$1;-><init>(Lcom/google/android/apps/books/preference/LineHeightPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mButtonsListener:Landroid/view/View$OnClickListener;

    .line 47
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mKey:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/LineHeightPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mBinding:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/preference/LineHeightPreference;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mLineHeightValue:F

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/preference/LineHeightPreference;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mMinus:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/preference/LineHeightPreference;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPlus:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/preference/LineHeightPreference;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/preference/LineHeightPreference;->setLineHeight(F)V

    return-void
.end method

.method private setLineHeight(F)V
    .registers 6
    .parameter "value"

    .prologue
    .line 119
    sget v0, Lcom/google/android/apps/books/preference/LineHeightPreference;->MIN_VALUE:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 120
    sget p1, Lcom/google/android/apps/books/preference/LineHeightPreference;->MIN_VALUE:F

    .line 122
    :cond_8
    iput p1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mLineHeightValue:F

    .line 123
    const-string v0, "LineHeightPreference"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 124
    const-string v0, "LineHeightPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line height is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mLineHeightValue:F

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mMinus:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mShouldBeEnabled:Z

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mLineHeightValue:F

    sget v2, Lcom/google/android/apps/books/preference/LineHeightPreference;->MIN_VALUE:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4d

    const/4 v0, 0x1

    :goto_49
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    return-void

    .line 126
    :cond_4d
    const/4 v0, 0x0

    goto :goto_49
.end method


# virtual methods
.method public bindPreference()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mBinding:Z

    .line 85
    :try_start_4
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 86
    .local v0, value:F
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/preference/LineHeightPreference;->setLineHeight(F)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_13

    .line 88
    iput-boolean v4, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mBinding:Z

    .line 90
    return-void

    .line 88
    .end local v0           #value:F
    :catchall_13
    move-exception v1

    iput-boolean v4, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mBinding:Z

    throw v1
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/LineHeightPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mMinus:Landroid/view/View;

    .line 58
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/LineHeightPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPlus:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mMinus:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPlus:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mShouldBeEnabled:Z

    .line 64
    return-void
.end method

.method public persistPreference()V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mLineHeightValue:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 97
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v0, :cond_22

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 100
    :cond_22
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 69
    iput-boolean p1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mShouldBeEnabled:Z

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mMinus:Landroid/view/View;

    if-eqz p1, :cond_1b

    iget v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mLineHeightValue:F

    sget v2, Lcom/google/android/apps/books/preference/LineHeightPreference;->MIN_VALUE:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPlus:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    return-void

    .line 70
    :cond_1b
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
    .registers 3
    .parameter "prefs"
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 77
    iput-object p2, p0, Lcom/google/android/apps/books/preference/LineHeightPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/LineHeightPreference;->bindPreference()V

    .line 79
    return-void
.end method
