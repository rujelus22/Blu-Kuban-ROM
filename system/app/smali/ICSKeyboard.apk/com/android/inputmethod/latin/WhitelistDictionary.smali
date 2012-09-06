.class public Lcom/android/inputmethod/latin/WhitelistDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "WhitelistDictionary.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private final mWhitelistWords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    .line 32
    const-class v0, Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 6
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 40
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    .line 41
    iput-object p2, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mLocale:Ljava/util/Locale;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 43
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 45
    .local v0, previousLocale:Ljava/util/Locale;
    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 46
    return-void
.end method

.method private initWordlist([Ljava/lang/String;)V
    .registers 12
    .parameter "wordlist"

    .prologue
    .line 49
    iget-object v6, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 50
    array-length v0, p1

    .line 51
    .local v0, N:I
    rem-int/lit8 v6, v0, 0x3

    if-eqz v6, :cond_16

    .line 52
    sget-boolean v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_15

    .line 53
    sget-object v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The number of the whitelist is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_15
    :goto_15
    return-void

    .line 58
    :cond_16
    const/4 v4, 0x0

    .local v4, i:I
    :goto_17
    if-ge v4, v0, :cond_15

    .line 59
    :try_start_19
    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 60
    .local v5, score:I
    add-int/lit8 v6, v4, 0x1

    aget-object v2, p1, v6

    .line 61
    .local v2, before:Ljava/lang/String;
    add-int/lit8 v6, v4, 0x2

    aget-object v1, p1, v6

    .line 62
    .local v1, after:Ljava/lang/String;
    if-eqz v2, :cond_44

    if-eqz v1, :cond_44

    .line 63
    iget-object v6, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, v1, v5}, Lcom/android/inputmethod/latin/WhitelistDictionary;->addWord(Ljava/lang/String;I)V
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_44} :catch_47

    .line 58
    :cond_44
    add-int/lit8 v4, v4, 0x3

    goto :goto_17

    .line 68
    .end local v1           #after:Ljava/lang/String;
    .end local v2           #before:Ljava/lang/String;
    .end local v5           #score:I
    :catch_47
    move-exception v3

    .line 69
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-boolean v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_15

    .line 70
    sget-object v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The score of the word is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method


# virtual methods
.method public getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "before"

    .prologue
    const/4 v0, 0x0

    .line 76
    if-nez p1, :cond_4

    .line 83
    :cond_3
    :goto_3
    return-object v0

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    const-string v1, "i"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 81
    :cond_27
    const-string v1, "o"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public shouldForciblyAutoCorrectFrom(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    :cond_7
    :goto_7
    return v1

    .line 106
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/WhitelistDictionary;->getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, correction:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method
