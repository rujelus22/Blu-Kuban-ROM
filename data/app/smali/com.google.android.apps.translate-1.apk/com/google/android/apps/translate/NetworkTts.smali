.class public Lcom/google/android/apps/translate/NetworkTts;
.super Ljava/lang/Object;
.source "NetworkTts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/NetworkTts$Callback;
    }
.end annotation


# static fields
.field private static final NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String; = null

.field private static final REQUEST_DEFAULT_QUERY_PARAMETERS:Ljava/lang/String; = "ie=utf-8&client=android-translate"

.field private static final REQUEST_HOST:Ljava/lang/String; = "translate.google.com"

.field private static final REQUEST_PATH:Ljava/lang/String; = "/translate_tts"

.field private static final REQUEST_SCHEME:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String; = "NetworkTts"

.field private static final TARGET_LANG:Ljava/lang/String; = "tl"

.field private static final TARGET_TEXT:Ljava/lang/String; = "text"

.field private static sNetworkTtsLocaleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNetworkTtsPlayer:Lcom/google/android/apps/translate/NetworkTtsPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "el"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/NetworkTts;->sNetworkTtsLocaleSet:Ljava/util/HashSet;

    .line 36
    invoke-static {}, Lcom/google/android/apps/translate/NetworkTts;->setNetworkTtsLanguagesMap()V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/apps/translate/NetworkTtsPlayer;

    invoke-direct {v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/NetworkTts;->mNetworkTtsPlayer:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    .line 50
    return-void
.end method

.method private getNetworkTtsUri(Ljava/util/Locale;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "locale"
    .parameter "text"

    .prologue
    .line 99
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 100
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "translate.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/translate_tts"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ie=utf-8&client=android-translate"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "tl"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static isLanguageAvailable(Ljava/util/Locale;)Z
    .registers 2
    .parameter "locale"

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/apps/translate/NetworkTts;->sNetworkTtsLocaleSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static setNetworkTtsLanguagesMap()V
    .registers 6

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/apps/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 111
    .local v2, l:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/translate/NetworkTts;->sNetworkTtsLocaleSet:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 113
    .end local v2           #l:Ljava/lang/String;
    :cond_14
    return-void
.end method


# virtual methods
.method public prefetch(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "locale"
    .parameter "text"

    .prologue
    .line 91
    invoke-static {p2}, Lcom/google/android/apps/translate/NetworkTts;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 96
    :cond_6
    :goto_6
    return-void

    .line 92
    :cond_7
    const-string v1, "NetworkTts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/translate/NetworkTts;->getNetworkTtsUri(Ljava/util/Locale;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    .local v0, networkTtsUri:Landroid/net/Uri;
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/translate/NetworkTts;->mNetworkTtsPlayer:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->prefetch(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_6
.end method

.method public speak(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V
    .registers 9
    .parameter "context"
    .parameter "locale"
    .parameter "text"
    .parameter "callback"

    .prologue
    .line 68
    invoke-static {p2}, Lcom/google/android/apps/translate/NetworkTts;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 73
    :cond_6
    :goto_6
    return-void

    .line 69
    :cond_7
    const-string v1, "NetworkTts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speaking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/translate/NetworkTts;->getNetworkTtsUri(Ljava/util/Locale;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    .local v0, networkTtsUri:Landroid/net/Uri;
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/translate/NetworkTts;->mNetworkTtsPlayer:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    invoke-virtual {v1, p1, v0, p4}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->play(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/apps/translate/NetworkTts$Callback;)V

    goto :goto_6
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 79
    const-string v0, "NetworkTts"

    const-string v1, "Stopping NetworkTTS playback"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTts;->mNetworkTtsPlayer:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->stop()V

    .line 81
    return-void
.end method
