.class public Lcom/android/browser/preferences/GeneralPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mTablet:Z


# instance fields
.field mChoices:[Ljava/lang/String;

.field mCurrentPage:Ljava/lang/String;

.field mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private updateGeneralEDMPref()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 266
    .local v2, lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v0

    .line 268
    .local v0, lBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;
    if-eqz v0, :cond_29

    .line 269
    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v3

    if-nez v3, :cond_29

    .line 270
    const-string v3, "autofill_enabled"

    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 271
    .local v1, lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_29

    .line 272
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 277
    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    :cond_29
    return-void
.end method


# virtual methods
.method getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 240
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 241
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChoices:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 244
    :goto_14
    return-object v1

    .line 239
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method getHomepageSummary()Ljava/lang/String;
    .registers 4

    .prologue
    .line 227
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 228
    .local v1, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 229
    const-string v2, "most_visited"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_10
    :goto_10
    return-object v0

    .line 231
    :cond_11
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, homepage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "about:blank"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 233
    :cond_23
    const-string v2, "blank"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method getHomepageValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 208
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    .line 209
    .local v2, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, homepage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "about:blank"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 211
    :cond_16
    const-string v3, "blank"

    .line 223
    :goto_18
    return-object v3

    .line 213
    :cond_19
    const-string v3, "content://com.android.browser.home/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 214
    const-string v3, "most_visited"

    goto :goto_18

    .line 216
    :cond_24
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, defaultHomepage:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 218
    const-string v3, "default"

    goto :goto_18

    .line 220
    :cond_35
    iget-object v3, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 221
    const-string v3, "current"

    goto :goto_18

    .line 223
    :cond_40
    const-string v3, "other"

    goto :goto_18
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mTablet:Z

    .line 86
    sget-boolean v2, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mTablet:Z

    if-eqz v2, :cond_65

    .line 87
    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChoices:[Ljava/lang/String;

    .line 88
    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mValues:[Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "currentPage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    .line 92
    const v2, 0x7f060009

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->addPreferencesFromResource(I)V

    .line 103
    :goto_47
    const-string v2, "homepage_picker"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 105
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    return-void

    .line 94
    .end local v0           #pref:Landroid/preference/ListPreference;
    :cond_65
    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChoices:[Ljava/lang/String;

    .line 95
    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mValues:[Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "currentPage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    .line 99
    const v2, 0x7f06000a

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->addPreferencesFromResource(I)V

    goto :goto_47
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_10

    .line 116
    const-string v1, "PageContentPreferencesFragment"

    const-string v3, "onPreferenceChange called from detached fragment!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 152
    .end local p1
    :goto_f
    return v1

    .line 120
    .restart local p1
    :cond_10
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "homepage_picker"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 121
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 122
    .local v0, settings:Lcom/android/browser/BrowserSettings;
    const-string v1, "current"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 123
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    move-object v1, p1

    .line 124
    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "current"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "homepage_picker"

    const-string v4, "current"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    :cond_48
    const-string v1, "blank"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 128
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    move-object v1, p1

    .line 129
    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "blank"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "homepage_picker"

    const-string v4, "blank"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    :cond_70
    const-string v1, "default"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 133
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    move-object v1, p1

    .line 134
    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "default"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "homepage_picker"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    :cond_9e
    const-string v1, "most_visited"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 138
    const-string v1, "content://com.android.browser.home/"

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    move-object v1, p1

    .line 139
    check-cast v1, Landroid/preference/ListPreference;

    const-string v3, "most_visited"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "homepage_picker"

    const-string v4, "most_visited"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    :cond_c6
    const-string v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 143
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V

    move v1, v2

    .line 146
    goto/16 :goto_f

    .line 148
    .restart local p1
    :cond_d6
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 149
    goto/16 :goto_f

    .line 152
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    :cond_e0
    const/4 v1, 0x1

    goto/16 :goto_f
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 249
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 251
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 253
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->refreshUi()V

    .line 257
    invoke-direct {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->updateGeneralEDMPref()V

    .line 259
    return-void
.end method

.method promptForHomepage(Landroid/preference/ListPreference;)V
    .registers 10
    .parameter "pref"

    .prologue
    const/4 v2, 0x1

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, digTopPadding:I
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    .line 158
    .local v7, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v4, 0x7f09

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mTablet:Z

    .line 159
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, editText:Landroid/widget/EditText;
    sget-boolean v0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mTablet:Z

    if-eqz v0, :cond_80

    .line 161
    const/4 v3, 0x6

    .line 165
    :goto_24
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 167
    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 170
    const/4 v0, 0x0

    const/4 v4, 0x6

    invoke-virtual {v1, v0, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v4, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;

    invoke-direct {v4, p0, v1, v7, p1}, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/widget/EditText;Lcom/android/browser/BrowserSettings;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v4, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;

    invoke-direct {v4, p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0080

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 192
    .local v6, dialog:Landroid/app/AlertDialog;
    new-instance v0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;

    invoke-direct {v0, p0, v6}, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 204
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 205
    return-void

    .line 163
    .end local v6           #dialog:Landroid/app/AlertDialog;
    :cond_80
    const/16 v3, 0x1a

    goto :goto_24
.end method

.method refreshUi()V
    .registers 3

    .prologue
    .line 281
    const-string v1, "autofill_profile"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 283
    .local v0, autoFillSettings:Landroid/preference/PreferenceScreen;
    const-string v1, "autofill_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 284
    return-void
.end method
