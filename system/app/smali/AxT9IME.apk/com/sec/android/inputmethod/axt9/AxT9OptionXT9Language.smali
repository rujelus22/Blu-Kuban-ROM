.class public Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;
.super Landroid/preference/PreferenceActivity;
.source "AxT9OptionXT9Language.java"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final PREFERENCE_KEY_SELECT_LANGUAGE:Ljava/lang/String;

.field private final PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

.field langListclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCheckedLangIndex:I

.field private mCheckedNum:I

.field private mCurrentLang:I

.field private mLangDBIDList:[S

.field private mLangListPreference:Landroid/preference/ListPreference;

.field private mLangPrefScreen:Landroid/preference/PreferenceScreen;

.field mLanguageList:[Ljava/lang/String;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private misKoreanOnly:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->DEBUG:Z

    .line 24
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->INFO:Z

    .line 25
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->ERROR:Z

    .line 32
    const-string v0, "select_language_list"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

    .line 34
    const-string v0, "select_language"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->PREFERENCE_KEY_SELECT_LANGUAGE:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mCurrentLang:I

    .line 37
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->misKoreanOnly:Z

    .line 39
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mCheckedNum:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mCheckedLangIndex:I

    .line 111
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->langListclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private XT9coreInit(S)V
    .registers 6
    .parameter "currentLangID"

    .prologue
    const/4 v3, 0x0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, wStatus:S
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 166
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 167
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v1

    if-nez v1, :cond_1c

    .line 168
    invoke-static {p1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 172
    :goto_17
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 173
    return-void

    .line 170
    :cond_1c
    const/16 v1, 0x9

    invoke-static {v1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_17
.end method

.method private getDefaultLocalLanguge()S
    .registers 5

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, sLocal:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    .local v1, n:I
    :goto_15
    if-ge v0, v1, :cond_41

    .line 155
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 156
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    .line 160
    :goto_3d
    return v3

    .line 154
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 160
    :cond_41
    const/16 v3, 0x9

    goto :goto_3d
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v11, 0x7f030021

    invoke-virtual {p0, v11}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->addPreferencesFromResource(I)V

    .line 48
    const-string v11, "select_language_list"

    invoke-virtual {p0, v11}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    .line 49
    new-instance v11, Landroid/preference/ListPreference;

    invoke-direct {v11, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangListPreference:Landroid/preference/ListPreference;

    .line 51
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLanguageList:[Ljava/lang/String;

    if-nez v11, :cond_ab

    .line 52
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 53
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v4, v11, [Ljava/lang/String;

    .line 54
    .local v4, langList:[Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v3, v11, [Ljava/lang/String;

    .line 55
    .local v3, langKey:[Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [S

    iput-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangDBIDList:[S

    .line 57
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v6

    .local v6, n:I
    :goto_4b
    if-ge v1, v6, :cond_95

    .line 58
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v10

    .line 59
    .local v10, stringId:I
    iget-object v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangDBIDList:[S

    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v11

    aput-short v11, v12, v1

    .line 60
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v1

    .line 61
    new-instance v11, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v11, v4, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 64
    .end local v10           #stringId:I
    :cond_95
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 65
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 67
    new-instance v7, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$1;

    invoke-direct {v7, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;)V

    .line 75
    .local v7, onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLanguageList:[Ljava/lang/String;

    .line 80
    .end local v1           #i:I
    .end local v3           #langKey:[Ljava/lang/String;
    .end local v4           #langList:[Ljava/lang/String;
    .end local v6           #n:I
    .end local v7           #onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    :cond_ab
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 82
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->getDefaultLocalLanguge()S

    move-result v5

    .line 83
    .local v5, localeLang:I
    const/4 v2, 0x0

    .line 85
    .local v2, langID:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 86
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mLangListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, selectedValue:Ljava/lang/String;
    if-eqz v8, :cond_cf

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 90
    :cond_cf
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_d0
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v11

    if-ge v1, v11, :cond_ec

    .line 91
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v11

    if-ne v5, v11, :cond_101

    .line 92
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mCurrentLang:I

    .line 97
    :cond_ec
    const-string v11, "select_language"

    iget v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mCurrentLang:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    move v2, v5

    .line 106
    .end local v1           #i:I
    :goto_f8
    sget-boolean v11, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v11, :cond_100

    .line 107
    int-to-short v11, v2

    invoke-direct {p0, v11}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->XT9coreInit(S)V

    .line 109
    :cond_100
    return-void

    .line 90
    .restart local v1       #i:I
    :cond_101
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 100
    .end local v1           #i:I
    :cond_104
    const-string v11, "select_language"

    const-string v12, "0"

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mCurrentLang:I

    .line 101
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->mCurrentLang:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v11}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v2

    goto :goto_f8
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 212
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "inSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 182
    return-void
.end method
