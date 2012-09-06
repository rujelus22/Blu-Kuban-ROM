.class public Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;
.super Ljava/lang/Object;
.source "LanguageSwitcherProxy.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;


# instance fields
.field private mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mService:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    invoke-direct {v0}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;-><init>()V

    sput-object v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 38
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    goto :goto_5
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .registers 5
    .parameter "service"
    .parameter "prefs"

    .prologue
    .line 42
    sget-boolean v1, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-eqz v1, :cond_5

    .line 49
    :goto_4
    return-void

    .line 43
    :cond_5
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 44
    .local v0, conf:Landroid/content/res/Configuration;
    sget-object v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    new-instance v2, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v2, v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    .line 45
    sget-object v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v1, v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p1, v2}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;Ljava/util/Locale;)Z

    .line 46
    sget-object v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iput-object p1, v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mPrefs:Landroid/content/SharedPreferences;

    .line 47
    sget-object v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iput-object p0, v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 48
    sget-object v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_4
.end method

.method public static loadSettings()V
    .registers 3

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-eqz v0, :cond_5

    .line 59
    :goto_4
    return-void

    .line 58
    :cond_5
    sget-object v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    sget-object v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v1, v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;Ljava/util/Locale;)Z

    goto :goto_4
.end method

.method public static next()V
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->next()V

    .line 97
    return-void
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "conf"

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-eqz v0, :cond_5

    .line 54
    :goto_4
    return-void

    .line 53
    :cond_5
    sget-object v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    sget-object v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v1, v1, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p0, v1}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/SharedPreferences;)V

    goto :goto_4
.end method

.method public static prev()V
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->prev()V

    .line 101
    return-void
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->sInstance:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->reset()V

    .line 93
    return-void
.end method


# virtual methods
.method public getEnabledLanguages(Z)[Ljava/lang/String;
    .registers 3
    .parameter "allowImplicitlySelectedLanguages"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getEnabledLanguages(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleCount()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 82
    const-string v0, "selected_languages"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 83
    const-string v0, "input_language"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 84
    :cond_10
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;Ljava/util/Locale;)Z

    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    if-eqz v0, :cond_20

    .line 86
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard(Z)V

    .line 89
    :cond_20
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 4
    .parameter "localeStr"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->setLocale(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mLanguageSwitcher:Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->persist(Landroid/content/SharedPreferences;)V

    .line 76
    return-void
.end method
