.class public Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;
.super Landroid/preference/PreferenceActivity;
.source "AxT9OptionUmlautSettings.java"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final PREFERENCE_KEY_SELECT_LANGUAGE:Ljava/lang/String;

.field private final PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

.field private mLangDBIDList:[S

.field private mLangPrefScreen:Landroid/preference/PreferenceScreen;

.field private mLangSelectList:[Landroid/preference/CheckBoxPreference;

.field mLanguageList:[Ljava/lang/String;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->DEBUG:Z

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->INFO:Z

    .line 14
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->ERROR:Z

    .line 21
    const-string v0, "select_language_list"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

    .line 23
    const-string v0, "select_language"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->PREFERENCE_KEY_SELECT_LANGUAGE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v7, 0x7f03001f

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->addPreferencesFromResource(I)V

    .line 31
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLanguageList:[Ljava/lang/String;

    if-nez v7, :cond_cb

    .line 32
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 33
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    .line 34
    .local v3, langList:[Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [S

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangDBIDList:[S

    .line 35
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v7

    new-array v7, v7, [Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    .local v4, n:I
    :goto_3a
    if-ge v0, v4, :cond_c9

    .line 38
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v5

    .line 39
    .local v5, stringId:I
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v1

    .line 41
    .local v1, langID:S
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    move-result-object v6

    .line 42
    .local v6, umlaut:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;
    invoke-virtual {v6, v1}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->hasUmlautString(S)Z

    move-result v7

    if-nez v7, :cond_69

    .line 37
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 45
    :cond_69
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangDBIDList:[S

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v7

    aput-short v7, v8, v0

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_uml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, langKey:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v0

    .line 48
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    new-instance v8, Landroid/preference/CheckBoxPreference;

    invoke-direct {v8, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v0

    .line 50
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v7, v7, v0

    invoke-virtual {v7, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 51
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v7, v7, v0

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_66

    .line 54
    .end local v1           #langID:S
    .end local v2           #langKey:Ljava/lang/String;
    .end local v5           #stringId:I
    .end local v6           #umlaut:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;
    :cond_c9
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLanguageList:[Ljava/lang/String;

    .line 57
    .end local v0           #i:I
    .end local v3           #langList:[Ljava/lang/String;
    .end local v4           #n:I
    :cond_cb
    const-string v7, "select_language_list"

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    .line 58
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_d6
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    array-length v7, v7

    if-ge v0, v7, :cond_ee

    .line 59
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v7, v7, v0

    if-nez v7, :cond_e4

    .line 58
    :goto_e1
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    .line 63
    :cond_e4
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->mLangSelectList:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_e1

    .line 65
    :cond_ee
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "inSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionUmlautSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 74
    return-void
.end method
