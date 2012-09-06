.class public Lcom/google/android/apps/translate/DonutTtsWrapper;
.super Ljava/lang/Object;
.source "DonutTtsWrapper.java"


# static fields
.field private static final ESPEAK_ENGINE_PACKAGE:Ljava/lang/String; = "com.marvin.espeak"

#the value of this static final field might be set in the static constructor
.field private static final NEW_PLATFORM:Z = false

.field private static final PICO_ENGINE_PACKAGE:Ljava/lang/String; = "com.svox.pico"

.field private static final PICO_LANG_SET:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TTS_EXTENDED_PACKAGE:Ljava/lang/String; = "com.google.tts"


# instance fields
.field private mCallback:Lcom/google/android/apps/translate/DonutTtsCallback;

.field private final mEspeakEngine:Ljava/lang/String;

.field private final mIsEspeakEngineInstalled:Z

.field private final mIsTtsExtendedInstalled:Z

.field private mTts:Lcom/google/tts/TextToSpeechBeta;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_b
    sput-boolean v1, Lcom/google/android/apps/translate/DonutTtsWrapper;->NEW_PLATFORM:Z

    .line 25
    invoke-static {}, Lcom/google/android/apps/translate/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/translate/DonutTtsWrapper;->PICO_LANG_SET:Ljava/util/HashSet;

    .line 28
    invoke-static {}, Lcom/google/android/apps/translate/DonutTtsWrapper;->setPicoLanguagesMap()V

    .line 40
    :try_start_16
    const-string v1, "android.speech.tts.TextToSpeech"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1e

    .line 44
    return-void

    .line 23
    :cond_1c
    const/4 v1, 0x0

    goto :goto_b

    .line 41
    :catch_1e
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/translate/DonutTtsCallback;)V
    .registers 5
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mCallback:Lcom/google/android/apps/translate/DonutTtsCallback;

    .line 54
    new-instance v0, Lcom/google/tts/TextToSpeechBeta;

    new-instance v1, Lcom/google/android/apps/translate/DonutTtsWrapper$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/DonutTtsWrapper$1;-><init>(Lcom/google/android/apps/translate/DonutTtsWrapper;)V

    invoke-direct {v0, p1, v1}, Lcom/google/tts/TextToSpeechBeta;-><init>(Landroid/content/Context;Lcom/google/tts/TextToSpeechBeta$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    .line 62
    sget-boolean v0, Lcom/google/android/apps/translate/DonutTtsWrapper;->NEW_PLATFORM:Z

    if-eqz v0, :cond_26

    const-string v0, "com.marvin.espeak"

    :goto_17
    iput-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mEspeakEngine:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isTtsExtendedInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsTtsExtendedInstalled:Z

    .line 64
    invoke-static {p1}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isEspeakEngineInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsEspeakEngineInstalled:Z

    .line 65
    return-void

    .line 62
    :cond_26
    const-string v0, "com.google.tts"

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/DonutTtsWrapper;)Lcom/google/android/apps/translate/DonutTtsCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mCallback:Lcom/google/android/apps/translate/DonutTtsCallback;

    return-object v0
.end method

.method public static checkAvailable()V
    .registers 0

    .prologue
    .line 47
    return-void
.end method

.method public static isEspeakEngineInstalled(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 185
    sget-boolean v3, Lcom/google/android/apps/translate/DonutTtsWrapper;->NEW_PLATFORM:Z

    if-nez v3, :cond_6

    .line 193
    :goto_5
    return v2

    .line 187
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 189
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_a
    const-string v3, "com.marvin.espeak"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_12

    .line 193
    const/4 v2, 0x1

    goto :goto_5

    .line 190
    :catch_12
    move-exception v0

    .line 191
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_5
.end method

.method private isLanguageAvailable(Ljava/util/Locale;Ljava/lang/String;)Z
    .registers 5
    .parameter "locale"
    .parameter "engine"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v1, p2}, Lcom/google/tts/TextToSpeechBeta;->setEngineByPackageNameExtended(Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v1, p1}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v1, p1}, Lcom/google/tts/TextToSpeechBeta;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    .line 169
    .local v0, languageSupport:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    const/4 v1, -0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private static isPicoSupportedLanguage(Ljava/lang/String;)Z
    .registers 2
    .parameter "language"

    .prologue
    .line 162
    sget-object v0, Lcom/google/android/apps/translate/DonutTtsWrapper;->PICO_LANG_SET:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTtsExtendedInstalled(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 177
    sget-boolean v0, Lcom/google/android/apps/translate/DonutTtsWrapper;->NEW_PLATFORM:Z

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/google/tts/TextToSpeechBeta;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static setPicoLanguagesMap()V
    .registers 5

    .prologue
    .line 156
    sget-object v0, Lcom/google/android/apps/translate/Constants;->PICO_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v3, :cond_10

    aget-object v2, v0, v1

    .line 157
    .local v2, l:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/translate/DonutTtsWrapper;->PICO_LANG_SET:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 159
    .end local v2           #l:Ljava/lang/String;
    :cond_10
    return-void
.end method


# virtual methods
.method public isLanguageAvailable(Ljava/util/Locale;)Z
    .registers 6
    .parameter "locale"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 126
    iget-object v3, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-nez v3, :cond_7

    .line 152
    :cond_6
    :goto_6
    return v1

    .line 128
    :cond_7
    iget-boolean v3, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsTtsExtendedInstalled:Z

    if-nez v3, :cond_f

    sget-boolean v3, Lcom/google/android/apps/translate/DonutTtsWrapper;->NEW_PLATFORM:Z

    if-eqz v3, :cond_52

    .line 129
    :cond_f
    iget-object v3, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v3}, Lcom/google/tts/TextToSpeechBeta;->getDefaultEngineExtended()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, defaultEngine:Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v3}, Lcom/google/tts/TextToSpeechBeta;->areDefaultsEnforcedExtended()Z

    move-result v3

    if-eqz v3, :cond_21

    move v1, v2

    .line 133
    goto :goto_6

    .line 134
    :cond_21
    const-string v3, "com.svox.pico"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mEspeakEngine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isLanguageAvailable(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    move v1, v2

    .line 138
    goto :goto_6

    .line 142
    :cond_39
    const-string v3, "com.svox.pico"

    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isLanguageAvailable(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    move v1, v2

    .line 143
    goto :goto_6

    .line 144
    :cond_43
    iget-boolean v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsTtsExtendedInstalled:Z

    if-nez v2, :cond_4b

    iget-boolean v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsEspeakEngineInstalled:Z

    if-eqz v2, :cond_6

    .line 145
    :cond_4b
    iget-object v1, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mEspeakEngine:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isLanguageAvailable(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    .line 147
    .end local v0           #defaultEngine:Ljava/lang/String;
    :cond_52
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isPicoSupportedLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 149
    goto :goto_6
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v0}, Lcom/google/tts/TextToSpeechBeta;->shutdown()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    .line 75
    :cond_c
    return-void
.end method

.method public speak(Ljava/util/Locale;Ljava/lang/String;I)V
    .registers 9
    .parameter "locale"
    .parameter "text"
    .parameter "queueMode"

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-boolean v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsTtsExtendedInstalled:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/google/android/apps/translate/DonutTtsWrapper;->NEW_PLATFORM:Z

    if-eqz v2, :cond_50

    .line 82
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v2}, Lcom/google/tts/TextToSpeechBeta;->getDefaultEngineExtended()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, defaultEngine:Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v2}, Lcom/google/tts/TextToSpeechBeta;->areDefaultsEnforcedExtended()Z

    move-result v1

    .line 88
    .local v1, defaultFocred:Z
    if-nez v1, :cond_29

    const-string v2, "com.svox.pico"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mEspeakEngine:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 91
    :cond_29
    if-nez v1, :cond_31

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isLanguageAvailable(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 92
    :cond_31
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v2, v0}, Lcom/google/tts/TextToSpeechBeta;->setEngineByPackageNameExtended(Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v2, p1}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    .line 94
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v2, p2, p3, v4}, Lcom/google/tts/TextToSpeechBeta;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 113
    .end local v0           #defaultEngine:Ljava/lang/String;
    .end local v1           #defaultFocred:Z
    :cond_40
    :goto_40
    return-void

    .line 101
    .restart local v0       #defaultEngine:Ljava/lang/String;
    :cond_41
    const-string v2, "com.svox.pico"

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isLanguageAvailable(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    const-string v3, "com.svox.pico"

    invoke-virtual {v2, v3}, Lcom/google/tts/TextToSpeechBeta;->setEngineByPackageNameExtended(Ljava/lang/String;)I

    .line 111
    .end local v0           #defaultEngine:Ljava/lang/String;
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v2, p1}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v2, p2, p3, v4}, Lcom/google/tts/TextToSpeechBeta;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_40

    .line 103
    .restart local v0       #defaultEngine:Ljava/lang/String;
    :cond_5b
    iget-boolean v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsTtsExtendedInstalled:Z

    if-nez v2, :cond_63

    iget-boolean v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mIsEspeakEngineInstalled:Z

    if-eqz v2, :cond_40

    .line 104
    :cond_63
    iget-object v2, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    iget-object v3, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mEspeakEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/tts/TextToSpeechBeta;->setEngineByPackageNameExtended(Ljava/lang/String;)I

    goto :goto_50
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v0}, Lcom/google/tts/TextToSpeechBeta;->stop()I

    .line 120
    return-void
.end method
