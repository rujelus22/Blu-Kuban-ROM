.class public Lcom/google/android/apps/books/preference/TextZoomPreference;
.super Landroid/widget/LinearLayout;
.source "TextZoomPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# static fields
.field private static MIN_ZOOM:F

.field public static ZOOM_INCREMENT:F


# instance fields
.field private mBinding:Z

.field private mButtonsListener:Landroid/view/View$OnClickListener;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mMinus:Landroid/view/View;

.field private mPlus:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShouldBeEnabled:Z

.field private mTextZoomValue:F

.field private mTextZoomValueWasSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const v0, 0x3dcccccd

    .line 33
    sput v0, Lcom/google/android/apps/books/preference/TextZoomPreference;->MIN_ZOOM:F

    .line 34
    sput v0, Lcom/google/android/apps/books/preference/TextZoomPreference;->ZOOM_INCREMENT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/preference/TextZoomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mBinding:Z

    .line 128
    new-instance v1, Lcom/google/android/apps/books/preference/TextZoomPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/TextZoomPreference$1;-><init>(Lcom/google/android/apps/books/preference/TextZoomPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mButtonsListener:Landroid/view/View$OnClickListener;

    .line 56
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mKey:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/TextZoomPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mBinding:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/preference/TextZoomPreference;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValue:F

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/preference/TextZoomPreference;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mMinus:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/preference/TextZoomPreference;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mPlus:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/preference/TextZoomPreference;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->setTextSize(F)V

    return-void
.end method

.method private setTextSize(F)V
    .registers 6
    .parameter "value"

    .prologue
    .line 145
    sget v0, Lcom/google/android/apps/books/preference/TextZoomPreference;->MIN_ZOOM:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 146
    sget p1, Lcom/google/android/apps/books/preference/TextZoomPreference;->MIN_ZOOM:F

    .line 148
    :cond_8
    iput p1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValue:F

    .line 149
    const-string v0, "TextZoomPreference"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 150
    const-string v0, "TextZoomPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text zoom is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValue:F

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

    .line 152
    :cond_3a
    return-void
.end method


# virtual methods
.method public bindPreference()V
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mBinding:Z

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mBinding:Z

    .line 117
    return-void
.end method

.method public getTextZoom()F
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValue:F

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 77
    const v0, 0x7f0f005a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/TextZoomPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mMinus:Landroid/view/View;

    .line 78
    const v0, 0x7f0f005b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/TextZoomPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mPlus:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mMinus:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mPlus:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/TextZoomPreference;->setEnabled(Z)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mShouldBeEnabled:Z

    .line 87
    return-void
.end method

.method public persistPreference()V
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValue:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v0, :cond_1e

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 126
    :cond_1e
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mShouldBeEnabled:Z

    .line 92
    iget-boolean v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValueWasSet:Z

    if-eqz v1, :cond_17

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    .line 93
    .local v0, enableNow:Z
    :goto_9
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mMinus:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mPlus:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    return-void

    .line 92
    .end local v0           #enableNow:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setTextZoom(F)V
    .registers 4
    .parameter "textZoom"

    .prologue
    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValueWasSet:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->setTextSize(F)V

    .line 68
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mShouldBeEnabled:Z

    if-eqz v0, :cond_d

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->setEnabled(Z)V

    .line 71
    :cond_d
    return-void
.end method

.method public setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
    .registers 3
    .parameter "prefs"
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    iput-object p2, p0, Lcom/google/android/apps/books/preference/TextZoomPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/TextZoomPreference;->bindPreference()V

    .line 103
    return-void
.end method
