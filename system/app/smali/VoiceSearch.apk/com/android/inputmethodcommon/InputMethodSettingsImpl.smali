.class Lcom/android/inputmethodcommon/InputMethodSettingsImpl;
.super Ljava/lang/Object;
.source "InputMethodSettingsImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodSettingsCategoryTitleRes:I

.field private mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtypeEnablerIconRes:I

.field private mSubtypeEnablerPreference:Landroid/preference/Preference;

.field private mSubtypeEnablerTitle:Ljava/lang/CharSequence;

.field private mSubtypeEnablerTitleRes:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getSubtypeEnablerTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method private static getEnabledSubtypesLabel(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "imm"
    .parameter "imi"

    .prologue
    .line 95
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    const/4 v5, 0x0

    .line 107
    :goto_7
    return-object v5

    .line 96
    :cond_8
    const/4 v5, 0x1

    invoke-virtual {p1, p2, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 97
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v0, :cond_3e

    .line 100
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 101
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2a

    .line 102
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_2a
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 107
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7
.end method

.method private static getMyImi(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7
    .parameter "context"
    .parameter "imm"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 85
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 86
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 90
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_25
    return-object v1

    .line 84
    .restart local v1       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 90
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_29
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private getSubtypeEnablerTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "context"

    .prologue
    .line 167
    iget v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    if-eqz v0, :cond_b

    .line 168
    iget v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    goto :goto_a
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z
    .registers 6
    .parameter "context"
    .parameter "prefScreen"

    .prologue
    const/4 v1, 0x1

    .line 52
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getMyImi(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 55
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    if-gt v0, v1, :cond_23

    .line 56
    :cond_21
    const/4 v0, 0x0

    .line 79
    :goto_22
    return v0

    .line 58
    :cond_23
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    .line 59
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    new-instance v2, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;-><init>(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    move v0, v1

    .line 79
    goto :goto_22
.end method

.method public setInputMethodSettingsCategoryTitle(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitleRes:I

    .line 115
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 116
    return-void
.end method

.method public setSubtypeEnablerTitle(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    .line 134
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 135
    return-void
.end method

.method public updateSubtypeEnabler()V
    .registers 5

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2f

    .line 176
    iget v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    if-eqz v1, :cond_30

    .line 177
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 181
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1, v2, v3}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getEnabledSubtypesLabel(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 183
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    :cond_24
    iget v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    if-eqz v1, :cond_40

    .line 186
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 191
    .end local v0           #summary:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 178
    :cond_30
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 179
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 187
    .restart local v0       #summary:Ljava/lang/String;
    :cond_40
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2f

    .line 188
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2f
.end method
