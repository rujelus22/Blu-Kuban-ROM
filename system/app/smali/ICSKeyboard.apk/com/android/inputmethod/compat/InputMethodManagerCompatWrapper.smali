.class public Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"


# static fields
.field public static final FORCE_ENABLE_VOICE_EVEN_WITH_NO_VOICE_SUBTYPES:Z = true

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "keyboard"

.field private static final METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method; = null

.field private static final METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method; = null

.field private static final METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method; = null

.field private static final METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method; = null

.field private static final METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method; = null

#the value of this static final field might be set in the static constructor
.field public static final SUBTYPE_SUPPORTED:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field private static final VOICE_MODE:Ljava/lang/String; = "voice"

.field private static final sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;


# instance fields
.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

.field private mLatinImePackageName:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    const-class v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    .line 51
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "getCurrentInputMethodSubtype"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    .line 53
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "getEnabledInputMethodSubtypeList"

    new-array v2, v6, [Ljava/lang/Class;

    .line 54
    const-class v3, Landroid/view/inputmethod/InputMethodInfo;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 53
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    .line 56
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "getShortcutInputMethodsAndSubtypes"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    .line 59
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "setInputMethodAndSubtype"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v4

    .line 60
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    aput-object v3, v2, v6

    .line 58
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    .line 62
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "switchToLastInputMethod"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v4

    .line 61
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

    .line 65
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-direct {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;-><init>()V

    .line 64
    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 72
    sput-boolean v4, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    return-object v0
.end method

.method public static getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    .registers 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_d

    .line 91
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getInstance() is called before initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_d
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method private getLastResortSubtype(Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .registers 9
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 156
    const-string v0, "voice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v6

    .line 159
    .local v6, inputLocale:Ljava/util/Locale;
    if-nez v6, :cond_12

    .line 160
    const/4 v0, 0x0

    .line 161
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move v2, v1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private getLatinImeInputMethodInfo()Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/Utils;->getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v0

    goto :goto_9
.end method

.method public static init(Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 96
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iput-object p0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    .line 97
    sget-object v1, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 98
    const-string v0, "input_method"

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v1, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->getInstance()Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    .line 103
    return-void
.end method


# virtual methods
.method public SwitchToNextSubtype()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 320
    iget-object v6, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    .line 319
    invoke-static {p0, v6}, Lcom/android/inputmethod/latin/Utils;->getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v3

    .line 321
    .local v3, myImi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-virtual {p0, v3, v7}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v4

    .line 323
    .local v4, myImsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 324
    .local v5, size:I
    const/4 v2, 0x0

    .line 325
    .local v2, moveToSubtype:I
    if-le v5, v7, :cond_15

    .line 327
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-lt v1, v5, :cond_16

    .line 344
    .end local v1           #i:I
    :cond_15
    :goto_15
    return-void

    .line 329
    .restart local v1       #i:I
    :cond_16
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 331
    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_37

    .line 332
    const/4 v2, 0x0

    .line 336
    :goto_2b
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 337
    .local v0, NextIms:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    iget-object v6, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->notifyOnCurrentInputMethodSubtypeChanged(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_15

    .line 334
    .end local v0           #NextIms:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_37
    add-int/lit8 v2, v1, 0x1

    goto :goto_2b

    .line 327
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public SwitchToPrevSubtype()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 348
    iget-object v6, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    .line 347
    invoke-static {p0, v6}, Lcom/android/inputmethod/latin/Utils;->getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v3

    .line 349
    .local v3, myImi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-virtual {p0, v3, v7}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v4

    .line 351
    .local v4, myImsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 352
    .local v5, size:I
    const/4 v2, 0x0

    .line 353
    .local v2, moveToSubtype:I
    if-le v5, v7, :cond_15

    .line 355
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-lt v1, v5, :cond_16

    .line 372
    .end local v1           #i:I
    :cond_15
    :goto_15
    return-void

    .line 357
    .restart local v1       #i:I
    :cond_16
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 359
    if-nez v1, :cond_36

    .line 360
    add-int/lit8 v2, v5, -0x1

    .line 364
    :goto_2a
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 365
    .local v0, NextIms:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    iget-object v6, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->notifyOnCurrentInputMethodSubtypeChanged(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_15

    .line 362
    .end local v0           #NextIms:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_36
    add-int/lit8 v2, v1, -0x1

    goto :goto_2a

    .line 355
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 106
    sget-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-nez v0, :cond_1a

    .line 107
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 108
    iget-object v2, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    invoke-virtual {v2}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->getInputLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "keyboard"

    const-string v5, ""

    move v2, v1

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_19
    return-object v0

    .line 110
    :cond_1a
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 111
    .local v6, o:Ljava/lang/Object;
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {v0, v6}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v2, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_6

    const/4 v1, 0x0

    .line 228
    :cond_5
    return-object v1

    .line 224
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, imis:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    iget-object v2, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 226
    .local v0, imi:Landroid/view/inputmethod/InputMethodInfo;
    new-instance v3, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-direct {v3, v0}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method public getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;
    .registers 16
    .parameter "imi"
    .parameter "allowsImplicitlySelectedSubtypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    sget-boolean v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-nez v0, :cond_29

    .line 117
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLanguageSwitcherProxy:Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->getEnabledLanguages(Z)[Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, languages:[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v9, subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    array-length v12, v7

    move v11, v1

    :goto_13
    if-lt v11, v12, :cond_16

    .line 146
    .end local v7           #languages:[Ljava/lang/String;
    .end local v9           #subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_15
    :goto_15
    return-object v9

    .line 121
    .restart local v7       #languages:[Ljava/lang/String;
    .restart local v9       #subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_16
    aget-object v3, v7, v11

    .line 122
    .local v3, lang:Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    const-string v4, "keyboard"

    const-string v5, ""

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_13

    .line 126
    .end local v3           #lang:Ljava/lang/String;
    .end local v7           #languages:[Ljava/lang/String;
    .end local v9           #subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_29
    iget-object v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v5, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/Object;

    .line 127
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    :goto_36
    aput-object v0, v11, v1

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v0

    .line 126
    invoke-static {v4, v2, v5, v11}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 128
    .local v8, retval:Ljava/lang/Object;
    if-eqz v8, :cond_52

    instance-of v0, v8, Ljava/util/List;

    if-eqz v0, :cond_52

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 135
    :cond_52
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .restart local v9       #subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    const-string v0, "keyboard"

    invoke-direct {p0, v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getLastResortSubtype(Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v6

    .line 137
    .local v6, keyboardSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    const-string v0, "voice"

    invoke-direct {p0, v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getLastResortSubtype(Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v10

    .line 138
    .local v10, voiceSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    if-eqz v6, :cond_68

    .line 139
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_68
    if-eqz v10, :cond_15

    .line 142
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .end local v6           #keyboardSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .end local v8           #retval:Ljava/lang/Object;
    .end local v9           #subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    .end local v10           #voiceSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_6e
    move-object v0, v2

    .line 127
    goto :goto_36

    .line 146
    .restart local v8       #retval:Ljava/lang/Object;
    :cond_70
    invoke-static {v8}, Lcom/android/inputmethod/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    goto :goto_15
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 166
    iget-object v7, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v9, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, retval:Ljava/lang/Object;
    if-eqz v2, :cond_1b

    instance-of v7, v2, Ljava/util/Map;

    if-eqz v7, :cond_1b

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 173
    :cond_1b
    invoke-direct {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getLatinImeInputMethodInfo()Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v0

    .line 174
    .local v0, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    const-string v7, "voice"

    invoke-direct {p0, v7}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getLastResortSubtype(Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v6

    .line 175
    .local v6, voiceSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    if-eqz v0, :cond_3a

    if-eqz v6, :cond_3a

    .line 178
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v4, shortcutMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v5, subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v0           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v4           #shortcutMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    .end local v5           #subtypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    .end local v6           #voiceSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_39
    :goto_39
    return-object v4

    .line 186
    .restart local v0       #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .restart local v6       #voiceSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_3a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    goto :goto_39

    .line 190
    .end local v0           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v6           #voiceSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_3f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .restart local v4       #shortcutMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    move-object v3, v2

    .line 191
    check-cast v3, Ljava/util/Map;

    .line 192
    .local v3, retvalMap:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, key:Ljava/lang/Object;
    instance-of v7, v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v7, :cond_66

    .line 194
    sget-object v7, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v9, "Class type error."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 195
    goto :goto_39

    .line 197
    :cond_66
    new-instance v10, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-object v7, v1

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v10, v7}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 198
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/inputmethod/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 197
    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 10
    .parameter "token"
    .parameter "id"
    .parameter "subtype"

    .prologue
    .line 207
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 208
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 209
    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 208
    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_20
    return-void

    .line 211
    :cond_21
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public showInputMethodPicker()V
    .registers 29

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_7

    .line 315
    :goto_6
    return-void

    .line 233
    :cond_7
    sget-boolean v5, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-eqz v5, :cond_13

    .line 234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_6

    .line 241
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/inputmethod/latin/Utils;->getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v21

    .line 243
    .local v21, myImi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    const/4 v5, 0x1

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v7

    .line 244
    .local v7, myImsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v14

    .line 245
    .local v14, currentIms:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 246
    .local v9, imiList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 247
    new-instance v5, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;-><init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)V

    invoke-static {v9, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 258
    .local v6, myImsCount:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    .line 259
    .local v17, imiCount:I
    add-int v5, v6, v17

    new-array v0, v5, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 261
    .local v20, items:[Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 262
    .local v13, checkedItem:I
    const/16 v19, 0x0

    .line 263
    .local v19, index:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 264
    .local v22, myImiLabel:Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_59
    if-lt v15, v6, :cond_be

    .line 275
    const/4 v15, 0x0

    :goto_5c
    move/from16 v0, v17

    if-lt v15, v0, :cond_11c

    .line 282
    new-instance v12, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$2;-><init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)V

    .line 292
    .local v12, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    .line 293
    .local v8, service:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
    invoke-virtual {v8}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v10, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 294
    .local v10, token:Landroid/os/IBinder;
    new-instance v4, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;-><init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;ILjava/util/List;Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;Ljava/util/List;Landroid/os/IBinder;)V

    .line 310
    .local v4, selectionListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v24, v0

    const v25, 0x7f0c00ec

    invoke-virtual/range {v24 .. v25}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 312
    const v24, 0x7f0c00ed

    move/from16 v0, v24

    invoke-virtual {v5, v0, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 313
    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v13, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 314
    .local v11, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    goto/16 :goto_6

    .line 265
    .end local v4           #selectionListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v8           #service:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
    .end local v10           #token:Landroid/os/IBinder;
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    .end local v12           #buttonListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_be
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 266
    .local v18, ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 267
    move/from16 v13, v19

    .line 268
    :cond_ce
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/16 v24, 0x0

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x1

    .line 270
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, " ("

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x2

    const-string v25, ")"

    aput-object v25, v5, v24

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 271
    .local v23, title:Ljava/lang/CharSequence;
    aput-object v23, v20, v19

    .line 272
    add-int/lit8 v19, v19, 0x1

    .line 264
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_59

    .line 276
    .end local v18           #ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .end local v23           #title:Ljava/lang/CharSequence;
    :cond_11c
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 277
    .local v16, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 278
    .restart local v23       #title:Ljava/lang/CharSequence;
    aput-object v23, v20, v19

    .line 279
    add-int/lit8 v19, v19, 0x1

    .line 275
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5c
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 7
    .parameter "token"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isDummyVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 219
    :goto_c
    return v0

    :cond_d
    iget-object v1, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c
.end method
