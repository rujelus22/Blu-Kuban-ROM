.class public Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AxT9OptonAdvancedSettings.java"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final GET_CODE:I

.field private final INFO:Z

.field private final PREFERENCE_KEY_COMPLETION_POINT:Ljava/lang/String;

.field private final PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

.field private final PREFERENCE_KEY_SETTING_AUTOSUBS:Ljava/lang/String;

.field private final PREFERENCE_KEY_SETTING_MYWORDS:Ljava/lang/String;

.field private final PREFERENCE_KEY_TRACE:Ljava/lang/String;

.field private mCurrentLang:I

.field private mLangDBIDList:[S

.field mLanguageList:[Ljava/lang/String;

.field private mListPreference:Landroid/preference/ListPreference;

.field private mListPreference_completion_point:Landroid/preference/ListPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field mywordsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field substitutionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->DEBUG:Z

    .line 29
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->INFO:Z

    .line 30
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->ERROR:Z

    .line 35
    const-string v0, "axt9_ime_setting_mywords"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_SETTING_MYWORDS:Ljava/lang/String;

    .line 36
    const-string v0, "axt9_ime_setting_autosubstitution"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_SETTING_AUTOSUBS:Ljava/lang/String;

    .line 41
    const-string v0, "select_language_list"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

    .line 45
    const-string v0, "trace"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_TRACE:Ljava/lang/String;

    .line 46
    const-string v0, "word_completion_point"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->PREFERENCE_KEY_COMPLETION_POINT:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->GET_CODE:I

    .line 50
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 195
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mywordsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 205
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->substitutionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private GetStirngWithID(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private XT9coreInit(S)V
    .registers 6
    .parameter "currentLangID"

    .prologue
    const/4 v3, 0x0

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, wStatus:S
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 186
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 187
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v1

    if-nez v1, :cond_1c

    .line 188
    invoke-static {p1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 192
    :goto_17
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 193
    return-void

    .line 190
    :cond_1c
    const/16 v1, 0x9

    invoke-static {v1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->GetStirngWithID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)[S
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 24
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget-boolean v20, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-eqz v20, :cond_17f

    .line 63
    const v20, 0x7f030011

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->addPreferencesFromResource(I)V

    .line 70
    :goto_11
    sget-boolean v20, Lcom/sec/android/inputmethod/axt9/AxT9Config;->USE_TRACE:Z

    if-nez v20, :cond_28

    .line 71
    const-string v20, "trace"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 72
    .local v12, pf:Landroid/preference/Preference;
    if-eqz v12, :cond_28

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 74
    .local v13, pfScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v13, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    .end local v12           #pf:Landroid/preference/Preference;
    .end local v13           #pfScreen:Landroid/preference/PreferenceScreen;
    :cond_28
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 79
    .local v18, sp:Landroid/content/SharedPreferences;
    const-string v20, "select_language"

    const-string v21, "-1"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 82
    sget-boolean v20, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-eqz v20, :cond_78

    .line 83
    const-string v20, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference:Landroid/preference/ListPreference;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 96
    :cond_78
    const/4 v9, -0x1

    .line 97
    .local v9, koreanIndex:I
    const/4 v8, 0x0

    .line 98
    .local v8, isCurrentLangKorean:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1c5

    .line 99
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v20

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/String;

    .line 101
    .local v10, langList:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [S

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    .line 103
    const-string v6, ""

    .line 104
    .local v6, currentLocaleLang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19d

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 106
    const-string v20, "en"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e6

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, currentLocaleCount:Ljava/lang/String;
    const-string v20, "GB"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18b

    .line 109
    const-string v6, "en(UK)"

    .line 122
    .end local v5           #currentLocaleCount:Ljava/lang/String;
    :cond_e6
    :goto_e6
    const/4 v7, 0x0

    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v11

    .local v11, n:I
    :goto_f1
    if-ge v7, v11, :cond_1ab

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v19

    .line 124
    .local v19, stringId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v20

    aput-short v20, v21, v7

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    move-object/from16 v20, v0

    aget-short v20, v20, v7

    const/16 v21, 0x12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_138

    .line 126
    move v9, v7

    .line 128
    :cond_138
    new-instance v20, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v20, v10, v7

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17b

    .line 131
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 122
    :cond_17b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f1

    .line 65
    .end local v6           #currentLocaleLang:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #isCurrentLangKorean:Z
    .end local v9           #koreanIndex:I
    .end local v10           #langList:[Ljava/lang/String;
    .end local v11           #n:I
    .end local v18           #sp:Landroid/content/SharedPreferences;
    .end local v19           #stringId:I
    :cond_17f
    const v20, 0x7f030010

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_11

    .line 110
    .restart local v5       #currentLocaleCount:Ljava/lang/String;
    .restart local v6       #currentLocaleLang:Ljava/lang/String;
    .restart local v8       #isCurrentLangKorean:Z
    .restart local v9       #koreanIndex:I
    .restart local v10       #langList:[Ljava/lang/String;
    .restart local v18       #sp:Landroid/content/SharedPreferences;
    :cond_18b
    const-string v20, "US"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_199

    .line 111
    const-string v6, "en(US)"

    goto/16 :goto_e6

    .line 113
    :cond_199
    const-string v6, "en(UK)"

    goto/16 :goto_e6

    .line 117
    .end local v5           #currentLocaleCount:Ljava/lang/String;
    :cond_19d
    const-string v20, "nb"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e6

    .line 118
    const-string v6, "no"

    goto/16 :goto_e6

    .line 135
    .restart local v7       #i:I
    .restart local v11       #n:I
    :cond_1ab
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2b7

    .line 136
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 142
    :cond_1c1
    :goto_1c1
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLanguageList:[Ljava/lang/String;

    .line 145
    .end local v6           #currentLocaleLang:Ljava/lang/String;
    .end local v7           #i:I
    .end local v10           #langList:[Ljava/lang/String;
    .end local v11           #n:I
    :cond_1c5
    const-string v20, "axt9_ime_setting_mywords"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    .line 146
    if-eqz v8, :cond_2cc

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 153
    :goto_1ed
    const-string v20, "axt9_ime_setting_autosubstitution"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    .line 154
    if-eqz v8, :cond_2dd

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 162
    :goto_215
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, s2letters:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0011

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, s3letters:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0012

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 165
    .local v16, s4letters:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0013

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 167
    .local v17, s5letters:Ljava/lang/String;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v3, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v14, v3, v20

    const/16 v20, 0x1

    aput-object v15, v3, v20

    const/16 v20, 0x2

    aput-object v16, v3, v20

    const/16 v20, 0x3

    aput-object v17, v3, v20

    .line 168
    .local v3, Completion_point_entry:[Ljava/lang/String;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "2"

    aput-object v21, v4, v20

    const/16 v20, 0x1

    const-string v21, "3"

    aput-object v21, v4, v20

    const/16 v20, 0x2

    const-string v21, "4"

    aput-object v21, v4, v20

    const/16 v20, 0x3

    const-string v21, "5"

    aput-object v21, v4, v20

    .line 170
    .local v4, Completion_point_values:[Ljava/lang/String;
    const-string v20, "word_completion_point"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference_completion_point:Landroid/preference/ListPreference;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference_completion_point:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mListPreference_completion_point:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 178
    sget-boolean v20, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v20, :cond_2b6

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mLangDBIDList:[S

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v21, v0

    aget-short v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->XT9coreInit(S)V

    .line 181
    :cond_2b6
    return-void

    .line 137
    .end local v3           #Completion_point_entry:[Ljava/lang/String;
    .end local v4           #Completion_point_values:[Ljava/lang/String;
    .end local v14           #s2letters:Ljava/lang/String;
    .end local v15           #s3letters:Ljava/lang/String;
    .end local v16           #s4letters:Ljava/lang/String;
    .end local v17           #s5letters:Ljava/lang/String;
    .restart local v6       #currentLocaleLang:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v10       #langList:[Ljava/lang/String;
    .restart local v11       #n:I
    :cond_2b7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v9, :cond_1c1

    .line 138
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mCurrentLang:I

    .line 139
    const/4 v8, 0x1

    goto/16 :goto_1c1

    .line 150
    .end local v6           #currentLocaleLang:Ljava/lang/String;
    .end local v7           #i:I
    .end local v10           #langList:[Ljava/lang/String;
    .end local v11           #n:I
    :cond_2cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mywordsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1ed

    .line 158
    :cond_2dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->mPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->substitutionclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_215
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 293
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "inSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 284
    return-void
.end method
