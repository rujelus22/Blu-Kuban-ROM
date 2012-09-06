.class public Lcom/android/inputmethod/latin/SubtypeSwitcher;
.super Ljava/lang/Object;
.source "SubtypeSwitcher.java"


# static fields
.field private static DBG:Z = false

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "keyboard"

.field private static final LOCALE_SEPARATER:C = '_'

.field private static final SUBTYPE_EXTRAVALUE_REQUIRE_NETWORK_CONNECTIVITY:Ljava/lang/String; = "requireNetworkConnectivity"

.field private static final TAG:Ljava/lang/String; = null

.field private static final VOICE_MODE:Ljava/lang/String; = "voice"

.field private static final sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;


# instance fields
.field private mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field private final mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mInputLocale:Ljava/util/Locale;

.field private mInputLocaleStr:Ljava/lang/String;

.field private mIsNetworkConnected:Z

.field private mIsSystemLanguageSameAsInputLanguage:Z

.field private final mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mNeedsToDisplayLanguage:Z

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

.field private mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field private mSystemLocale:Ljava/util/Locale;

.field private mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    .line 49
    const-class v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x5f

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Lcom/android/inputmethod/latin/LatinIME;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "hay"
    .parameter "needle"

    .prologue
    const/4 v1, 0x0

    .line 378
    array-length v3, p0

    move v2, v1

    :goto_3
    if-lt v2, v3, :cond_6

    .line 382
    :goto_5
    return v1

    .line 378
    :cond_6
    aget-object v0, p0, v2

    .line 379
    .local v0, element:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 380
    const/4 v1, 0x1

    goto :goto_5

    .line 378
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method private getSubtypeIcon(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "imi"
    .parameter "subtype"

    .prologue
    const/4 v6, 0x0

    .line 352
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 353
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_90

    .line 354
    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, imiPackageName:Ljava/lang/String;
    sget-boolean v3, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v3, :cond_41

    .line 356
    sget-object v3, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update icons of IME: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    invoke-static {p2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_41
    if-eqz p2, :cond_52

    .line 360
    invoke-virtual {p2}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getIconResId()I

    move-result v3

    .line 361
    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 360
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 374
    .end local v1           #imiPackageName:Ljava/lang/String;
    :goto_51
    return-object v3

    .line 362
    .restart local v1       #imiPackageName:Ljava/lang/String;
    :cond_52
    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getSubtypeCount()I

    move-result v3

    if-lez v3, :cond_71

    invoke-virtual {p1, v6}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getSubtypeAt(I)Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 364
    invoke-virtual {p1, v6}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getSubtypeAt(I)Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getIconResId()I

    move-result v3

    .line 365
    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 363
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_51

    .line 368
    :cond_71
    const/4 v3, 0x0

    :try_start_72
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72 .. :try_end_79} :catch_7b

    move-result-object v3

    goto :goto_51

    .line 369
    :catch_7b
    move-exception v0

    .line 370
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IME can\'t be found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #imiPackageName:Ljava/lang/String;
    :cond_90
    const/4 v3, 0x0

    goto :goto_51
.end method

.method private static getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;
    .registers 3
    .parameter "subtype"

    .prologue
    .line 200
    .line 201
    const-string v1, "KeyboardLocale"

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, keyboardLocale:Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0           #keyboardLocale:Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0       #keyboardLocale:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->init(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->initialize(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 93
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters()V

    .line 94
    return-void
.end method

.method private initialize(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 5
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 101
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 102
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    .line 103
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 105
    const-string v1, "connectivity"

    .line 104
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 106
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 108
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 109
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 110
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 112
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 113
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    .line 115
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 116
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    :goto_3e
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 117
    return-void

    .line 116
    :cond_41
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public static isVoiceSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 554
    invoke-static {v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getSupportedLocalesString(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, supportedLocalesString:Ljava/lang/String;
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 558
    .local v1, voiceInputSupportedLocales:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private switchToTargetIME(Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 6
    .parameter "imiId"
    .parameter "subtype"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 323
    .local v0, token:Landroid/os/IBinder;
    if-nez v0, :cond_13

    .line 344
    :goto_12
    return-void

    .line 326
    :cond_13
    new-instance v1, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;-><init>(Lcom/android/inputmethod/latin/SubtypeSwitcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 343
    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_12
.end method

.method private updateAllParameters()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 125
    return-void
.end method

.method private updateEnabledSubtypes()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, currentMode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 138
    .local v1, foundCurrentSubtypeBecameDisabled:Z
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 139
    const/4 v7, 0x0

    .line 138
    invoke-virtual {v6, v7, v5}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 140
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 142
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_69

    .line 156
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v6

    if-gt v6, v5, :cond_30

    .line 157
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-eqz v6, :cond_30

    const/4 v5, 0x0

    .line 156
    :cond_30
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 158
    if-eqz v1, :cond_68

    .line 159
    sget-boolean v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v5, :cond_5f

    .line 160
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Current subtype: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v6, "Last subtype was disabled. Update to the current one."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5f
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v5}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 165
    :cond_68
    return-void

    .line 142
    :cond_69
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 143
    .local v2, ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-static {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, locale:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, mode:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 146
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 147
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_8f
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 150
    const/4 v1, 0x0

    .line 152
    :cond_9e
    const-string v7, "keyboard"

    invoke-virtual {v2}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 153
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f
.end method

.method private updateInputLocale(Ljava/lang/String;)V
    .registers 7
    .parameter "inputLocaleStr"

    .prologue
    const/4 v2, 0x1

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 292
    invoke-static {p1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 293
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 300
    :goto_f
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    .line 302
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v1

    if-gt v1, v2, :cond_75

    .line 303
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    .line 302
    :goto_30
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 304
    return-void

    .line 295
    :cond_33
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 296
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, country:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, ""

    :goto_54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    goto :goto_f

    .line 298
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    .end local v0           #country:Ljava/lang/String;
    :cond_75
    move v1, v2

    .line 303
    goto :goto_30
.end method

.method private updateShortcutIME()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 168
    sget-boolean v3, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v3, :cond_2f

    .line 169
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "Update shortcut IME from : "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v3, :cond_93

    .line 171
    const-string v3, "<null>"

    .line 170
    :goto_14
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 171
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 172
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v3, :cond_9b

    const-string v3, "<null>"

    :goto_24
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2f
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v3}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v1

    .line 178
    .local v1, shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    iput-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 179
    iput-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 180
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 181
    .local v0, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 184
    .local v2, subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    :goto_62
    iput-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 190
    .end local v0           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v2           #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_64
    sget-boolean v3, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v3, :cond_92

    .line 191
    sget-object v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Update shortcut IME to : "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v3, :cond_c2

    .line 193
    const-string v3, "<null>"

    .line 192
    :goto_77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v3, :cond_c9

    const-string v3, "<null>"

    :goto_87
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_92
    return-void

    .line 171
    .end local v1           #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    :cond_93
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v3}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    .line 172
    :cond_9b
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v7}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_24

    .restart local v0       #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .restart local v1       #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    .restart local v2       #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_c0
    move-object v3, v4

    .line 187
    goto :goto_62

    .line 193
    .end local v0           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v2           #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_c2
    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v3}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_77

    .line 194
    :cond_c9
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v6}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_87
.end method


# virtual methods
.method public currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentSubtypeExtraValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getCurrentSubtypeExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentSubtypeMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "keyboard"

    goto :goto_a
.end method

.method public getEnabledKeyboardLocaleCount()I
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledLanguages()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 458
    .local v0, enabledLanguageCount:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 459
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 460
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 459
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v0, v0, 0x1

    .line 463
    :cond_19
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getInputLanguageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getInputLocaleStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeIcon(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public isDummyVoiceMode()Z
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 511
    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    .line 510
    goto :goto_19
.end method

.method public isKeyboardMode()Z
    .registers 3

    .prologue
    .line 483
    const-string v0, "keyboard"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShortcutImeEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 386
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v4, :cond_7

    .line 405
    :cond_6
    :goto_6
    return v2

    .line 389
    :cond_7
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v4, :cond_d

    move v2, v3

    .line 390
    goto :goto_6

    .line 394
    :cond_d
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v4}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v4

    if-nez v4, :cond_17

    move v2, v3

    .line 395
    goto :goto_6

    .line 397
    :cond_17
    const/4 v0, 0x1

    .line 399
    .local v0, allowsImplicitlySelectedSubtypes:Z
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 400
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 399
    invoke-virtual {v4, v5, v3}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 398
    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 399
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 401
    .local v1, enabledSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v1, v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v2, v3

    .line 402
    goto :goto_6
.end method

.method public isShortcutImeReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 409
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v1, :cond_7

    .line 410
    const/4 v0, 0x0

    .line 417
    :cond_6
    :goto_6
    return v0

    .line 411
    :cond_7
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v1, :cond_6

    .line 413
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 414
    const-string v2, "requireNetworkConnectivity"

    .line 413
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 415
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    goto :goto_6
.end method

.method public isSystemLanguageSameAsInputLanguage()Z
    .registers 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    return v0
.end method

.method public isVoiceMode()Z
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public needsToDisplayLanguage(Ljava/util/Locale;)Z
    .registers 3
    .parameter "keyboardLocale"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "conf"

    .prologue
    .line 475
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 477
    .local v0, systemLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 478
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters()V

    .line 480
    :cond_15
    return-void
.end method

.method public onNetworkStateChanged(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 421
    .line 422
    const-string v4, "noConnectivity"

    .line 421
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 423
    .local v1, noConnection:Z
    if-eqz v1, :cond_21

    :goto_9
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 425
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    .line 426
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 427
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_20

    .line 428
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 430
    :cond_20
    return-void

    .line 423
    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .end local v2           #switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    :cond_21
    const/4 v3, 0x1

    goto :goto_9
.end method

.method public setVoiceInputWrapper(Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;)Z
    .registers 5
    .parameter "vi"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    if-nez v0, :cond_2f

    if-eqz p1, :cond_2f

    .line 493
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    .line 494
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 495
    sget-boolean v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v0, :cond_2a

    .line 496
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set and call voice input.: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_2a
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->triggerVoiceIME()V

    .line 499
    const/4 v0, 0x1

    .line 502
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public switchToShortcutIME()V
    .registers 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v2, :cond_5

    .line 318
    :goto_4
    return-void

    .line 315
    :cond_5
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v2}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, imiId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 317
    .local v1, subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_4
.end method

.method triggerVoiceIME()V
    .registers 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_9

    .line 518
    :goto_8
    return-void

    .line 516
    :cond_9
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v0

    const/4 v1, 0x0

    .line 517
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 516
    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->startListening(ZLandroid/os/IBinder;)V

    goto :goto_8
.end method

.method public updateParametersOnStartInputView()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateEnabledSubtypes()V

    .line 131
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    .line 132
    return-void
.end method

.method public updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 13
    .parameter "newSubtype"

    .prologue
    const/4 v10, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, oldMode:Ljava/lang/String;
    if-nez p1, :cond_8d

    .line 213
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t get the current subtype."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v2, "en_US"

    .line 215
    .local v2, newLocale:Ljava/lang/String;
    const-string v3, "keyboard"

    .line 220
    .local v3, newMode:Ljava/lang/String;
    :goto_12
    sget-boolean v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v7, :cond_4a

    .line 221
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Update subtype to:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 222
    const-string v9, ", from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 221
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_4a
    const/4 v0, 0x0

    .line 225
    .local v0, languageChanged:Z
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 226
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    if-eqz v7, :cond_58

    .line 227
    const/4 v0, 0x1

    .line 229
    :cond_58
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateInputLocale(Ljava/lang/String;)V

    .line 231
    :cond_5b
    const/4 v1, 0x0

    .line 232
    .local v1, modeChanged:Z
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    .line 233
    if-eqz v4, :cond_65

    .line 234
    const/4 v1, 0x1

    .line 237
    :cond_65
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 241
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_97

    .line 242
    if-eqz v1, :cond_80

    .line 243
    const-string v7, "voice"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    if-eqz v7, :cond_80

    .line 244
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->cancel()V

    .line 247
    :cond_80
    if-nez v1, :cond_84

    if-eqz v0, :cond_8c

    .line 248
    :cond_84
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    .line 249
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v7, v10}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard(Z)V

    .line 283
    :cond_8c
    :goto_8c
    return-void

    .line 217
    .end local v0           #languageChanged:Z
    .end local v1           #modeChanged:Z
    .end local v2           #newLocale:Ljava/lang/String;
    .end local v3           #newMode:Ljava/lang/String;
    :cond_8d
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2       #newLocale:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #newMode:Ljava/lang/String;
    goto/16 :goto_12

    .line 251
    .restart local v0       #languageChanged:Z
    .restart local v1       #modeChanged:Z
    :cond_97
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v7

    if-eqz v7, :cond_c0

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    if-eqz v7, :cond_c0

    .line 252
    const-string v7, "voice"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 253
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->reset()V

    .line 257
    :cond_ae
    if-nez v0, :cond_bc

    if-nez v1, :cond_bc

    .line 258
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->needsToShowWarningDialog()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 259
    :cond_bc
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->triggerVoiceIME()V

    goto :goto_8c

    .line 262
    :cond_c0
    const-string v7, "voice"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    if-eqz v7, :cond_d1

    .line 265
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->reset()V

    .line 267
    :cond_d1
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, packageName:Ljava/lang/String;
    const/4 v6, -0x1

    .line 270
    .local v6, version:I
    :try_start_d8
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 271
    const/4 v8, 0x0

    .line 270
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 271
    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_e5} :catch_183

    .line 274
    :goto_e5
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unknown subtype mode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 275
    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". IME is already changed to other IME."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 274
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-eqz p1, :cond_8c

    .line 277
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Subtype mode:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Subtype locale:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Subtype extra value:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Subtype is auxiliary:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->isAuxiliary()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 272
    :catch_183
    move-exception v7

    goto/16 :goto_e5
.end method
