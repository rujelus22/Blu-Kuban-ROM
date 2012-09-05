.class public Lcom/android/inputmethod/latin/LatinIMESettings;
.super Landroid/preference/PreferenceActivity;
.source "LatinIMESettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final PREDICTION_SETTINGS_KEY:Ljava/lang/String; = "prediction_settings"

.field private static final QUICK_FIXES_KEY:Ljava/lang/String; = "quick_fixes"

.field private static final SHOW_SUGGESTIONS_KEY:Ljava/lang/String; = "show_suggestions"


# instance fields
.field private mQuickFixes:Landroid/preference/CheckBoxPreference;

.field private mShowSuggestions:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "quick_fixes"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    .line 46
    const-string v0, "show_suggestions"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mShowSuggestions:Landroid/preference/CheckBoxPreference;

    .line 47
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v0

    .line 54
    .local v0, autoTextSize:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1c

    .line 55
    const-string v1, "prediction_settings"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    :goto_1b
    return-void

    .line 58
    :cond_1c
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mShowSuggestions:Landroid/preference/CheckBoxPreference;

    const-string v2, "quick_fixes"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 70
    const-string v0, "NBEST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NBEST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_NBest:Z

    .line 75
    :cond_15
    return-void
.end method
