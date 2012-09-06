.class public Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;
.super Ljava/lang/Object;
.source "LanguageSwitcher.java"


# static fields
.field private static final EMPTY_STIRNG_ARRAY:[Ljava/lang/String; = null

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "keyboard"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentIndex:I

.field private mDefaultInputLanguage:Ljava/lang/String;

.field private mDefaultInputLocale:Ljava/util/Locale;

.field private final mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private final mLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguageArray:[Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->EMPTY_STIRNG_ARRAY:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 3
    .parameter "ime"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    .line 47
    sget-object v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->EMPTY_STIRNG_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 55
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 56
    return-void
.end method

.method private constructLocales()V
    .registers 7

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_9
    if-lt v2, v4, :cond_c

    .line 132
    return-void

    .line 128
    :cond_c
    aget-object v0, v3, v2

    .line 129
    .local v0, lang:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 130
    .local v1, locale:Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private getSystemLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method private loadDefaults()V
    .registers 5

    .prologue
    .line 117
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v1, :cond_b

    .line 118
    sget-object v1, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->TAG:Ljava/lang/String;

    const-string v2, "load default locales:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_b
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 121
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, country:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, ""

    :goto_36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 124
    return-void

    .line 123
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_36
.end method

.method private nextLocaleIndex()I
    .registers 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    .local v0, size:I
    iget v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    return v1
.end method

.method private prevLocaleIndex()I
    .registers 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 171
    .local v0, size:I
    iget v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    return v1
.end method

.method private setSystemLocale(Ljava/util/Locale;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 189
    return-void
.end method


# virtual methods
.method public getEnabledLanguages(Z)[Ljava/lang/String;
    .registers 5
    .parameter "allowImplicitlySelectedLanguages"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 151
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    goto :goto_f
.end method

.method public getInputLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 141
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    goto :goto_8
.end method

.method public getInputLocale()Ljava/util/Locale;
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 161
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_8
.end method

.method public getLocaleCount()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNextInputLocale()Ljava/util/Locale;
    .registers 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 180
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->nextLocaleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_8
.end method

.method public getPrevInputLocale()Ljava/util/Locale;
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 205
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->prevLocaleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_8
.end method

.method public loadLocales(Landroid/content/SharedPreferences;Ljava/util/Locale;)Z
    .registers 11
    .parameter "sp"
    .parameter "systemLocale"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 77
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v5, :cond_e

    .line 78
    sget-object v5, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->TAG:Ljava/lang/String;

    const-string v6, "load locales"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_e
    if-eqz p2, :cond_13

    .line 81
    invoke-direct {p0, p2}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 83
    :cond_13
    const-string v5, "selected_languages"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, selectedLanguages:Ljava/lang/String;
    const-string v5, "input_language"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, currentLanguage:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 86
    sget-object v5, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->EMPTY_STIRNG_ARRAY:[Ljava/lang/String;

    iput-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 87
    iput-object v7, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->loadDefaults()V

    .line 89
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_37

    .line 113
    :cond_36
    :goto_36
    return v3

    .line 92
    :cond_37
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v4

    .line 93
    goto :goto_36

    .line 95
    :cond_3e
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 98
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->constructLocales()V

    .line 101
    iput v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 102
    if-eqz v0, :cond_62

    .line 104
    iput v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5a
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_64

    .end local v1           #i:I
    :cond_62
    :goto_62
    move v3, v4

    .line 113
    goto :goto_36

    .line 106
    .restart local v1       #i:I
    :cond_64
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 107
    iput v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    goto :goto_62

    .line 105
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a
.end method

.method public next()V
    .registers 2

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->nextLocaleIndex()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 214
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/SharedPreferences;)V
    .registers 6
    .parameter "conf"
    .parameter "prefs"

    .prologue
    .line 63
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 64
    .local v0, newLocale:Ljava/util/Locale;
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 65
    invoke-virtual {p0, p2, v0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;Ljava/util/Locale;)Z

    .line 67
    :cond_17
    return-void
.end method

.method public persist(Landroid/content/SharedPreferences;)V
    .registers 5
    .parameter "prefs"

    .prologue
    .line 230
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "input_language"

    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-static {v0}, Lcom/android/inputmethod/compat/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 233
    return-void
.end method

.method public prev()V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->prevLocaleIndex()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 218
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 210
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 5
    .parameter "localeStr"

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 222
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-lt v1, v0, :cond_a

    .line 227
    return-void

    .line 223
    :cond_a
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 224
    iput v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 222
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method
