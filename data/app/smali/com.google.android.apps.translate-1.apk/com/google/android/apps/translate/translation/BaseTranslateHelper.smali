.class public Lcom/google/android/apps/translate/translation/BaseTranslateHelper;
.super Ljava/lang/Object;
.source "BaseTranslateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseTranslateHelper"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mRecentToLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper$1;-><init>(Lcom/google/android/apps/translate/translation/BaseTranslateHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 30
    const-string v0, "BaseTranslateHelper"

    const-string v1, "BaseTranslateHelper"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/translate/translation/BaseTranslateHelper;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mRecentToLanguages:Ljava/util/List;

    return-object p1
.end method

.method public static getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;
    .registers 5
    .parameter "languageList"
    .parameter "to"
    .parameter "allowNull"

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/android/apps/translate/Languages;->isChinese(Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0}, Lcom/google/android/apps/translate/Languages;->getDefaultChineseFromLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 78
    .local v0, from:Lcom/google/android/apps/translate/Language;
    :goto_a
    if-nez p2, :cond_12

    if-nez v0, :cond_12

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Languages;->getDefaultFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 81
    :cond_12
    return-object v0

    .line 75
    .end local v0           #from:Lcom/google/android/apps/translate/Language;
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    goto :goto_a
.end method

.method public static getToLanguageGivenFromLanguage(Ljava/util/List;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;
    .registers 6
    .parameter
    .parameter "languageList"
    .parameter "from"
    .parameter "allowNull"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Lcom/google/android/apps/translate/Languages;",
            "Lcom/google/android/apps/translate/Language;",
            "Z)",
            "Lcom/google/android/apps/translate/Language;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, recentToLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {p2}, Lcom/google/android/apps/translate/Languages;->isChinese(Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Languages;->getBestChineseToLanguage(Ljava/util/List;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 102
    .local v0, to:Lcom/google/android/apps/translate/Language;
    :goto_a
    if-nez p3, :cond_12

    if-nez v0, :cond_12

    .line 103
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Languages;->getDefaultToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 105
    :cond_12
    return-object v0

    .line 99
    .end local v0           #to:Lcom/google/android/apps/translate/Language;
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;
    .registers 4
    .parameter "to"
    .parameter "allowNull"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public getToLanguageGivenFromLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;
    .registers 5
    .parameter "from"
    .parameter "allowNull"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mRecentToLanguages:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->getToLanguageGivenFromLanguage(Ljava/util/List;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;)V
    .registers 3
    .parameter "activity"
    .parameter "languages"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 49
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 67
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "BaseTranslateHelper"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Profile;->getRecentToLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mRecentToLanguages:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    return-void
.end method
