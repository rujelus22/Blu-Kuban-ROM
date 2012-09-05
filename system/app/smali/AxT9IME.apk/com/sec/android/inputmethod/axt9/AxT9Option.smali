.class public Lcom/sec/android/inputmethod/axt9/AxT9Option;
.super Landroid/preference/PreferenceActivity;
.source "AxT9Option.java"


# static fields
.field protected static final PREF_TITLE_COLOR:I


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final GET_CODE:I

.field private final INFO:Z

.field private final PREFERENCE_KEY_INPUTMETHOD_TYPE:Ljava/lang/String;

.field private final PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

.field adbancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field hwroptions:Landroid/preference/Preference$OnPreferenceClickListener;

.field languageChangeSettingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mInputMethodArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodIndexArray:[Ljava/lang/String;

.field mInputMethodTypeStringArray:[Ljava/lang/String;

.field private mIsFromIME:Z

.field private mLangDBIDList:[S

.field private mListPreference_inputmethod:Landroid/preference/ListPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field tutorialclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field umlautSettingsClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field writinglanguageclickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0xff

    .line 107
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->PREF_TITLE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->DEBUG:Z

    .line 49
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->INFO:Z

    .line 50
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->ERROR:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mIsFromIME:Z

    .line 62
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->GET_CODE:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    .line 87
    const-string v0, "select_language_list"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->PREFERENCE_KEY_SELECT_LANGUAGE_LIST:Ljava/lang/String;

    .line 88
    const-string v0, "inputmethod_type"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->PREFERENCE_KEY_INPUTMETHOD_TYPE:Ljava/lang/String;

    .line 306
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->writinglanguageclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 316
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->adbancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 334
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->hwroptions:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 346
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->umlautSettingsClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 366
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->tutorialclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 375
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Option$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Option;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->languageChangeSettingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9Option;)S
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getDefaultLocaleLanguage()S

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9Option;)[S
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mLangDBIDList:[S

    return-object v0
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "key"
    .parameter "csv"

    .prologue
    const/4 v4, 0x0

    .line 258
    if-nez p1, :cond_4

    .line 264
    :cond_3
    :goto_3
    return v4

    .line 260
    :cond_4
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 261
    .local v3, option:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 262
    const/4 v4, 0x1

    goto :goto_3

    .line 260
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private getDefaultLocaleLanguage()S
    .registers 5

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, sLocal:Ljava/lang/String;
    const-string v3, "nb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 401
    const-string v2, "no"

    .line 404
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    .local v1, n:I
    :goto_1f
    if-ge v0, v1, :cond_4b

    .line 405
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

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

    .line 406
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    .line 409
    :goto_47
    return v3

    .line 404
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 409
    :cond_4b
    const/16 v3, 0x9

    goto :goto_47
.end method

.method private getInputMethodName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "inputmethod"

    .prologue
    const v6, 0x7f0a002b

    const v5, 0x7f0a002d

    .line 269
    const-string v0, ""

    .line 270
    .local v0, inputmethodname:Ljava/lang/String;
    if-nez p1, :cond_c

    move-object v1, v0

    .line 303
    .end local v0           #inputmethodname:Ljava/lang/String;
    .local v1, inputmethodname:Ljava/lang/String;
    :goto_b
    return-object v1

    .line 274
    .end local v1           #inputmethodname:Ljava/lang/String;
    .restart local v0       #inputmethodname:Ljava/lang/String;
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, language:Ljava/lang/String;
    const-string v3, "12phonepad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 276
    const-string v3, "fr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "pl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "es"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "it"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 277
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 3x4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_57
    :goto_57
    move-object v1, v0

    .line 303
    .end local v0           #inputmethodname:Ljava/lang/String;
    .restart local v1       #inputmethodname:Ljava/lang/String;
    goto :goto_b

    .line 279
    .end local v1           #inputmethodname:Ljava/lang/String;
    .restart local v0       #inputmethodname:Ljava/lang/String;
    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3x4 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 281
    :cond_79
    const-string v3, "20keypad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 282
    const-string v3, "fr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "pl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "es"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    const-string v3, "it"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 283
    :cond_a1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "5x3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5x3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 285
    :cond_dd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5x3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bc

    .line 288
    :cond_fd
    const-string v3, "qwertykeyboard"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 289
    const-string v3, "fr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    const-string v3, "pl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    const-string v3, "es"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    const-string v3, "it"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 290
    :cond_125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 292
    :cond_14e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 294
    :cond_17b
    const-string v3, "handwritingbox1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_190

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 296
    :cond_190
    const-string v3, "handwritingbox2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 298
    :cond_1a5
    const-string v3, "handwritingfull"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 33
    .parameter "savedInstanceState"

    .prologue
    .line 113
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getInstance(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    move-result-object v3

    .line 114
    .local v3, cscInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;
    if-eqz v3, :cond_d

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->setCustomerCSC(Landroid/content/Context;)V

    .line 121
    :cond_d
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget-boolean v28, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-eqz v28, :cond_70

    .line 126
    const v28, 0x7f03000d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->addPreferencesFromResource(I)V

    .line 133
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "isFromIME"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->setFlagIsFromIME(Z)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-nez v28, :cond_7e

    .line 136
    const-string v8, ""

    .line 138
    .local v8, list:Ljava/lang/String;
    const-string v28, "SPH-D710"

    const-string v29, "SGH-I777"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7b

    .line 139
    const-string v8, "qwertykeyboard;12phonepad;"

    .line 145
    :goto_4b
    const-string v4, ";"

    .line 146
    .local v4, delimiter:Ljava/lang/String;
    new-instance v26, Ljava/util/StringTokenizer;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 148
    .local v26, st:Ljava/util/StringTokenizer;
    :goto_54
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v28

    if-eqz v28, :cond_7e

    .line 149
    const-string v28, ";"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, inputmethod:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 128
    .end local v4           #delimiter:Ljava/lang/String;
    .end local v7           #inputmethod:Ljava/lang/String;
    .end local v8           #list:Ljava/lang/String;
    .end local v26           #st:Ljava/util/StringTokenizer;
    :cond_70
    const v28, 0x7f03000c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->addPreferencesFromResource(I)V

    goto :goto_1e

    .line 141
    .restart local v8       #list:Ljava/lang/String;
    :cond_7b
    const-string v8, "qwertykeyboard;12phonepad;handwritingbox1;handwritingbox2;"

    goto :goto_4b

    .line 154
    .end local v8           #list:Ljava/lang/String;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodIndexArray:[Ljava/lang/String;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodTypeStringArray:[Ljava/lang/String;

    .line 156
    const/4 v6, 0x0

    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, n:I
    :goto_b5
    if-ge v6, v9, :cond_e4

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodIndexArray:[Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v6

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodTypeStringArray:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getInputMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v29, v6

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    .line 160
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0086

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 161
    .local v23, sSecond:Ljava/lang/String;
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v28, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "0.1 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v28

    const/16 v28, 0x1

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "0.3 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v28

    const/16 v28, 0x2

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "0.5 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v28

    const/16 v28, 0x3

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "1 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v28

    const/16 v28, 0x4

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "2 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v28

    .line 163
    .local v16, recognition_time_entry:[Ljava/lang/String;
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v28, 0x0

    const-string v29, "100"

    aput-object v29, v17, v28

    const/16 v28, 0x1

    const-string v29, "300"

    aput-object v29, v17, v28

    const/16 v28, 0x2

    const-string v29, "500"

    aput-object v29, v17, v28

    const/16 v28, 0x3

    const-string v29, "1000"

    aput-object v29, v17, v28

    const/16 v28, 0x4

    const-string v29, "2000"

    aput-object v29, v17, v28

    .line 165
    .local v17, recognition_time_valuse:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0084

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 166
    .local v21, sPixel:Ljava/lang/String;
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v12, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "2 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v12, v28

    const/16 v28, 0x1

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "3 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v12, v28

    const/16 v28, 0x2

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "5 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v12, v28

    const/16 v28, 0x3

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "7 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v12, v28

    const/16 v28, 0x4

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "9 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v12, v28

    .line 167
    .local v12, pen_thickness_entry:[Ljava/lang/String;
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v13, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string v29, "2"

    aput-object v29, v13, v28

    const/16 v28, 0x1

    const-string v29, "3"

    aput-object v29, v13, v28

    const/16 v28, 0x2

    const-string v29, "5"

    aput-object v29, v13, v28

    const/16 v28, 0x3

    const-string v29, "7"

    aput-object v29, v13, v28

    const/16 v28, 0x4

    const-string v29, "9"

    aput-object v29, v13, v28

    .line 169
    .local v13, pen_thickness_values:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0087

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 170
    .local v18, sBlack:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0089

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 171
    .local v22, sRed:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a008a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 172
    .local v19, sBlue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a008b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 173
    .local v20, sGreen:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a008c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 174
    .local v24, sYellow:Ljava/lang/String;
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v10, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v18, v10, v28

    const/16 v28, 0x1

    aput-object v22, v10, v28

    const/16 v28, 0x2

    aput-object v19, v10, v28

    const/16 v28, 0x3

    aput-object v20, v10, v28

    const/16 v28, 0x4

    aput-object v24, v10, v28

    .line 175
    .local v10, pen_color_entry:[Ljava/lang/String;
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v11, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string v29, "black"

    aput-object v29, v11, v28

    const/16 v28, 0x1

    const-string v29, "red"

    aput-object v29, v11, v28

    const/16 v28, 0x2

    const-string v29, "blue"

    aput-object v29, v11, v28

    const/16 v28, 0x3

    const-string v29, "green"

    aput-object v29, v11, v28

    const/16 v28, 0x4

    const-string v29, "yellow"

    aput-object v29, v11, v28

    .line 179
    .local v11, pen_color_valuse:[Ljava/lang/String;
    sget-boolean v28, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-nez v28, :cond_2f8

    .line 180
    const-string v28, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->writinglanguageclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 187
    :cond_2f8
    const-string v28, "xt9_advanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->adbancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    const-string v28, "axt9_ime_setting_tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->tutorialclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 199
    const-string v28, "SPH-D710"

    const-string v29, "SGH-I777"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_35f

    .line 200
    const-string v28, "handwriting_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->hwroptions:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    :cond_35f
    const-string v28, "voice_input_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 206
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 209
    .local v25, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "privateImeOptions"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, privateimeOpt:Ljava/lang/String;
    const/4 v5, 0x0

    .line 211
    .local v5, flag:Z
    if-eqz v15, :cond_395

    .line 212
    const-string v28, "nm"

    move-object/from16 v0, v28

    invoke-static {v15, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_394

    const-string v28, "noMicrophoneKey"

    move-object/from16 v0, v28

    invoke-static {v15, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_395

    .line 213
    :cond_394
    const/4 v5, 0x1

    .line 218
    :cond_395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3ae

    .line 220
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v5, v0, :cond_41b

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 234
    :cond_3ae
    :goto_3ae
    sget-boolean v28, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-eqz v28, :cond_3d1

    .line 235
    const-string v28, "umlaut_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->umlautSettingsClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    :cond_3d1
    const-string v28, "inputmethod_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/ListPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodTypeStringArray:[Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodIndexArray:[Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mListPreference_inputmethod:Landroid/preference/ListPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mInputMethodArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const-string v30, "qwertykeyboard"

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 254
    return-void

    .line 224
    :cond_41b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 225
    .local v14, pm:Landroid/content/pm/PackageManager;
    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_447

    const/16 v27, 0x1

    .line 228
    .local v27, voiceInstalled:Z
    :goto_438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3ae

    .line 227
    .end local v27           #voiceInstalled:Z
    :cond_447
    const/16 v27, 0x0

    goto :goto_438
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->sendBroadcast(Landroid/content/Intent;)V

    .line 482
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 483
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 451
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 453
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "inSettings"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Option;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 474
    return-void
.end method

.method public setFlagIsFromIME(Z)V
    .registers 2
    .parameter "isFromIME"

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Option;->mIsFromIME:Z

    .line 421
    return-void
.end method
