.class public Lcom/google/tts/TTSService;
.super Landroid/app/Service;
.source "TTSService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/TTSService$SoundResource;,
        Lcom/google/tts/TTSService$SpeechItem;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "android.intent.action.USE_TTS"

.field private static final BETA_ACTION:Ljava/lang/String; = "com.google.intent.action.START_TTS_SERVICE_BETA"

.field private static final BETA_CATEGORY:Ljava/lang/String; = "com.google.intent.category.TTS_BETA"

.field private static final CATEGORY:Ljava/lang/String; = "android.intent.category.TTS"

.field private static final DEFAULT_STREAM_TYPE:I = 0x3

.field private static final DEFAULT_SYNTH:Ljava/lang/String; = "com.svox.pico"

.field private static final MAX_FILENAME_LENGTH:I = 0xfa

.field private static final MAX_SPEECH_ITEM_CHAR_LENGTH:I = 0xfa0

.field private static final PKGNAME:Ljava/lang/String; = "android.tts"

.field protected static final SERVICE_TAG:Ljava/lang/String; = "TtsService"

.field private static final SPEECHQUEUELOCK_TIMEOUT:I = 0x1388

.field static final langRegionToLocale:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNativeSynth:Lcom/google/tts/SynthProxyBeta;


# instance fields
.field private currentSpeechEngineSOFile:Ljava/lang/String;

.field private deprecatedKeepBlockingFlag:Z

.field private final mBinder:Lcom/google/tts/ITtsBeta$Stub;

.field private final mBinderOld:Lcom/google/tts/ITTS$Stub;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/google/tts/ITtsCallbackBeta;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tts/ITtsCallbackBeta;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacksOld:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/google/tts/ITTSCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

.field private mEarcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tts/TTSService$SoundResource;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSpeaking:Z

.field private mKillList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/tts/TTSService$SpeechItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSelf:Lcom/google/tts/TTSService;

.field private mSpeechQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/tts/TTSService$SpeechItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSynthBusy:Z

.field private mUtterances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tts/TTSService$SoundResource;",
            ">;"
        }
    .end annotation
.end field

.field private final speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field synthThreadBusy:Z

.field private final synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    .line 69
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "af"

    const-string v2, "afr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "bs"

    const-string v2, "bos"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "zh-rHK"

    const-string v2, "yue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "zh"

    const-string v2, "cmn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "hr"

    const-string v2, "hrv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "cz"

    const-string v2, "ces"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "cs"

    const-string v2, "ces"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "nl"

    const-string v2, "nld"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "en"

    const-string v2, "eng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "en-rUS"

    const-string v2, "eng-USA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "en-rGB"

    const-string v2, "eng-GBR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "eo"

    const-string v2, "epo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "fi"

    const-string v2, "fin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "fr"

    const-string v2, "fra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "fr-rFR"

    const-string v2, "fra-FRA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "de"

    const-string v2, "deu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "de-rDE"

    const-string v2, "deu-DEU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "el"

    const-string v2, "ell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "hi"

    const-string v2, "hin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "hu"

    const-string v2, "hun"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "is"

    const-string v2, "isl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "ind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "it"

    const-string v2, "ita"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "it-rIT"

    const-string v2, "ita-ITA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "ku"

    const-string v2, "kur"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "la"

    const-string v2, "lat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "mk"

    const-string v2, "mkd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "no"

    const-string v2, "nor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "pl"

    const-string v2, "pol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "pt"

    const-string v2, "por"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "ro"

    const-string v2, "ron"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "ru"

    const-string v2, "rus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "sr"

    const-string v2, "srp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "sk"

    const-string v2, "slk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "spa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "es-rES"

    const-string v2, "spa-ESP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "es-rMX"

    const-string v2, "spa-MEX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "sw"

    const-string v2, "swa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "sv"

    const-string v2, "swe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "ta"

    const-string v2, "tam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "tr"

    const-string v2, "tur"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "vi"

    const-string v2, "vie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    const-string v1, "cy"

    const-string v2, "cym"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 211
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/tts/TTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 215
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;

    .line 239
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 241
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TTSService;->currentSpeechEngineSOFile:Ljava/lang/String;

    .line 247
    iput-boolean v1, p0, Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z

    .line 934
    iput-boolean v1, p0, Lcom/google/tts/TTSService;->synthThreadBusy:Z

    .line 1412
    new-instance v0, Lcom/google/tts/TTSService$1;

    invoke-direct {v0, p0}, Lcom/google/tts/TTSService$1;-><init>(Lcom/google/tts/TTSService;)V

    iput-object v0, p0, Lcom/google/tts/TTSService;->mBinder:Lcom/google/tts/ITtsBeta$Stub;

    .line 1677
    new-instance v0, Lcom/google/tts/TTSService$2;

    invoke-direct {v0, p0}, Lcom/google/tts/TTSService$2;-><init>(Lcom/google/tts/TTSService;)V

    iput-object v0, p0, Lcom/google/tts/TTSService;->mBinderOld:Lcom/google/tts/ITTS$Stub;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/google/tts/TTSService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/tts/TTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/tts/TTSService;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/tts/TTSService;->mCallbacksMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tts/TTSService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 635
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$12(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tts/TTSService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/google/tts/TTSService;Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/google/tts/TTSService;Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    invoke-direct {p0, p1, p2}, Lcom/google/tts/TTSService;->setPitch(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$16(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tts/TTSService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/google/tts/TTSService;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1359
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;
    .registers 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;

    return-object v0
.end method

.method static synthetic access$20(Lcom/google/tts/TTSService;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/google/tts/TTSService;)Z
    .registers 2
    .parameter

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/tts/TTSService;->isDefaultEnforced()Z

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/google/tts/TTSService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$23(Lcom/google/tts/TTSService;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->stopAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/google/tts/TTSService;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z

    return-void
.end method

.method static synthetic access$25(Lcom/google/tts/TTSService;)Z
    .registers 2
    .parameter

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z

    return v0
.end method

.method static synthetic access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1162
    invoke-direct {p0, p1, p2}, Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27(Lcom/google/tts/TTSService;)V
    .registers 1
    .parameter

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/google/tts/TTSService;->processSpeechQueue()V

    return-void
.end method

.method static synthetic access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$29(Lcom/google/tts/TTSService;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/tts/TTSService;->mSynthBusy:Z

    return-void
.end method

.method static synthetic access$3(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$30(Lcom/google/tts/TTSService;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$31(Lcom/google/tts/TTSService;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$32(Lcom/google/tts/TTSService;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33(Lcom/google/tts/TTSService;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$34(Lcom/google/tts/TTSService;)I
    .registers 2
    .parameter

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultRate()I

    move-result v0

    return v0
.end method

.method static synthetic access$35(Lcom/google/tts/TTSService;)I
    .registers 2
    .parameter

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultPitch()I

    move-result v0

    return v0
.end method

.method static synthetic access$36()Lcom/google/tts/SynthProxyBeta;
    .registers 1

    .prologue
    .line 243
    sget-object v0, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    return-object v0
.end method

.method static synthetic access$4(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 684
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/google/tts/TTSService;Ljava/lang/String;JILjava/util/ArrayList;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 893
    invoke-direct/range {p0 .. p5}, Lcom/google/tts/TTSService;->playSilence(Ljava/lang/String;JILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/google/tts/TTSService;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->stop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/google/tts/TTSService;)Z
    .registers 2
    .parameter

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    return v0
.end method

.method static synthetic access$8(Lcom/google/tts/TTSService;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/tts/TTSService;->mEarcons:Ljava/util/HashMap;

    new-instance v1, Lcom/google/tts/TTSService$SoundResource;

    invoke-direct {v1, p3}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    return-void
.end method

.method private addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/tts/TTSService;->mEarcons:Ljava/util/HashMap;

    new-instance v1, Lcom/google/tts/TTSService$SoundResource;

    invoke-direct {v1, p3, p4}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-void
.end method

.method private addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "callingApp"
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/tts/TTSService;->mUtterances:Ljava/util/HashMap;

    new-instance v1, Lcom/google/tts/TTSService$SoundResource;

    invoke-direct {v1, p3}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    return-void
.end method

.method private addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "callingApp"
    .parameter "text"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/tts/TTSService;->mUtterances:Ljava/util/HashMap;

    new-instance v1, Lcom/google/tts/TTSService$SoundResource;

    invoke-direct {v1, p3, p4}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    return-void
.end method

.method private broadcastTtsQueueProcessingCompleted()V
    .registers 3

    .prologue
    .line 1158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/tts/TTSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1160
    return-void
.end method

.method private cleanUpPlayer()V
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 1341
    iget-object v0, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    .line 1344
    :cond_c
    return-void
.end method

.method private dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "utteranceId"
    .parameter "packageName"

    .prologue
    .line 1164
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 1165
    .local v4, oldN:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-lt v3, v4, :cond_19

    .line 1174
    :try_start_9
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_e} :catch_29

    .line 1182
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCallbacksMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tts/ITtsCallbackBeta;

    .line 1183
    .local v1, cb:Lcom/google/tts/ITtsCallbackBeta;
    if-nez v1, :cond_2b

    .line 1197
    .end local v1           #cb:Lcom/google/tts/ITtsCallbackBeta;
    :goto_18
    return-void

    .line 1167
    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/google/tts/ITTSCallback;

    const-string v6, ""

    invoke-interface {v5, v6}, Lcom/google/tts/ITTSCallback;->markReached(Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_57

    .line 1165
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1175
    :catch_29
    move-exception v2

    .line 1179
    .local v2, e:Ljava/lang/IllegalStateException;
    goto :goto_18

    .line 1186
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #cb:Lcom/google/tts/ITtsCallbackBeta;
    :cond_2b
    const-string v5, "TtsService"

    const-string v6, "TTS callback: dispatch started"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1190
    .local v0, N:I
    :try_start_38
    invoke-interface {v1, p1}, Lcom/google/tts/ITtsCallbackBeta;->utteranceCompleted(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_55

    .line 1195
    :goto_3b
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1196
    const-string v5, "TtsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TTS callback: dispatch completed to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1191
    :catch_55
    move-exception v5

    goto :goto_3b

    .line 1168
    .end local v0           #N:I
    .end local v1           #cb:Lcom/google/tts/ITtsCallbackBeta;
    :catch_57
    move-exception v5

    goto :goto_26
.end method

.method private getDefaultCountry()Ljava/lang/String;
    .registers 4

    .prologue
    .line 522
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 523
    const-string v1, "tts_default_country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultEngine()Ljava/lang/String;
    .registers 5

    .prologue
    .line 487
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tts_default_synth"

    const-string v3, "com.svox.pico"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, defaultEngine:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 489
    const-string v0, "com.svox.pico"

    .line 491
    .end local v0           #defaultEngine:Ljava/lang/String;
    :cond_10
    return-object v0
.end method

.method private getDefaultLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 511
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 512
    const-string v1, "tts_default_lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultLocVariant()Ljava/lang/String;
    .registers 4

    .prologue
    .line 533
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 534
    const-string v1, "tts_default_variant"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultPitch()I
    .registers 2

    .prologue
    .line 507
    const/16 v0, 0x64

    return v0
.end method

.method private getDefaultRate()I
    .registers 4

    .prologue
    .line 496
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    const-string v1, "rate_pref"

    const-string v2, "100"

    .line 496
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getLanguage()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 581
    :try_start_0
    sget-object v1, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v1}, Lcom/google/tts/SynthProxyBeta;->getLanguage()[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 583
    :goto_6
    return-object v1

    .line 582
    :catch_7
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private getSoundResource(Lcom/google/tts/TTSService$SpeechItem;)Lcom/google/tts/TTSService$SoundResource;
    .registers 6
    .parameter "speechItem"

    .prologue
    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, sr:Lcom/google/tts/TTSService$SoundResource;
    iget-object v1, p1, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    .line 1147
    .local v1, text:Ljava/lang/String;
    iget v2, p1, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    .line 1149
    iget v2, p1, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 1150
    iget-object v2, p0, Lcom/google/tts/TTSService;->mEarcons:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sr:Lcom/google/tts/TTSService$SoundResource;
    check-cast v0, Lcom/google/tts/TTSService$SoundResource;

    .line 1154
    .restart local v0       #sr:Lcom/google/tts/TTSService$SoundResource;
    :cond_15
    :goto_15
    return-object v0

    .line 1152
    :cond_16
    iget-object v2, p0, Lcom/google/tts/TTSService;->mUtterances:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sr:Lcom/google/tts/TTSService$SoundResource;
    check-cast v0, Lcom/google/tts/TTSService$SoundResource;

    .restart local v0       #sr:Lcom/google/tts/TTSService$SoundResource;
    goto :goto_15
.end method

.method private getStreamTypeFromParams(Ljava/util/ArrayList;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1322
    .local p1, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x3

    .line 1323
    .local v3, streamType:I
    if-nez p1, :cond_5

    move v4, v3

    .line 1336
    .end local v3           #streamType:I
    .local v4, streamType:I
    :goto_4
    return v4

    .line 1326
    .end local v4           #streamType:I
    .restart local v3       #streamType:I
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_10

    move v4, v3

    .line 1336
    .end local v3           #streamType:I
    .restart local v4       #streamType:I
    goto :goto_4

    .line 1327
    .end local v4           #streamType:I
    .restart local v3       #streamType:I
    :cond_10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1328
    .local v2, param:Ljava/lang/String;
    if-eqz v2, :cond_2c

    const-string v5, "streamType"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1330
    add-int/lit8 v5, v1, 0x1

    :try_start_22
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2b} :catch_2f

    move-result v3

    .line 1326
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 1331
    :catch_2f
    move-exception v0

    .line 1332
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x3

    goto :goto_2c
.end method

.method private isDefaultEnforced()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "toggle_use_default_tts_settings"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method private isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 569
    const/4 v1, -0x2

    .line 571
    .local v1, res:I
    :try_start_1
    sget-object v2, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/tts/SynthProxyBeta;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 576
    :goto_7
    return v1

    .line 572
    :catch_8
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_7
.end method

.method private killAllUtterances()I
    .registers 9

    .prologue
    .line 760
    const/4 v1, -0x1

    .line 761
    .local v1, result:I
    const/4 v2, 0x0

    .line 764
    .local v2, speechQueueAvailable:Z
    :try_start_2
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1388

    .line 765
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 764
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 766
    if-eqz v2, :cond_90

    .line 768
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 771
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    if-eqz v4, :cond_88

    .line 775
    sget-object v4, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v4}, Lcom/google/tts/SynthProxyBeta;->stop()I

    move-result v1

    .line 776
    iget-object v4, p0, Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    .line 780
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_85

    .line 782
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_85

    .line 783
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .local v3, tempFile:Ljava/io/File;
    const-string v4, "TtsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Leaving behind "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v6, v6, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 786
    const-string v4, "TtsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "About to delete "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    iget-object v6, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v6, v6, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 786
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 789
    const-string v4, "TtsService"

    const-string v5, "file successfully deleted"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v3           #tempFile:Ljava/io/File;
    :cond_85
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;
    :try_end_88
    .catchall {:try_start_2 .. :try_end_88} :catchall_a3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_88} :catch_99

    .line 807
    :cond_88
    :goto_88
    if-eqz v2, :cond_8f

    .line 808
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 810
    :cond_8f
    return v1

    .line 798
    :cond_90
    :try_start_90
    const-string v4, "TtsService"

    const-string v5, "TTS killAllUtterances(): queue locked longer than expected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_a3
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_97} :catch_99

    .line 799
    const/4 v1, -0x1

    goto :goto_88

    .line 801
    :catch_99
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_9a
    const-string v4, "TtsService"

    const-string v5, "TTS killAllUtterances(): tryLock interrupted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a3

    .line 803
    const/4 v1, -0x1

    goto :goto_88

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_a3
    move-exception v4

    goto :goto_88
.end method

.method private playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 8
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 685
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_19

    .line 686
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->stop(Ljava/lang/String;)I

    .line 690
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tts/TTSService$SpeechItem;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p4, v2}, Lcom/google/tts/TTSService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-boolean v0, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    if-nez v0, :cond_17

    .line 692
    invoke-direct {p0}, Lcom/google/tts/TTSService;->processSpeechQueue()V

    .line 694
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 687
    :cond_19
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 688
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->stopAll(Ljava/lang/String;)I

    goto :goto_5
.end method

.method private playSilence(Ljava/lang/String;JILjava/util/ArrayList;)I
    .registers 8
    .parameter "callingApp"
    .parameter "duration"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 895
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p4, :cond_5

    .line 896
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->stop(Ljava/lang/String;)I

    .line 898
    :cond_5
    iget-object v0, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/google/tts/TTSService$SpeechItem;-><init>(Ljava/lang/String;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-boolean v0, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    if-nez v0, :cond_16

    .line 900
    invoke-direct {p0}, Lcom/google/tts/TTSService;->processSpeechQueue()V

    .line 902
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private processSpeechQueue()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 1228
    const/4 v2, 0x0

    .line 1229
    .local v2, speechQueueAvailable:Z
    monitor-enter p0

    .line 1230
    :try_start_3
    iget-boolean v4, p0, Lcom/google/tts/TTSService;->mSynthBusy:Z

    if-eqz v4, :cond_9

    .line 1232
    monitor-exit p0

    .line 1319
    :cond_8
    :goto_8
    return-void

    .line 1229
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_25

    .line 1237
    :try_start_a
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 1238
    if-nez v2, :cond_28

    .line 1239
    const-string v4, "TtsService"

    const-string v5, "processSpeechQueue - Speech queue is unavailable."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_1d} :catch_3c

    .line 1315
    :goto_1d
    if-eqz v2, :cond_8

    .line 1316
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    .line 1229
    :catchall_25
    move-exception v4

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v4

    .line 1242
    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v8, :cond_4f

    .line 1243
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    .line 1244
    iget-object v4, p0, Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1245
    invoke-direct {p0}, Lcom/google/tts/TTSService;->broadcastTtsQueueProcessingCompleted()V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_3b} :catch_3c

    goto :goto_1d

    .line 1309
    :catch_3c
    move-exception v1

    .line 1310
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3d
    const-string v4, "TtsService"

    const-string v5, "TTS processSpeechQueue: tryLock interrupted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_b4

    .line 1315
    if-eqz v2, :cond_8

    .line 1316
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    .line 1249
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4f
    :try_start_4f
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tts/TTSService$SpeechItem;

    iput-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    .line 1250
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    .line 1251
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0, v4}, Lcom/google/tts/TTSService;->getSoundResource(Lcom/google/tts/TTSService$SpeechItem;)Lcom/google/tts/TTSService$SoundResource;

    move-result-object v3

    .line 1254
    .local v3, sr:Lcom/google/tts/TTSService$SoundResource;
    const-string v4, "TtsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TTS processing: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v6, v6, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    if-nez v3, :cond_c3

    .line 1256
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    if-nez v4, :cond_a7

    .line 1257
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0, v4}, Lcom/google/tts/TTSService;->splitCurrentTextIfNeeded(Lcom/google/tts/TTSService$SpeechItem;)Lcom/google/tts/TTSService$SpeechItem;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    .line 1258
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0, v4}, Lcom/google/tts/TTSService;->speakInternalOnly(Lcom/google/tts/TTSService$SpeechItem;)V

    .line 1306
    :goto_90
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9e

    .line 1307
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_4f .. :try_end_9e} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_9e} :catch_3c

    .line 1315
    :cond_9e
    if-eqz v2, :cond_8

    .line 1316
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_8

    .line 1259
    :cond_a7
    :try_start_a7
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_bd

    .line 1260
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0, v4}, Lcom/google/tts/TTSService;->synthToFileInternalOnly(Lcom/google/tts/TTSService$SpeechItem;)V
    :try_end_b3
    .catchall {:try_start_a7 .. :try_end_b3} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_b3} :catch_3c

    goto :goto_90

    .line 1312
    .end local v3           #sr:Lcom/google/tts/TTSService$SoundResource;
    :catchall_b4
    move-exception v4

    .line 1315
    if-eqz v2, :cond_bc

    .line 1316
    iget-object v5, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1318
    :cond_bc
    throw v4

    .line 1263
    .restart local v3       #sr:Lcom/google/tts/TTSService$SoundResource;
    :cond_bd
    :try_start_bd
    iget-object v4, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0, v4}, Lcom/google/tts/TTSService;->silence(Lcom/google/tts/TTSService$SpeechItem;)V

    goto :goto_90

    .line 1266
    :cond_c3
    invoke-direct {p0}, Lcom/google/tts/TTSService;->cleanUpPlayer()V

    .line 1267
    iget-object v4, v3, Lcom/google/tts/TTSService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    const-string v5, "android.tts"

    if-ne v4, v5, :cond_e9

    .line 1269
    iget v4, v3, Lcom/google/tts/TTSService$SoundResource;->mResId:I

    invoke-static {p0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    .line 1290
    :goto_d4
    iget-object v4, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_120

    .line 1291
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1292
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z
    :try_end_e0
    .catchall {:try_start_bd .. :try_end_e0} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_e0} :catch_3c

    .line 1315
    if-eqz v2, :cond_8

    .line 1316
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_8

    .line 1270
    :cond_e9
    :try_start_e9
    iget-object v4, v3, Lcom/google/tts/TTSService$SoundResource;->mSourcePackageName:Ljava/lang/String;
    :try_end_eb
    .catchall {:try_start_e9 .. :try_end_eb} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_eb} :catch_3c

    if-eqz v4, :cond_113

    .line 1274
    :try_start_ed
    iget-object v4, v3, Lcom/google/tts/TTSService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/tts/TTSService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_f3
    .catchall {:try_start_ed .. :try_end_f3} :catchall_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ed .. :try_end_f3} :catch_fd
    .catch Ljava/lang/InterruptedException; {:try_start_ed .. :try_end_f3} :catch_3c

    move-result-object v0

    .line 1282
    .local v0, ctx:Landroid/content/Context;
    :try_start_f4
    iget v4, v3, Lcom/google/tts/TTSService$SoundResource;->mResId:I

    invoke-static {v0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_d4

    .line 1275
    .end local v0           #ctx:Landroid/content/Context;
    :catch_fd
    move-exception v1

    .line 1276
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1277
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1279
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z
    :try_end_10a
    .catchall {:try_start_f4 .. :try_end_10a} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_f4 .. :try_end_10a} :catch_3c

    .line 1315
    if-eqz v2, :cond_8

    .line 1316
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_8

    .line 1285
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_113
    :try_start_113
    iget-object v4, v3, Lcom/google/tts/TTSService$SoundResource;->mFilename:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_d4

    .line 1295
    :cond_120
    iget-object v4, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_125
    .catchall {:try_start_113 .. :try_end_125} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_113 .. :try_end_125} :catch_3c

    .line 1297
    :try_start_125
    iget-object v4, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/google/tts/TTSService;->getStreamTypeFromParams(Ljava/util/ArrayList;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1298
    iget-object v4, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_137
    .catchall {:try_start_125 .. :try_end_137} :catchall_b4
    .catch Ljava/lang/IllegalStateException; {:try_start_125 .. :try_end_137} :catch_139
    .catch Ljava/lang/InterruptedException; {:try_start_125 .. :try_end_137} :catch_3c

    goto/16 :goto_90

    .line 1299
    :catch_139
    move-exception v1

    .line 1300
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_13a
    iget-object v4, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1301
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    .line 1302
    invoke-direct {p0}, Lcom/google/tts/TTSService;->cleanUpPlayer()V
    :try_end_145
    .catchall {:try_start_13a .. :try_end_145} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_13a .. :try_end_145} :catch_3c

    .line 1315
    if-eqz v2, :cond_8

    .line 1316
    iget-object v4, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_8
.end method

.method private setDefaultSettings()V
    .registers 5

    .prologue
    .line 466
    const-string v0, ""

    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v0, ""

    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultRate()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I

    .line 470
    return-void
.end method

.method private setEngine(Ljava/lang/String;)I
    .registers 16
    .parameter "enginePackageName"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/google/tts/TTSService;->isDefaultEnforced()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 347
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultEngine()Ljava/lang/String;

    move-result-object p1

    .line 354
    :cond_a
    const/4 v8, 0x4

    .line 356
    .local v8, sdkInt:I
    :try_start_b
    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_10} :catch_37

    move-result v8

    .line 360
    :goto_11
    const/4 v10, 0x4

    if-ge v8, v10, :cond_1e

    const-string v10, "com.svox.pico"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 361
    const-string p1, "com.google.tts"

    .line 364
    :cond_1e
    const-string v9, ""

    .line 370
    .local v9, soFilename:Ljava/lang/String;
    const-string v10, "com.svox.pico"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 374
    const/4 v10, 0x5

    if-ge v8, v10, :cond_4f

    .line 375
    const-string v9, "/data/data/com.google.tts/lib/libttspico_4.so"

    .line 443
    :cond_2d
    :goto_2d
    iget-object v10, p0, Lcom/google/tts/TTSService;->currentSpeechEngineSOFile:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_155

    .line 444
    const/4 v10, 0x0

    .line 462
    :goto_36
    return v10

    .line 357
    .end local v9           #soFilename:Ljava/lang/String;
    :catch_37
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v10, "TtsService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to parse SDK version: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 377
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #soFilename:Ljava/lang/String;
    :cond_4f
    const-string v9, "/data/data/com.google.tts/lib/libttspico.so"

    goto :goto_2d

    .line 408
    :cond_52
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.START_TTS_ENGINE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v5, intent:Landroid/content/Intent;
    const/4 v10, 0x0

    new-array v2, v10, [Landroid/content/pm/ResolveInfo;

    .line 410
    .local v2, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/google/tts/TTSService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 411
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 412
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v2, [Landroid/content/pm/ResolveInfo;

    .line 413
    .restart local v2       #enginesArray:[Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 414
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6d
    array-length v10, v2

    if-lt v4, v10, :cond_88

    .line 420
    :goto_70
    if-nez v0, :cond_9c

    .line 421
    const-string v10, "TtsService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Invalid TTS Engine Package: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v10, -0x1

    goto :goto_36

    .line 415
    :cond_88
    aget-object v10, v2, v4

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    .line 416
    aget-object v10, v2, v4

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 417
    goto :goto_70

    .line 414
    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    .line 426
    :cond_9c
    const/4 v10, 0x5

    if-ge v8, v10, :cond_a0

    .line 427
    const/4 v8, 0x4

    .line 429
    :cond_a0
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".so"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 430
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/data/data/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/lib/libtts"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 432
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 435
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".so"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 437
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/data/data/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/lib/libtts"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2d

    .line 447
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #enginesArray:[Landroid/content/pm/ResolveInfo;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v7           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_155
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_177

    .line 449
    const-string v10, "TtsService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Invalid TTS Binary: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v10, -0x1

    goto/16 :goto_36

    .line 452
    :cond_177
    sget-object v10, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    if-eqz v10, :cond_188

    .line 456
    sget-object v10, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v10}, Lcom/google/tts/SynthProxyBeta;->stop()I

    .line 457
    sget-object v10, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v10}, Lcom/google/tts/SynthProxyBeta;->shutdown()V

    .line 458
    const/4 v10, 0x0

    sput-object v10, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    .line 460
    :cond_188
    new-instance v10, Lcom/google/tts/SynthProxyBeta;

    invoke-direct {v10, v9}, Lcom/google/tts/SynthProxyBeta;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    .line 461
    iput-object v9, p0, Lcom/google/tts/TTSService;->currentSpeechEngineSOFile:Ljava/lang/String;

    .line 462
    const/4 v10, 0x0

    goto/16 :goto_36
.end method

.method private setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "callingApp"
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 589
    const-string v2, "TtsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TtsService.setLanguage("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 590
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v1, -0x1

    .line 593
    .local v1, res:I
    :try_start_2f
    invoke-direct {p0}, Lcom/google/tts/TTSService;->isDefaultEnforced()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 594
    sget-object v2, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v5

    .line 594
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/tts/SynthProxyBeta;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 603
    :goto_47
    return v1

    .line 597
    :cond_48
    sget-object v2, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v2, p2, p3, p4}, Lcom/google/tts/SynthProxyBeta;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_4d} :catch_4f

    move-result v1

    goto :goto_47

    .line 599
    :catch_4f
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_47
.end method

.method private setPitch(Ljava/lang/String;I)I
    .registers 6
    .parameter "callingApp"
    .parameter "pitch"

    .prologue
    .line 558
    const/4 v1, -0x1

    .line 560
    .local v1, res:I
    :try_start_1
    sget-object v2, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v2, p2}, Lcom/google/tts/SynthProxyBeta;->setPitch(I)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 565
    :goto_7
    return v1

    .line 561
    :catch_8
    move-exception v0

    .line 563
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_7
.end method

.method private setSpeechRate(Ljava/lang/String;I)I
    .registers 7
    .parameter "callingApp"
    .parameter "rate"

    .prologue
    .line 543
    const/4 v1, -0x1

    .line 545
    .local v1, res:I
    :try_start_1
    invoke-direct {p0}, Lcom/google/tts/TTSService;->isDefaultEnforced()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 546
    sget-object v2, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-direct {p0}, Lcom/google/tts/TTSService;->getDefaultRate()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/tts/SynthProxyBeta;->setSpeechRate(I)I

    move-result v1

    .line 554
    :goto_11
    return v1

    .line 548
    :cond_12
    sget-object v2, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v2, p2}, Lcom/google/tts/SynthProxyBeta;->setSpeechRate(I)I
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 550
    :catch_19
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_11
.end method

.method private silence(Lcom/google/tts/TTSService$SpeechItem;)V
    .registers 4
    .parameter "speechItem"

    .prologue
    .line 929
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/tts/TTSService$1SilenceThread;

    invoke-direct {v1, p0, p1}, Lcom/google/tts/TTSService$1SilenceThread;-><init>(Lcom/google/tts/TTSService;Lcom/google/tts/TTSService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 930
    .local v0, slnc:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 931
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 932
    return-void
.end method

.method private speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 9
    .parameter "callingApp"
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 661
    const-string v0, "TtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TTS service received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-nez p3, :cond_2c

    .line 663
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->stop(Ljava/lang/String;)I

    .line 667
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {v1, p1, p2, p4, v3}, Lcom/google/tts/TTSService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-boolean v0, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    if-nez v0, :cond_2b

    .line 669
    invoke-direct {p0}, Lcom/google/tts/TTSService;->processSpeechQueue()V

    .line 671
    :cond_2b
    return v3

    .line 664
    :cond_2c
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1a

    .line 665
    invoke-direct {p0, p1}, Lcom/google/tts/TTSService;->stopAll(Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private speakInternalOnly(Lcom/google/tts/TTSService$SpeechItem;)V
    .registers 6
    .parameter "speechItem"

    .prologue
    .line 937
    const-string v1, "TtsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating synth thread for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/tts/TTSService$1SynthThread;

    invoke-direct {v1, p0, p1}, Lcom/google/tts/TTSService$1SynthThread;-><init>(Lcom/google/tts/TTSService;Lcom/google/tts/TTSService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1037
    .local v0, synth:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1038
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1039
    return-void
.end method

.method private splitCurrentTextIfNeeded(Lcom/google/tts/TTSService$SpeechItem;)Lcom/google/tts/TTSService$SpeechItem;
    .registers 13
    .parameter "currentSpeechItem"

    .prologue
    const/4 v10, 0x0

    const/16 v8, 0xfa0

    const/4 v9, 0x0

    .line 1200
    iget-object v7, p1, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_d

    .line 1223
    .end local p1
    :goto_c
    return-object p1

    .line 1203
    .restart local p1
    :cond_d
    iget-object v0, p1, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 1204
    .local v0, callingApp:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    .local v4, splitItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/tts/TTSService$SpeechItem;>;"
    const/4 v6, 0x0

    .line 1206
    .local v6, start:I
    add-int/lit8 v1, v8, -0x1

    .line 1209
    .local v1, end:I
    :goto_17
    iget-object v7, p1, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v1, v7, :cond_44

    .line 1216
    iget-object v7, p1, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1217
    .local v5, splitText:Ljava/lang/String;
    new-instance v3, Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {v3, v0, v5, v10, v9}, Lcom/google/tts/TTSService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1218
    .local v3, splitItem:Lcom/google/tts/TTSService$SpeechItem;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    iget-object v7, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1220
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_38
    if-gez v2, :cond_58

    .line 1223
    iget-object v7, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tts/TTSService$SpeechItem;

    move-object p1, v7

    goto :goto_c

    .line 1210
    .end local v2           #i:I
    .end local v3           #splitItem:Lcom/google/tts/TTSService$SpeechItem;
    .end local v5           #splitText:Ljava/lang/String;
    :cond_44
    iget-object v7, p1, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1211
    .restart local v5       #splitText:Ljava/lang/String;
    new-instance v3, Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {v3, v0, v5, v10, v9}, Lcom/google/tts/TTSService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1212
    .restart local v3       #splitItem:Lcom/google/tts/TTSService$SpeechItem;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    move v6, v1

    .line 1214
    add-int/lit16 v7, v6, 0xfa0

    add-int/lit8 v1, v7, -0x1

    goto :goto_17

    .line 1221
    .restart local v2       #i:I
    :cond_58
    iget-object v8, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tts/TTSService$SpeechItem;

    invoke-virtual {v8, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1220
    add-int/lit8 v2, v2, -0x1

    goto :goto_38
.end method

.method private stop(Ljava/lang/String;)I
    .registers 11
    .parameter "callingApp"

    .prologue
    .line 702
    const/4 v3, -0x1

    .line 703
    .local v3, result:I
    const/4 v4, 0x0

    .line 706
    .local v4, speechQueueAvailable:Z
    :try_start_2
    iget-object v5, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 707
    if-eqz v4, :cond_7b

    .line 708
    const-string v5, "TtsService"

    const-string v6, "Stopping"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v5, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1d
    const/4 v5, -0x1

    if-gt v2, v5, :cond_5e

    .line 714
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    if-eqz v5, :cond_79

    .line 715
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_90
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2b} :catch_84

    move-result v5

    if-eqz v5, :cond_79

    .line 717
    :try_start_2e
    sget-object v5, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v5}, Lcom/google/tts/SynthProxyBeta;->stop()I
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_90
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_33} :catch_76
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_84

    move-result v3

    .line 722
    :goto_34
    :try_start_34
    iget-object v5, p0, Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v5, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_90
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_42} :catch_84

    if-eqz v5, :cond_49

    .line 725
    :try_start_44
    iget-object v5, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_90
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_49} :catch_92
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_49} :catch_84

    .line 730
    :cond_49
    :goto_49
    const/4 v5, 0x0

    :try_start_4a
    iput-boolean v5, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    .line 731
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    .line 735
    :goto_4f
    const-string v5, "TtsService"

    const-string v6, "Stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_90
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_56} :catch_84

    .line 746
    .end local v2           #i:I
    :goto_56
    if-eqz v4, :cond_5d

    .line 747
    iget-object v5, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 749
    :cond_5d
    return v3

    .line 710
    .restart local v2       #i:I
    :cond_5e
    :try_start_5e
    iget-object v5, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tts/TTSService$SpeechItem;

    iget-object v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 711
    iget-object v5, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 709
    :cond_73
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 718
    :catch_76
    move-exception v1

    .line 720
    .local v1, e1:Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    goto :goto_34

    .line 733
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_79
    const/4 v3, 0x0

    goto :goto_4f

    .line 737
    .end local v2           #i:I
    :cond_7b
    const-string v5, "TtsService"

    const-string v6, "TTS stop(): queue locked longer than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_5e .. :try_end_82} :catchall_90
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_82} :catch_84

    .line 738
    const/4 v3, -0x1

    goto :goto_56

    .line 740
    :catch_84
    move-exception v0

    .line 741
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_85
    const-string v5, "TtsService"

    const-string v6, "TTS stop: tryLock interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_90

    goto :goto_56

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_90
    move-exception v5

    goto :goto_56

    .line 726
    .restart local v2       #i:I
    :catch_92
    move-exception v5

    goto :goto_49
.end method

.method private stopAll(Ljava/lang/String;)I
    .registers 12
    .parameter "callingApp"

    .prologue
    const/4 v9, 0x3

    .line 819
    const/4 v3, -0x1

    .line 820
    .local v3, result:I
    const/4 v4, 0x0

    .line 823
    .local v4, speechQueueAvailable:Z
    :try_start_3
    iget-object v5, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 824
    if-eqz v4, :cond_77

    .line 825
    iget-object v5, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_17
    const/4 v5, -0x1

    if-gt v2, v5, :cond_5e

    .line 830
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    if-eqz v5, :cond_75

    .line 831
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    if-ne v5, v9, :cond_2e

    .line 832
    iget-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_8c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_2b} :catch_80

    move-result v5

    if-eqz v5, :cond_75

    .line 834
    :cond_2e
    :try_start_2e
    sget-object v5, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v5}, Lcom/google/tts/SynthProxyBeta;->stop()I
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_8c
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_33} :catch_72
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_80

    move-result v3

    .line 839
    :goto_34
    :try_start_34
    iget-object v5, p0, Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v5, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_8c
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_42} :catch_80

    if-eqz v5, :cond_49

    .line 842
    :try_start_44
    iget-object v5, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_49} :catch_8e
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_49} :catch_80

    .line 847
    :cond_49
    :goto_49
    const/4 v5, 0x0

    :try_start_4a
    iput-boolean v5, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    .line 848
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    .line 852
    :goto_4f
    const-string v5, "TtsService"

    const-string v6, "Stopped all"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_8c
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_56} :catch_80

    .line 863
    .end local v2           #i:I
    :goto_56
    if-eqz v4, :cond_5d

    .line 864
    iget-object v5, p0, Lcom/google/tts/TTSService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 866
    :cond_5d
    return v3

    .line 826
    .restart local v2       #i:I
    :cond_5e
    :try_start_5e
    iget-object v5, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tts/TTSService$SpeechItem;

    iget v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    if-eq v5, v9, :cond_6f

    .line 827
    iget-object v5, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 825
    :cond_6f
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 835
    :catch_72
    move-exception v1

    .line 837
    .local v1, e1:Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    goto :goto_34

    .line 850
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_75
    const/4 v3, 0x0

    goto :goto_4f

    .line 854
    .end local v2           #i:I
    :cond_77
    const-string v5, "TtsService"

    const-string v6, "TTS stopAll(): queue locked longer than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_8c
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_7e} :catch_80

    .line 855
    const/4 v3, -0x1

    goto :goto_56

    .line 857
    :catch_80
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_81
    const-string v5, "TtsService"

    const-string v6, "TTS stopAll: tryLock interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_8c

    goto :goto_56

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_8c
    move-exception v5

    goto :goto_56

    .line 843
    .restart local v2       #i:I
    :catch_8e
    move-exception v5

    goto :goto_49
.end method

.method private synthToFileInternalOnly(Lcom/google/tts/TTSService$SpeechItem;)V
    .registers 4
    .parameter "speechItem"

    .prologue
    .line 1139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/tts/TTSService$2SynthThread;

    invoke-direct {v1, p0, p1}, Lcom/google/tts/TTSService$2SynthThread;-><init>(Lcom/google/tts/TTSService;Lcom/google/tts/TTSService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1140
    .local v0, synth:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1142
    return-void
.end method

.method private synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 14
    .parameter "callingApp"
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1362
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa

    if-le v1, v2, :cond_a

    .line 1390
    :cond_9
    :goto_9
    return v0

    .line 1367
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-ge v1, v2, :cond_9

    .line 1372
    :try_start_12
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v7, tempFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1374
    const-string v1, "TtsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists, deleting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1377
    :cond_3a
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_75

    .line 1378
    const-string v1, "TtsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to synthesize to file: can\'t create "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_54} :catch_55

    goto :goto_9

    .line 1382
    .end local v7           #tempFile:Ljava/io/File;
    :catch_55
    move-exception v6

    .line 1383
    .local v6, e:Ljava/io/IOException;
    const-string v1, "TtsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t create "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1381
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #tempFile:Ljava/io/File;
    :cond_75
    :try_start_75
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_55

    .line 1386
    iget-object v8, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/tts/TTSService$SpeechItem;

    const/4 v4, 0x3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/tts/TTSService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    iget-boolean v0, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    if-nez v0, :cond_8e

    .line 1388
    invoke-direct {p0}, Lcom/google/tts/TTSService;->processSpeechQueue()V

    .line 1390
    :cond_8e
    const/4 v0, 0x1

    goto/16 :goto_9
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 1395
    const-string v1, "android.intent.action.USE_TTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1396
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1402
    :cond_1a
    const-string v1, "com.google.intent.action.START_TTS_SERVICE_BETA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1403
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_47

    .line 1409
    :cond_34
    const/4 v1, 0x0

    :goto_35
    return-object v1

    .line 1396
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1397
    .local v0, category:Ljava/lang/String;
    const-string v2, "android.intent.category.TTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1398
    iget-object v1, p0, Lcom/google/tts/TTSService;->mBinderOld:Lcom/google/tts/ITTS$Stub;

    goto :goto_35

    .line 1403
    .end local v0           #category:Ljava/lang/String;
    :cond_47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1404
    .restart local v0       #category:Ljava/lang/String;
    const-string v2, "com.google.intent.category.TTS_BETA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1405
    iget-object v1, p0, Lcom/google/tts/TTSService;->mBinder:Lcom/google/tts/ITtsBeta$Stub;

    goto :goto_35
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 9
    .parameter "arg0"

    .prologue
    .line 873
    iget-object v1, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    .line 874
    .local v1, currentSpeechItemCopy:Lcom/google/tts/TTSService$SpeechItem;
    if-eqz v1, :cond_1e

    .line 875
    iget-object v0, v1, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 876
    .local v0, callingApp:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 877
    .local v4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, ""

    .line 878
    .local v5, utteranceId:Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 879
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v2, v6, :cond_22

    .line 886
    .end local v2           #i:I
    :cond_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1e

    .line 887
    invoke-direct {p0, v5, v0}, Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .end local v0           #callingApp:Ljava/lang/String;
    .end local v4           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #utteranceId:Ljava/lang/String;
    :cond_1e
    invoke-direct {p0}, Lcom/google/tts/TTSService;->processSpeechQueue()V

    .line 891
    return-void

    .line 880
    .restart local v0       #callingApp:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #utteranceId:Ljava/lang/String;
    :cond_22
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 881
    .local v3, param:Ljava/lang/String;
    const-string v6, "utteranceId"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 882
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #utteranceId:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 879
    .restart local v5       #utteranceId:Ljava/lang/String;
    :cond_38
    add-int/lit8 v2, v2, 0x2

    goto :goto_d
.end method

.method public onCreate()V
    .registers 15

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 253
    const-string v9, "TtsService"

    const-string v10, "TtsService.onCreate()"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v9, ""

    iput-object v9, p0, Lcom/google/tts/TTSService;->currentSpeechEngineSOFile:Ljava/lang/String;

    .line 262
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 263
    const-string v10, "tts_default_synth"

    const-string v11, "com.svox.pico"

    .line 262
    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, preferredEngine:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3f

    .line 265
    const-string v9, "TtsService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to start up with "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 266
    const-string v11, ". Falling back to the default TTS engine."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 265
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v9, "com.svox.pico"

    invoke-direct {p0, v9}, Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I

    .line 270
    :cond_3f
    iput-object p0, p0, Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;

    .line 271
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/tts/TTSService;->mIsSpeaking:Z

    .line 272
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/tts/TTSService;->mSynthBusy:Z

    .line 274
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/google/tts/TTSService;->mEarcons:Ljava/util/HashMap;

    .line 275
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/google/tts/TTSService;->mUtterances:Ljava/util/HashMap;

    .line 276
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/google/tts/TTSService;->mCallbacksMap:Ljava/util/HashMap;

    .line 278
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;

    .line 279
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/tts/TTSService;->mPlayer:Landroid/media/MediaPlayer;

    .line 280
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/tts/TTSService;->mCurrentSpeechItem:Lcom/google/tts/TTSService$SpeechItem;

    .line 281
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;

    .line 283
    invoke-direct {p0}, Lcom/google/tts/TTSService;->setDefaultSettings()V

    .line 288
    invoke-virtual {p0}, Lcom/google/tts/TTSService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 289
    .local v4, res:Landroid/content/res/Resources;
    const v9, 0x7f0500aa

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 292
    .local v1, fis:Ljava/io/InputStream;
    :try_start_7e
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 293
    .local v5, soundsamples:Ljava/util/Properties;
    invoke-virtual {v5, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 294
    invoke-virtual {v5}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 295
    .local v7, textKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_8a
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_8d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_7e .. :try_end_8d} :catch_114
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_8d} :catch_11a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_8d} :catch_120
    .catch Ljava/lang/SecurityException; {:try_start_7e .. :try_end_8d} :catch_126

    move-result v9

    if-nez v9, :cond_dc

    .line 315
    .end local v5           #soundsamples:Ljava/util/Properties;
    .end local v7           #textKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_90
    iget-object v9, p0, Lcom/google/tts/TTSService;->mUtterances:Ljava/util/HashMap;

    const-string v10, "[tock]"

    new-instance v11, Lcom/google/tts/TTSService$SoundResource;

    const-string v12, "android.tts"

    const v13, 0x7f0500b2

    invoke-direct {v11, v12, v13}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v9, p0, Lcom/google/tts/TTSService;->mUtterances:Ljava/util/HashMap;

    const-string v10, "[slnc]"

    new-instance v11, Lcom/google/tts/TTSService$SoundResource;

    const-string v12, "android.tts"

    const v13, 0x7f0500a9

    invoke-direct {v11, v12, v13}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v9, p0, Lcom/google/tts/TTSService;->mEarcons:Ljava/util/HashMap;

    const-string v10, "[tock]"

    new-instance v11, Lcom/google/tts/TTSService$SoundResource;

    const-string v12, "android.tts"

    const v13, 0x7f0500b2

    invoke-direct {v11, v12, v13}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v9, p0, Lcom/google/tts/TTSService;->mEarcons:Ljava/util/HashMap;

    const-string v10, "[slnc]"

    new-instance v11, Lcom/google/tts/TTSService$SoundResource;

    const-string v12, "android.tts"

    const v13, 0x7f0500a9

    invoke-direct {v11, v12, v13}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v9, "TtsService"

    const-string v10, "onCreate completed."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 296
    .restart local v5       #soundsamples:Ljava/util/Properties;
    .restart local v7       #textKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_dc
    :try_start_dc
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, text:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "com.google.tts:raw/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, name:Ljava/lang/String;
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 299
    .local v8, value:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/google/tts/TTSService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v8, v10}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 300
    iget-object v9, p0, Lcom/google/tts/TTSService;->mUtterances:Ljava/util/HashMap;

    new-instance v10, Lcom/google/tts/TTSService$SoundResource;

    const-string v11, "android.tts"

    iget v12, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v10, v11, v12}, Lcom/google/tts/TTSService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_dc .. :try_end_112} :catch_114
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_112} :catch_11a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_112} :catch_120
    .catch Ljava/lang/SecurityException; {:try_start_dc .. :try_end_112} :catch_126

    goto/16 :goto_8a

    .line 303
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #soundsamples:Ljava/util/Properties;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #textKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v8           #value:Landroid/util/TypedValue;
    :catch_114
    move-exception v0

    .line 304
    .local v0, e:Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->printStackTrace()V

    goto/16 :goto_90

    .line 305
    .end local v0           #e:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_11a
    move-exception v0

    .line 306
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_90

    .line 307
    .end local v0           #e:Ljava/io/IOException;
    :catch_120
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_90

    .line 309
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_126
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_90
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 328
    invoke-direct {p0}, Lcom/google/tts/TTSService;->killAllUtterances()I

    .line 331
    invoke-direct {p0}, Lcom/google/tts/TTSService;->cleanUpPlayer()V

    .line 333
    sget-object v0, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    if-eqz v0, :cond_12

    .line 334
    sget-object v0, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    invoke-virtual {v0}, Lcom/google/tts/SynthProxyBeta;->shutdown()V

    .line 336
    :cond_12
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tts/TTSService;->sNativeSynth:Lcom/google/tts/SynthProxyBeta;

    .line 339
    iget-object v0, p0, Lcom/google/tts/TTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 340
    iget-object v0, p0, Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 342
    const-string v0, "TtsService"

    const-string v1, "onDestroy() completed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method
