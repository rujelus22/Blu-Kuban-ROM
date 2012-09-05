.class public Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;
.super Landroid/preference/PreferenceActivity;
.source "AxT9OptionWritingLanguage.java"


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

.field private mLangPrefScreen:Landroid/preference/PreferenceScreen;

.field private mLangSelectList:[Landroid/preference/CheckBoxPreference;

.field mLanguageList:[Ljava/lang/String;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private misKoreanOnly:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->DEBUG:Z

    .line 20
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->INFO:Z

    .line 21
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->ERROR:Z

    .line 28
    const-string v0, "select_language_list"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

    .line 30
    const-string v0, "select_language"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->PREFERENCE_KEY_SELECT_LANGUAGE:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->misKoreanOnly:Z

    .line 35
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedNum:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedLangIndex:I

    .line 99
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->langListclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private XT9coreInit(S)V
    .registers 6
    .parameter "currentLangID"

    .prologue
    const/4 v3, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, wStatus:S
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 180
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 181
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v1

    if-nez v1, :cond_1c

    .line 182
    invoke-static {p1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 186
    :goto_17
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 187
    return-void

    .line 184
    :cond_1c
    const/16 v1, 0x9

    invoke-static {v1, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->updateLanguageList()V

    return-void
.end method

.method private getDefaultLocalLanguge()S
    .registers 5

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, sLocal:Ljava/lang/String;
    const-string v3, "nb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 154
    const-string v2, "no"

    .line 157
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    .local v1, n:I
    :goto_1f
    if-ge v0, v1, :cond_4b

    .line 158
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 159
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    .line 163
    :goto_47
    return v3

    .line 157
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 163
    :cond_4b
    const/16 v3, 0x9

    goto :goto_47
.end method

.method private getNumLanguageList()I
    .registers 4

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, checkedNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 170
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 169
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    :cond_16
    return v0
.end method

.method private updateLanguageList()V
    .registers 10

    .prologue
    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, langIndex:I
    const/4 v0, 0x0

    .line 109
    .local v0, checkedNum:I
    const/4 v2, -0x1

    .line 110
    .local v2, firstChecked:I
    const/4 v5, 0x1

    .line 112
    .local v5, needChange:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    array-length v7, v7

    if-ge v3, v7, :cond_22

    .line 113
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 114
    move v4, v3

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    if-gez v2, :cond_1a

    .line 117
    move v2, v3

    .line 119
    :cond_1a
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    if-ne v7, v3, :cond_1f

    .line 120
    const/4 v5, 0x0

    .line 112
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 124
    :cond_22
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedNum:I

    .line 125
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCheckedLangIndex:I

    .line 138
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 139
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 143
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v5, :cond_40

    .line 144
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 145
    const-string v7, "select_language"

    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    :cond_40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v9, 0x7f030020

    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->addPreferencesFromResource(I)V

    .line 45
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLanguageList:[Ljava/lang/String;

    if-nez v9, :cond_9d

    .line 46
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 47
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    .line 48
    .local v4, langList:[Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [S

    iput-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangDBIDList:[S

    .line 49
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v9

    new-array v9, v9, [Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    .line 51
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v6

    .local v6, n:I
    :goto_3a
    if-ge v1, v6, :cond_9b

    .line 52
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v8

    .line 53
    .local v8, stringId:I
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangDBIDList:[S

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v9

    aput-short v9, v10, v1

    .line 54
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, langKey:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v1

    .line 56
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-direct {v10, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, v1

    .line 58
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v9, v9, v1

    invoke-virtual {v9, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 59
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v9, v9, v1

    aget-object v10, v4, v1

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 62
    .end local v3           #langKey:Ljava/lang/String;
    .end local v8           #stringId:I
    :cond_9b
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLanguageList:[Ljava/lang/String;

    .line 65
    .end local v1           #i:I
    .end local v4           #langList:[Ljava/lang/String;
    .end local v6           #n:I
    :cond_9d
    const-string v9, "select_language_list"

    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    .line 66
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a8
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    array-length v9, v9

    if-ge v1, v9, :cond_c2

    .line 67
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 68
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->langListclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 71
    :cond_c2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getDefaultLocalLanguge()S

    move-result v5

    .line 72
    .local v5, localeLang:I
    const/4 v2, 0x0

    .line 74
    .local v2, langID:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 75
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->getNumLanguageList()I

    move-result v9

    if-nez v9, :cond_10d

    .line 78
    const/4 v1, 0x0

    :goto_d6
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v9

    if-ge v1, v9, :cond_f2

    .line 79
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v9

    if-ne v5, v9, :cond_10a

    .line 80
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 85
    :cond_f2
    const-string v9, "select_language"

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    move v2, v5

    .line 92
    :goto_fe
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->updateLanguageList()V

    .line 94
    sget-boolean v9, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v9, :cond_109

    .line 95
    int-to-short v9, v2

    invoke-direct {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->XT9coreInit(S)V

    .line 97
    :cond_109
    return-void

    .line 78
    :cond_10a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 88
    :cond_10d
    const-string v9, "select_language"

    const-string v10, "0"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    .line 89
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->mCurrentLang:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v2

    goto :goto_fe
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 226
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "inSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 196
    return-void
.end method
