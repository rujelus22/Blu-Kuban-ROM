.class public Lcom/google/android/apps/translate/LanguagePicker;
.super Ljava/lang/Object;
.source "LanguagePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;,
        Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;,
        Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;
    }
.end annotation


# static fields
.field private static final NO_FONT_SUPPORT_LANGUAGES:[Ljava/lang/String; = null

.field private static final SHOW_ALL_LANGUAGES_FOR_CONVERSATION:Z = false

.field private static final TAG:Ljava/lang/String; = "LanguagePicker"

.field private static final USE_CONV_LANG_PROFILE:Z

.field private static mUnsupportedLanguages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAndroidSupportedSourceLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mAndroidSupportedTargetLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mConvSupportedLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConversationMode:Z

.field private mLanguages:Lcom/google/android/apps/translate/Languages;

.field private final mOnLanguagePairSelectedListener:Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;

.field private mSourceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLanguage:Lcom/google/android/apps/translate/Language;

.field private final mSourceSpinner:Landroid/widget/Spinner;

.field private mTargetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetLanguage:Lcom/google/android/apps/translate/Language;

.field private final mTargetSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 36
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lcom/google/android/apps/translate/LanguagePicker;->mUnsupportedLanguages:Ljava/util/HashSet;

    .line 40
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hi"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "fa"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "th"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "yi"

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/android/apps/translate/LanguagePicker;->NO_FONT_SUPPORT_LANGUAGES:[Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/android/apps/translate/LanguagePicker;->NO_FONT_SUPPORT_LANGUAGES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_24
    if-ge v1, v3, :cond_30

    aget-object v2, v0, v1

    .line 46
    .local v2, l:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/translate/LanguagePicker;->mUnsupportedLanguages:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 48
    .end local v2           #l:Ljava/lang/String;
    :cond_30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;)V
    .registers 7
    .parameter "activity"
    .parameter "sourceSpinner"
    .parameter "targetSpinner"
    .parameter "onLanguagePairSelectedListener"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mIsConversationMode:Z

    .line 90
    iput-object p1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    .line 93
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Languages;->getDefaultFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Languages;->getDefaultToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/LanguagePicker;->updateCurrentLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 98
    iput-object p2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    .line 99
    iput-object p3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 103
    iput-object p4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mOnLanguagePairSelectedListener:Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/LanguagePicker;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static filterConversationLanguages(Lcom/google/android/apps/translate/VoiceInputHelper;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter "voiceInputHelper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/translate/VoiceInputHelper;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, langList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    .local v0, filteredList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/Language;

    .line 316
    .local v2, lang:Lcom/google/android/apps/translate/Language;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/VoiceInputHelper;->isConversationLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/NetworkTts;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 319
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 323
    .end local v2           #lang:Lcom/google/android/apps/translate/Language;
    :cond_2c
    return-object v0
.end method

.method private generateDropDownItems(ZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .parameter "selectLanguage"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, supportList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    .local p3, recentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 139
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;>;"
    if-eqz p1, :cond_1f

    .line 140
    new-instance v3, Lcom/google/android/apps/translate/Language;

    const-string v4, "select"

    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/google/android/apps/translate/R$string;->hint_language_selector:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/translate/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v3, selectedLang:Lcom/google/android/apps/translate/Language;
    new-instance v4, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    sget-object v5, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->SELECT:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-direct {v4, v3, v5}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v3           #selectedLang:Lcom/google/android/apps/translate/Language;
    :cond_1f
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 146
    .local v1, language:Lcom/google/android/apps/translate/Language;
    new-instance v4, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    sget-object v5, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->RECENTLY_USED:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-direct {v4, v1, v5}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 148
    .end local v1           #language:Lcom/google/android/apps/translate/Language;
    :cond_3a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 149
    .restart local v1       #language:Lcom/google/android/apps/translate/Language;
    new-instance v4, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    sget-object v5, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->NORMAL:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-direct {v4, v1, v5}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 151
    .end local v1           #language:Lcom/google/android/apps/translate/Language;
    :cond_55
    return-object v2
.end method

.method private getAndroidSupportedLanguages(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, allLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 546
    .local v1, l:Lcom/google/android/apps/translate/Language;
    sget-object v3, Lcom/google/android/apps/translate/LanguagePicker;->mUnsupportedLanguages:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 547
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 550
    .end local v1           #l:Lcom/google/android/apps/translate/Language;
    :cond_25
    return-object v2
.end method

.method private getRecentLeftConversationLanguage(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, rightRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v2, leftRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Profile;->getRecentFromLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 370
    .local v1, lang:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mConvSupportedLangList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 371
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->getToLanguageGivenFromLanguage(Ljava/util/List;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 376
    .end local v1           #lang:Lcom/google/android/apps/translate/Language;
    :cond_30
    return-object v2
.end method

.method private getRecentRightConversationLanguage()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v2, rightRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Profile;->getRecentToLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 390
    .local v1, lang:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mConvSupportedLangList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 391
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 395
    .end local v1           #lang:Lcom/google/android/apps/translate/Language;
    :cond_29
    return-object v2
.end method

.method private setLanguagePairFromSpinners()V
    .registers 5

    .prologue
    .line 330
    const-string v2, "LanguagePicker"

    const-string v3, "setLanguagePairFromSpinners"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 332
    .local v0, source:Lcom/google/android/apps/translate/Language;
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 333
    .local v1, target:Lcom/google/android/apps/translate/Language;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/LanguagePicker;->setLanguagePairToSpinners(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 334
    return-void
.end method

.method private updateCurrentLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 3
    .parameter "sourceLanguage"
    .parameter "targetLanguage"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    .line 124
    iput-object p2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    .line 125
    return-void
.end method

.method private updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V
    .registers 6
    .parameter "spinner"
    .parameter
    .parameter "selectedLanguage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
            ">;",
            "Lcom/google/android/apps/translate/Language;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;>;"
    const/4 v0, 0x0

    .local v0, pos:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 422
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 424
    :cond_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    .end local v0           #pos:I
    :cond_1e
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 425
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->notifyDataSetChanged()V

    .line 426
    return-void

    .line 421
    .restart local v0       #pos:I
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateLanguageSpinners()V
    .registers 6

    .prologue
    .line 399
    iget-boolean v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mIsConversationMode:Z

    if-eqz v2, :cond_3f

    .line 400
    invoke-direct {p0}, Lcom/google/android/apps/translate/LanguagePicker;->getRecentRightConversationLanguage()Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, rightRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/LanguagePicker;->getRecentLeftConversationLanguage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 402
    .local v0, leftRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/translate/LanguagePicker;->updateRecentDropDownItems(Ljava/util/List;Ljava/util/List;)V

    .line 403
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->notifyDataSetChanged()V

    .line 404
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V

    .line 405
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/translate/LanguagePicker;->updateRecentDropDownItems(Ljava/util/List;Ljava/util/List;)V

    .line 414
    .end local v0           #leftRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    .end local v1           #rightRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    :goto_2a
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->notifyDataSetChanged()V

    .line 415
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V

    .line 416
    return-void

    .line 407
    :cond_3f
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Profile;->getRecentFromLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/translate/LanguagePicker;->updateRecentDropDownItems(Ljava/util/List;Ljava/util/List;)V

    .line 409
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->notifyDataSetChanged()V

    .line 410
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V

    .line 411
    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Profile;->getRecentToLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/translate/LanguagePicker;->updateRecentDropDownItems(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2a
.end method

.method private updateRecentDropDownItems(Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;>;"
    .local p2, recentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    const/4 v8, 0x0

    .line 159
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 160
    .local v5, temps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;>;"
    const/4 v1, 0x0

    .line 161
    .local v1, autoSelected:Z
    const/4 v0, 0x0

    .line 162
    .local v0, autoItem:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;
    iget-object v6, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v6}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 169
    const/4 v1, 0x1

    .line 172
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2b

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getSpec()Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->SELECT:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    if-ne v6, v7, :cond_2b

    .line 173
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/Language;

    .line 177
    .local v4, language:Lcom/google/android/apps/translate/Language;
    new-instance v6, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    sget-object v7, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->RECENTLY_USED:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-direct {v6, v4, v7}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 180
    .end local v4           #language:Lcom/google/android/apps/translate/Language;
    :cond_46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    .line 181
    .local v3, item:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;
    invoke-virtual {v3}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getSpec()Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->NORMAL:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    if-ne v6, v7, :cond_4a

    .line 182
    if-eqz v1, :cond_6c

    invoke-virtual {v3}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 183
    move-object v0, v3

    goto :goto_4a

    .line 185
    :cond_6c
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 189
    .end local v3           #item:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;
    :cond_70
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 190
    if-eqz v0, :cond_78

    .line 191
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_78
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    return-void
.end method


# virtual methods
.method public getFromLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getToLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 526
    const-string v0, "LanguagePicker"

    const-string v1, "onItemSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/google/android/apps/translate/LanguagePicker;->setLanguagePairFromSpinners()V

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mOnLanguagePairSelectedListener:Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;

    if-eqz v0, :cond_18

    .line 530
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mOnLanguagePairSelectedListener:Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;

    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/google/android/apps/translate/LanguagePicker$OnLanguagePairSelectedListener;->onLanguagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 533
    :cond_18
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setLanguagePairToSpinners(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 6
    .parameter "source"
    .parameter "target"

    .prologue
    .line 341
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->isSelectLanguage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->isSelectLanguage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 343
    iget-boolean v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mIsConversationMode:Z

    if-eqz v1, :cond_2b

    .line 347
    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 349
    .local v0, convertedSource:Lcom/google/android/apps/translate/Language;
    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, p2}, Lcom/google/android/apps/translate/Profile;->setLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 355
    .end local v0           #convertedSource:Lcom/google/android/apps/translate/Language;
    :cond_24
    :goto_24
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/LanguagePicker;->updateCurrentLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 356
    invoke-direct {p0}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinners()V

    .line 357
    return-void

    .line 352
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/apps/translate/Profile;->setLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    goto :goto_24
.end method

.method public setupLanguageSpinners()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 202
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Profile;->getLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)[Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 203
    .local v0, languagePair:[Lcom/google/android/apps/translate/Language;
    array-length v3, v0

    if-le v3, v5, :cond_1c

    aget-object v3, v0, v6

    if-eqz v3, :cond_1c

    aget-object v3, v0, v5

    if-eqz v3, :cond_1c

    .line 204
    aget-object v3, v0, v6

    aget-object v4, v0, v5

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/translate/LanguagePicker;->updateCurrentLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 208
    :cond_1c
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mAndroidSupportedSourceLanguageList:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Profile;->getRecentFromLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v6, v3, v4}, Lcom/google/android/apps/translate/LanguagePicker;->generateDropDownItems(ZLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    .line 212
    new-instance v1, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/google/android/apps/translate/R$layout;->language_spinner:I

    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;-><init>(Lcom/google/android/apps/translate/LanguagePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 214
    .local v1, sourceAdapter:Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 215
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V

    .line 218
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mAndroidSupportedTargetLanguageList:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Profile;->getRecentToLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v6, v3, v4}, Lcom/google/android/apps/translate/LanguagePicker;->generateDropDownItems(ZLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    .line 222
    new-instance v2, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/google/android/apps/translate/R$layout;->language_spinner:I

    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;-><init>(Lcom/google/android/apps/translate/LanguagePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 224
    .local v2, targetAdapter:Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 225
    iget-object v3, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V

    .line 226
    return-void
.end method

.method public setupLanguageSpinnersForConversationMode(Lcom/google/android/apps/translate/VoiceInputHelper;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 15
    .parameter "voiceInputHelper"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 235
    const-string v8, "LanguagePicker"

    const-string v9, "setupLanguageSpinnersForConversationMode"

    invoke-static {v8, v9}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mIsConversationMode:Z

    .line 238
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mAndroidSupportedTargetLanguageList:Ljava/util/List;

    invoke-static {p1, v8}, Lcom/google/android/apps/translate/LanguagePicker;->filterConversationLanguages(Lcom/google/android/apps/translate/VoiceInputHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mConvSupportedLangList:Ljava/util/List;

    .line 242
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-static {v8, v9}, Lcom/google/android/apps/translate/Profile;->getLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)[Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 246
    .local v0, languagePair:[Lcom/google/android/apps/translate/Language;
    const/4 v2, 0x1

    .line 247
    .local v2, leftSelect:Z
    const/4 v5, 0x1

    .line 248
    .local v5, rightSelect:Z
    if-eqz p2, :cond_88

    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mConvSupportedLangList:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 249
    const/4 v2, 0x0

    .line 266
    :cond_27
    :goto_27
    if-eqz p3, :cond_9a

    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mConvSupportedLangList:Ljava/util/List;

    invoke-interface {v8, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 267
    const/4 v5, 0x0

    .line 284
    :cond_32
    :goto_32
    invoke-direct {p0}, Lcom/google/android/apps/translate/LanguagePicker;->getRecentRightConversationLanguage()Ljava/util/List;

    move-result-object v4

    .line 285
    .local v4, rightRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/LanguagePicker;->getRecentLeftConversationLanguage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, leftRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/translate/LanguagePicker;->updateCurrentLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 287
    invoke-static {p1, v1}, Lcom/google/android/apps/translate/LanguagePicker;->filterConversationLanguages(Lcom/google/android/apps/translate/VoiceInputHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 291
    .local v3, recentLangList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mConvSupportedLangList:Ljava/util/List;

    invoke-direct {p0, v2, v8, v3}, Lcom/google/android/apps/translate/LanguagePicker;->generateDropDownItems(ZLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    .line 292
    new-instance v6, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    sget v9, Lcom/google/android/apps/translate/R$layout;->language_spinner:I

    iget-object v10, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    invoke-direct {v6, p0, v8, v9, v10}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;-><init>(Lcom/google/android/apps/translate/LanguagePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 294
    .local v6, sourceAdapter:Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 295
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceItems:Ljava/util/List;

    iget-object v10, p0, Lcom/google/android/apps/translate/LanguagePicker;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V

    .line 297
    invoke-static {p1, v4}, Lcom/google/android/apps/translate/LanguagePicker;->filterConversationLanguages(Lcom/google/android/apps/translate/VoiceInputHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 300
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mConvSupportedLangList:Ljava/util/List;

    invoke-direct {p0, v5, v8, v3}, Lcom/google/android/apps/translate/LanguagePicker;->generateDropDownItems(ZLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    .line 301
    new-instance v7, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;

    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    sget v9, Lcom/google/android/apps/translate/R$layout;->language_spinner:I

    iget-object v10, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;-><init>(Lcom/google/android/apps/translate/LanguagePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 303
    .local v7, targetAdapter:Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 304
    iget-object v8, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetItems:Ljava/util/List;

    iget-object v10, p0, Lcom/google/android/apps/translate/LanguagePicker;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/apps/translate/LanguagePicker;->updateLanguageSpinner(Landroid/widget/Spinner;Ljava/util/List;Lcom/google/android/apps/translate/Language;)V

    .line 305
    return-void

    .line 260
    .end local v1           #leftRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    .end local v3           #recentLangList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    .end local v4           #rightRecentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    .end local v6           #sourceAdapter:Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;
    .end local v7           #targetAdapter:Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;
    :cond_88
    if-eqz v2, :cond_27

    .line 261
    new-instance p2, Lcom/google/android/apps/translate/Language;

    .end local p2
    const-string v8, "select"

    iget-object v9, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    sget v10, Lcom/google/android/apps/translate/R$string;->hint_language_selector:I

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p2, v8, v9}, Lcom/google/android/apps/translate/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local p2
    goto :goto_27

    .line 278
    :cond_9a
    if-eqz v5, :cond_32

    .line 279
    new-instance p3, Lcom/google/android/apps/translate/Language;

    .end local p3
    const-string v8, "select"

    iget-object v9, p0, Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;

    sget v10, Lcom/google/android/apps/translate/R$string;->hint_language_selector:I

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p3, v8, v9}, Lcom/google/android/apps/translate/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local p3
    goto :goto_32
.end method

.method public updateLanguageList(Lcom/google/android/apps/translate/Languages;)V
    .registers 4
    .parameter "languages"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Languages;->getSupportedFromLanguages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mAndroidSupportedSourceLanguageList:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagePicker;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Languages;->getSupportedToLanguages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker;->mAndroidSupportedTargetLanguageList:Ljava/util/List;

    .line 117
    return-void
.end method
