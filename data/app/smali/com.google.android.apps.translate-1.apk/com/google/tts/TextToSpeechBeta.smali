.class public Lcom/google/tts/TextToSpeechBeta;
.super Landroid/speech/tts/TextToSpeech;
.source "TextToSpeechBeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/TextToSpeechBeta$Engine;,
        Lcom/google/tts/TextToSpeechBeta$OnInitListener;,
        Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final NOT_ON_PLATFORM_TTS:Ljava/lang/String; = "TextToSpeechBeta not installed - basic platform TextToSpeech does not support "

.field private static Platform_areDefaultsEnforced:Ljava/lang/reflect/Method; = null

.field private static Platform_getDefaultEngine:Ljava/lang/reflect/Method; = null

.field private static Platform_setEngineByPackageName:Ljava/lang/reflect/Method; = null

.field public static final QUEUE_ADD:I = 0x1

.field public static final QUEUE_FLUSH:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final USING_PLATFORM_TTS:Ljava/lang/String; = "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for "

.field private static mInitListener:Lcom/google/tts/TextToSpeechBeta$OnInitListener;

.field static platformOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field static ttsBetaInstalled:Z


# instance fields
.field private mCachedParams:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITts:Lcom/google/tts/ITtsBeta;

.field private mITtscallback:Lcom/google/tts/ITtsCallbackBeta;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStartLock:Ljava/lang/Object;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    invoke-static {}, Lcom/google/tts/TextToSpeechBeta;->initCompatibility()V

    .line 486
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tts/TextToSpeechBeta;->mInitListener:Lcom/google/tts/TextToSpeechBeta$OnInitListener;

    .line 498
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    .line 500
    new-instance v0, Lcom/google/tts/TextToSpeechBeta$1;

    invoke-direct {v0}, Lcom/google/tts/TextToSpeechBeta$1;-><init>()V

    sput-object v0, Lcom/google/tts/TextToSpeechBeta;->platformOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tts/TextToSpeechBeta$OnInitListener;)V
    .registers 8
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 519
    sget-object v1, Lcom/google/tts/TextToSpeechBeta;->platformOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 478
    iput-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    .line 480
    iput-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITtscallback:Lcom/google/tts/ITtsCallbackBeta;

    .line 482
    iput-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mContext:Landroid/content/Context;

    .line 484
    const-string v1, ""

    iput-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    .line 488
    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 490
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    .line 520
    invoke-static {p1}, Lcom/google/tts/TextToSpeechBeta;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    .line 521
    sput-object p2, Lcom/google/tts/TextToSpeechBeta;->mInitListener:Lcom/google/tts/TextToSpeechBeta$OnInitListener;

    .line 522
    sget-boolean v1, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-eqz v1, :cond_b3

    .line 523
    invoke-super {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 524
    iput-object p1, p0, Lcom/google/tts/TextToSpeechBeta;->mContext:Landroid/content/Context;

    .line 525
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    .line 527
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const-string v2, "rate"

    aput-object v2, v1, v3

    .line 531
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "language"

    aput-object v3, v1, v2

    .line 532
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "country"

    aput-object v3, v1, v2

    .line 533
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "variant"

    aput-object v3, v1, v2

    .line 534
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "streamType"

    aput-object v3, v1, v2

    .line 535
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "utteranceId"

    aput-object v3, v1, v2

    .line 536
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "engine"

    aput-object v3, v1, v2

    .line 538
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 540
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 541
    .local v0, defaultLoc:Ljava/util/Locale;
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 542
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 543
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 545
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 546
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0xb

    const-string v3, ""

    aput-object v3, v1, v2

    .line 548
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string v3, ""

    aput-object v3, v1, v2

    .line 550
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    .line 552
    .end local v0           #defaultLoc:Ljava/util/Locale;
    :cond_b3
    return-void
.end method

.method static synthetic access$0()Lcom/google/tts/TextToSpeechBeta$OnInitListener;
    .registers 1

    .prologue
    .line 486
    sget-object v0, Lcom/google/tts/TextToSpeechBeta;->mInitListener:Lcom/google/tts/TextToSpeechBeta$OnInitListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/tts/TextToSpeechBeta;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/tts/TextToSpeechBeta;Lcom/google/tts/ITtsBeta;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    return-void
.end method

.method static synthetic access$3(Lcom/google/tts/TextToSpeechBeta;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    return-void
.end method

.method static synthetic access$4(Lcom/google/tts/TextToSpeechBeta;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/google/tts/TextToSpeechBeta$OnInitListener;)V
    .registers 1
    .parameter

    .prologue
    .line 486
    sput-object p0, Lcom/google/tts/TextToSpeechBeta;->mInitListener:Lcom/google/tts/TextToSpeechBeta$OnInitListener;

    return-void
.end method

.method private static initCompatibility()V
    .registers 5

    .prologue
    .line 69
    :try_start_0
    const-class v0, Landroid/speech/tts/TextToSpeech;

    const-string v1, "areDefaultsEnforced"

    .line 70
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/tts/TextToSpeechBeta;->Platform_areDefaultsEnforced:Ljava/lang/reflect/Method;

    .line 71
    const-class v0, Landroid/speech/tts/TextToSpeech;

    const-string v1, "getDefaultEngine"

    .line 72
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/tts/TextToSpeechBeta;->Platform_getDefaultEngine:Ljava/lang/reflect/Method;

    .line 73
    const-class v0, Landroid/speech/tts/TextToSpeech;

    .line 74
    const-string v1, "setEngineByPackageName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 75
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/tts/TextToSpeechBeta;->Platform_setEngineByPackageName:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 81
    :goto_2c
    return-void

    .line 78
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method private initTts()V
    .registers 5

    .prologue
    .line 555
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 558
    new-instance v1, Lcom/google/tts/TextToSpeechBeta$2;

    invoke-direct {v1, p0}, Lcom/google/tts/TextToSpeechBeta$2;-><init>(Lcom/google/tts/TextToSpeechBeta;)V

    iput-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.intent.action.START_TTS_SERVICE_BETA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.intent.category.TTS_BETA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 593
    return-void
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .registers 6
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 1603
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1604
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.intent.action.START_TTS_SERVICE_BETA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.google.intent.category.TTS_BETA"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1607
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_18

    .line 1610
    :goto_17
    return v3

    :cond_18
    const/4 v3, 0x1

    goto :goto_17
.end method

.method private resetCachedParams()V
    .registers 4

    .prologue
    .line 1409
    sget-boolean v0, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v0, :cond_c

    .line 1410
    const-string v0, "TextToSpeechBeta"

    const-string v1, "TextToSpeechBeta not installed - basic platform TextToSpeech does not support resetCachedParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :goto_b
    return-void

    .line 1413
    :cond_c
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1414
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_b
.end method

.method private static usePlatform_areDefaultsEnforced(Landroid/speech/tts/TextToSpeech;)Z
    .registers 8
    .parameter "ttsObj"

    .prologue
    const/4 v3, 0x0

    .line 85
    :try_start_1
    sget-object v4, Lcom/google/tts/TextToSpeechBeta;->Platform_areDefaultsEnforced:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    .local v2, retobj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #retobj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_f} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_f} :catch_2c

    move-result v3

    .line 96
    :goto_10
    return v3

    .line 87
    :catch_11
    move-exception v1

    .line 88
    .local v1, ie:Ljava/lang/IllegalAccessException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unexpected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 89
    .end local v1           #ie:Ljava/lang/IllegalAccessException;
    :catch_27
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_10

    .line 92
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2c
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_10
.end method

.method private static usePlatform_getDefaultEngine(Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;
    .registers 7
    .parameter "ttsObj"

    .prologue
    .line 101
    :try_start_0
    sget-object v3, Lcom/google/tts/TextToSpeechBeta;->Platform_getDefaultEngine:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 102
    .local v2, retobj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_b} :catch_29

    .line 112
    .end local v2           #retobj:Ljava/lang/Object;
    :goto_b
    return-object v2

    .line 103
    :catch_c
    move-exception v1

    .line 104
    .local v1, ie:Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    .end local v1           #ie:Ljava/lang/IllegalAccessException;
    :goto_21
    const-string v2, "com.svox.pico"

    goto :goto_b

    .line 105
    :catch_24
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_21

    .line 108
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_29
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_21
.end method

.method private static usePlatform_setEngineByPackageName(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)I
    .registers 8
    .parameter "ttsObj"
    .parameter "enginePackageName"

    .prologue
    .line 117
    :try_start_0
    sget-object v3, Lcom/google/tts/TextToSpeechBeta;->Platform_setEngineByPackageName:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, retobj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #retobj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_2f

    move-result v3

    .line 128
    :goto_12
    return v3

    .line 119
    :catch_13
    move-exception v1

    .line 120
    .local v1, ie:Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    .end local v1           #ie:Ljava/lang/IllegalAccessException;
    :goto_28
    const/4 v3, -0x1

    goto :goto_12

    .line 121
    :catch_2a
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28

    .line 124
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2f
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_28
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "earcon"
    .parameter "filename"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 785
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_12

    .line 786
    const-string v1, "TextToSpeechBeta"

    const-string v2, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for addEarcon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-super {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 815
    :goto_11
    return v1

    .line 789
    :cond_12
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 790
    :try_start_15
    iget-boolean v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v4, :cond_1e

    .line 791
    monitor-exit v3

    goto :goto_11

    .line 789
    :catchall_1b
    move-exception v1

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1

    .line 794
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p1, p2}, Lcom/google/tts/ITtsBeta;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_25} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_25} :catch_4d

    .line 795
    :try_start_25
    monitor-exit v3

    move v1, v2

    goto :goto_11

    .line 796
    :catch_28
    move-exception v0

    .line 798
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 800
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 801
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    .line 815
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_39
    monitor-exit v3

    goto :goto_11

    .line 802
    :catch_3b
    move-exception v0

    .line 804
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 806
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 807
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_39

    .line 808
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 812
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 813
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_1b

    goto :goto_39
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 739
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_12

    .line 740
    const-string v1, "TextToSpeechBeta"

    const-string v2, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for addEarcon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-super {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 769
    :goto_11
    return v1

    .line 743
    :cond_12
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 744
    :try_start_15
    iget-boolean v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v4, :cond_1e

    .line 745
    monitor-exit v3

    goto :goto_11

    .line 743
    :catchall_1b
    move-exception v1

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1

    .line 748
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p1, p2, p3}, Lcom/google/tts/ITtsBeta;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_25} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_25} :catch_4d

    .line 749
    :try_start_25
    monitor-exit v3

    move v1, v2

    goto :goto_11

    .line 750
    :catch_28
    move-exception v0

    .line 752
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 754
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 755
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    .line 769
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_39
    monitor-exit v3

    goto :goto_11

    .line 756
    :catch_3b
    move-exception v0

    .line 758
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 760
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 761
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_39

    .line 762
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v0

    .line 764
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 766
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 767
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_1b

    goto :goto_39
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 685
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_12

    .line 686
    const-string v1, "TextToSpeechBeta"

    const-string v2, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for addSpeech"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-super {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 715
    :goto_11
    return v1

    .line 689
    :cond_12
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 690
    :try_start_15
    iget-boolean v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v4, :cond_1e

    .line 691
    monitor-exit v3

    goto :goto_11

    .line 689
    :catchall_1b
    move-exception v1

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1

    .line 694
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p1, p2}, Lcom/google/tts/ITtsBeta;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_25} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_25} :catch_4d

    .line 695
    :try_start_25
    monitor-exit v3

    move v1, v2

    goto :goto_11

    .line 696
    :catch_28
    move-exception v0

    .line 698
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 700
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 701
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    .line 715
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_39
    monitor-exit v3

    goto :goto_11

    .line 702
    :catch_3b
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 706
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 707
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_39

    .line 708
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v0

    .line 710
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 712
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 713
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_1b

    goto :goto_39
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 637
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_12

    .line 638
    const-string v1, "TextToSpeechBeta"

    const-string v2, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for addSpeech"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-super {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 667
    :goto_11
    return v1

    .line 641
    :cond_12
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 642
    :try_start_15
    iget-boolean v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v4, :cond_1e

    .line 643
    monitor-exit v3

    goto :goto_11

    .line 641
    :catchall_1b
    move-exception v1

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1

    .line 646
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p1, p2, p3}, Lcom/google/tts/ITtsBeta;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_25} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_25} :catch_4d

    .line 647
    :try_start_25
    monitor-exit v3

    move v1, v2

    goto :goto_11

    .line 648
    :catch_28
    move-exception v0

    .line 650
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 652
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 653
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    .line 667
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_39
    monitor-exit v3

    goto :goto_11

    .line 654
    :catch_3b
    move-exception v0

    .line 656
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 658
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 659
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_39

    .line 660
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v0

    .line 662
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 664
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 665
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_1b

    goto :goto_39
.end method

.method public areDefaultsEnforcedExtended()Z
    .registers 6

    .prologue
    .line 1561
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_10

    .line 1562
    const-string v2, "TextToSpeechBeta"

    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for setOnUtteranceCompletedListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-static {p0}, Lcom/google/tts/TextToSpeechBeta;->usePlatform_areDefaultsEnforced(Landroid/speech/tts/TextToSpeech;)Z

    move-result v0

    .line 1592
    :goto_f
    return v0

    .line 1566
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1567
    const/4 v0, 0x0

    .line 1568
    .local v0, defaultsEnforced:Z
    :try_start_14
    iget-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v2, :cond_1d

    .line 1569
    monitor-exit v3

    goto :goto_f

    .line 1566
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v2

    .line 1572
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    invoke-interface {v2}, Lcom/google/tts/ITtsBeta;->areDefaultsEnforced()Z
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_22} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_22} :catch_4b

    move-result v0

    .line 1592
    :goto_23
    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1a

    goto :goto_f

    .line 1573
    :catch_25
    move-exception v1

    .line 1575
    .local v1, e:Landroid/os/RemoteException;
    :try_start_26
    const-string v2, "TextToSpeech.java - areDefaultsEnforced"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1577
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1578
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_23

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_37
    move-exception v2

    goto :goto_23

    .line 1579
    :catch_39
    move-exception v1

    .line 1581
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - areDefaultsEnforced"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1583
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1584
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_23

    .line 1585
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_4b
    move-exception v1

    .line 1587
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - areDefaultsEnforced"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1589
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1590
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5c
    .catchall {:try_start_26 .. :try_end_5c} :catchall_37

    goto :goto_23
.end method

.method public getDefaultEngineExtended()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1519
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_10

    .line 1520
    const-string v2, "TextToSpeechBeta"

    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for getDefaultEngine"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-static {p0}, Lcom/google/tts/TextToSpeechBeta;->usePlatform_getDefaultEngine(Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;

    move-result-object v1

    .line 1549
    :goto_f
    return-object v1

    .line 1523
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1524
    :try_start_13
    const-string v1, ""

    .line 1525
    .local v1, engineName:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v2, :cond_1e

    .line 1526
    monitor-exit v3

    goto :goto_f

    .line 1523
    .end local v1           #engineName:Ljava/lang/String;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v2

    .line 1529
    .restart local v1       #engineName:Ljava/lang/String;
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    invoke-interface {v2}, Lcom/google/tts/ITtsBeta;->getDefaultEngine()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_23} :catch_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_23} :catch_4c

    move-result-object v1

    .line 1549
    :goto_24
    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1b

    goto :goto_f

    .line 1530
    :catch_26
    move-exception v0

    .line 1532
    .local v0, e:Landroid/os/RemoteException;
    :try_start_27
    const-string v2, "TextToSpeech.java - setEngineByPackageName"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1534
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1535
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_24

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_38
    move-exception v2

    goto :goto_24

    .line 1536
    :catch_3a
    move-exception v0

    .line 1538
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - setEngineByPackageName"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1540
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1541
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_24

    .line 1542
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4c
    move-exception v0

    .line 1544
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - setEngineByPackageName"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1546
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1547
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5d
    .catchall {:try_start_27 .. :try_end_5d} :catchall_38

    goto :goto_24
.end method

.method public getLanguage()Ljava/util/Locale;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1256
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_11

    .line 1257
    const-string v2, "TextToSpeechBeta"

    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for getLanguage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-super {p0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v2

    .line 1290
    :goto_10
    return-object v2

    .line 1260
    :cond_11
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1261
    :try_start_14
    iget-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v3, :cond_1d

    .line 1262
    monitor-exit v4

    goto :goto_10

    .line 1260
    :catchall_1a
    move-exception v2

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v2

    .line 1265
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    invoke-interface {v3}, Lcom/google/tts/ITtsBeta;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, locStrings:[Ljava/lang/String;
    if-eqz v1, :cond_3a

    array-length v3, v1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3a

    .line 1267
    new-instance v3, Ljava/util/Locale;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-direct {v3, v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_1a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_37} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_37} :catch_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_37} :catch_61

    :try_start_37
    monitor-exit v4

    move-object v2, v3

    goto :goto_10

    .line 1269
    :cond_3a
    monitor-exit v4

    goto :goto_10

    .line 1271
    .end local v1           #locStrings:[Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 1273
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v5, "RemoteException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1275
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1276
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    .line 1290
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_4d
    monitor-exit v4

    goto :goto_10

    .line 1277
    :catch_4f
    move-exception v0

    .line 1279
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v5, "NullPointerException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1281
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1282
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_4d

    .line 1283
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_61
    move-exception v0

    .line 1285
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v5, "IllegalStateException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1287
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1288
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_72
    .catchall {:try_start_37 .. :try_end_72} :catchall_1a

    goto :goto_4d
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .registers 10
    .parameter "loc"

    .prologue
    .line 1305
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_10

    .line 1306
    const-string v2, "TextToSpeechBeta"

    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for isLanguageAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-super {p0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    .line 1336
    :goto_f
    return v1

    .line 1309
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1310
    const/4 v1, -0x2

    .line 1311
    .local v1, result:I
    :try_start_14
    iget-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v2, :cond_1d

    .line 1312
    monitor-exit v3

    goto :goto_f

    .line 1309
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v2

    .line 1315
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    .line 1316
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    .line 1315
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/tts/ITtsBeta;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_45
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_30} :catch_47
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_30} :catch_59

    move-result v1

    .line 1336
    :goto_31
    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1a

    goto :goto_f

    .line 1317
    :catch_33
    move-exception v0

    .line 1319
    .local v0, e:Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "TextToSpeech.java - isLanguageAvailable"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1321
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1322
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_31

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_45
    move-exception v2

    goto :goto_31

    .line 1323
    :catch_47
    move-exception v0

    .line 1325
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - isLanguageAvailable"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1327
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1328
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_31

    .line 1329
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_59
    move-exception v0

    .line 1331
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - isLanguageAvailable"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1333
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1334
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_6a
    .catchall {:try_start_34 .. :try_end_6a} :catchall_45

    goto :goto_31
.end method

.method public isSpeaking()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1006
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_11

    .line 1007
    const-string v1, "TextToSpeechBeta"

    const-string v2, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for isSpeaking"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-super {p0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    .line 1035
    :goto_10
    return v1

    .line 1010
    :cond_11
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1011
    :try_start_14
    iget-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v3, :cond_1d

    .line 1012
    monitor-exit v2

    goto :goto_10

    .line 1010
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v1

    .line 1015
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    invoke-interface {v3}, Lcom/google/tts/ITtsBeta;->isSpeaking()Z
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_1a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_22} :catch_38
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_22} :catch_4a

    move-result v1

    :try_start_23
    monitor-exit v2

    goto :goto_10

    .line 1016
    :catch_25
    move-exception v0

    .line 1018
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - isSpeaking"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1020
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1021
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    .line 1035
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_36
    monitor-exit v2

    goto :goto_10

    .line 1022
    :catch_38
    move-exception v0

    .line 1024
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - isSpeaking"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1026
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1027
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_36

    .line 1028
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4a
    move-exception v0

    .line 1030
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "TextToSpeech.java - isSpeaking"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1032
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1033
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5b
    .catchall {:try_start_23 .. :try_end_5b} :catchall_1a

    goto :goto_36
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 11
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 898
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_10

    .line 899
    const-string v3, "TextToSpeechBeta"

    const-string v4, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for playEarcon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-super {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v2

    .line 939
    :goto_f
    return v2

    .line 902
    :cond_10
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 903
    const/4 v2, -0x1

    .line 904
    .local v2, result:I
    :try_start_14
    iget-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v3, :cond_1d

    .line 905
    monitor-exit v4

    goto :goto_f

    .line 902
    :catchall_1a
    move-exception v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v3

    .line 908
    :cond_1d
    if-eqz p3, :cond_45

    :try_start_1f
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    .line 909
    const-string v3, "streamType"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 910
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 911
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0x9

    aput-object v1, v3, v5

    .line 913
    :cond_35
    const-string v3, "utteranceId"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 914
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_45

    .line 915
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xb

    aput-object v1, v3, v5

    .line 918
    .end local v1           #extra:Ljava/lang/String;
    :cond_45
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, p1, p2, v6}, Lcom/google/tts/ITtsBeta;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1f .. :try_end_4d} :catchall_65
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4d} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_4d} :catch_67
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_4d} :catch_79

    move-result v2

    .line 938
    :goto_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->resetCachedParams()V

    .line 939
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_1a

    goto :goto_f

    .line 919
    :catch_53
    move-exception v0

    .line 921
    .local v0, e:Landroid/os/RemoteException;
    :try_start_54
    const-string v3, "TextToSpeech.java - playEarcon"

    const-string v5, "RemoteException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 923
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 924
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_4e

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_65
    move-exception v3

    goto :goto_4e

    .line 925
    :catch_67
    move-exception v0

    .line 927
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - playEarcon"

    const-string v5, "NullPointerException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 929
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 930
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_4e

    .line 931
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_79
    move-exception v0

    .line 933
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "TextToSpeech.java - playEarcon"

    const-string v5, "IllegalStateException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 935
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 936
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_8a
    .catchall {:try_start_54 .. :try_end_8a} :catchall_65

    goto :goto_4e
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .registers 15
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 959
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v0, :cond_10

    .line 960
    const-string v0, "TextToSpeechBeta"

    const-string v1, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for playSilence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-super {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v8

    .line 995
    :goto_f
    return v8

    .line 963
    :cond_10
    iget-object v9, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v9

    .line 964
    const/4 v8, -0x1

    .line 965
    .local v8, result:I
    :try_start_14
    iget-boolean v0, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v0, :cond_1d

    .line 966
    monitor-exit v9

    goto :goto_f

    .line 963
    :catchall_1a
    move-exception v0

    monitor-exit v9
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v0

    .line 969
    :cond_1d
    if-eqz p4, :cond_35

    :try_start_1f
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 970
    const-string v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 971
    .local v7, extra:Ljava/lang/String;
    if-eqz v7, :cond_35

    .line 972
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v7, v0, v1

    .line 975
    .end local v7           #extra:Ljava/lang/String;
    :cond_35
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/tts/ITtsBeta;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_55
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_40} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_40} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_40} :catch_69

    move-result v8

    .line 995
    :goto_41
    :try_start_41
    monitor-exit v9
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_1a

    goto :goto_f

    .line 976
    :catch_43
    move-exception v6

    .line 978
    .local v6, e:Landroid/os/RemoteException;
    :try_start_44
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 981
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_41

    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_55
    move-exception v0

    goto :goto_41

    .line 982
    :catch_57
    move-exception v6

    .line 984
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 987
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_41

    .line 988
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_69
    move-exception v6

    .line 990
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 993
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_7a
    .catchall {:try_start_44 .. :try_end_7a} :catchall_55

    goto :goto_41
.end method

.method public setEngineByPackageNameExtended(Ljava/lang/String;)I
    .registers 7
    .parameter "enginePackageName"

    .prologue
    .line 1474
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_10

    .line 1475
    const-string v2, "TextToSpeechBeta"

    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for setEngineByPackageName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-static {p0, p1}, Lcom/google/tts/TextToSpeechBeta;->usePlatform_setEngineByPackageName(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)I

    move-result v1

    .line 1507
    :goto_f
    return v1

    .line 1478
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1479
    const/4 v1, -0x1

    .line 1480
    .local v1, result:I
    :try_start_14
    iget-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v2, :cond_1d

    .line 1481
    monitor-exit v3

    goto :goto_f

    .line 1478
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v2

    .line 1484
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    invoke-interface {v2, p1}, Lcom/google/tts/ITtsBeta;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v1

    .line 1485
    if-nez v1, :cond_2b

    .line 1486
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v4, 0xd

    aput-object p1, v2, v4
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_3f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2b} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_2b} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_2b} :catch_53

    .line 1507
    :cond_2b
    :goto_2b
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1a

    goto :goto_f

    .line 1488
    :catch_2d
    move-exception v0

    .line 1490
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2e
    const-string v2, "TextToSpeech.java - setEngineByPackageName"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1492
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1493
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_2b

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_3f
    move-exception v2

    goto :goto_2b

    .line 1494
    :catch_41
    move-exception v0

    .line 1496
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - setEngineByPackageName"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1498
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1499
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_2b

    .line 1500
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_53
    move-exception v0

    .line 1502
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - setEngineByPackageName"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1504
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1505
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_64
    .catchall {:try_start_2e .. :try_end_64} :catchall_3f

    goto :goto_2b
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .registers 10
    .parameter "loc"

    .prologue
    .line 1200
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_10

    .line 1201
    const-string v2, "TextToSpeechBeta"

    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for setLanguage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-super {p0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    .line 1242
    :goto_f
    return v1

    .line 1204
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1205
    const/4 v1, -0x2

    .line 1206
    .local v1, result:I
    :try_start_14
    iget-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v2, :cond_1d

    .line 1207
    monitor-exit v3

    goto :goto_f

    .line 1204
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v2

    .line 1210
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1211
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1212
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1219
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    .line 1220
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    .line 1221
    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    .line 1222
    iget-object v6, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    .line 1219
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/tts/ITtsBeta;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_1d .. :try_end_4e} :catchall_63
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_4e} :catch_51
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_4e} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_4e} :catch_77

    move-result v1

    .line 1242
    :goto_4f
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_1a

    goto :goto_f

    .line 1223
    :catch_51
    move-exception v0

    .line 1225
    .local v0, e:Landroid/os/RemoteException;
    :try_start_52
    const-string v2, "TextToSpeech.java - setLanguage"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1228
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_4f

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_63
    move-exception v2

    goto :goto_4f

    .line 1229
    :catch_65
    move-exception v0

    .line 1231
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - setLanguage"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1233
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1234
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_4f

    .line 1235
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_77
    move-exception v0

    .line 1237
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - setLanguage"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1239
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1240
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_88
    .catchall {:try_start_52 .. :try_end_88} :catchall_63

    goto :goto_4f
.end method

.method public setOnUtteranceCompletedListener(Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;)I
    .registers 9
    .parameter "listener"

    .prologue
    .line 1426
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_15

    .line 1427
    const-string v3, "TextToSpeechBeta"

    const-string v4, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for setOnUtteranceCompletedListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    new-instance v1, Lcom/google/tts/TextToSpeechBeta$3;

    invoke-direct {v1, p0, p1}, Lcom/google/tts/TextToSpeechBeta$3;-><init>(Lcom/google/tts/TextToSpeechBeta;Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;)V

    .line 1433
    .local v1, platformUtteranceCompletedListener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    invoke-super {p0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v2

    .line 1468
    .end local v1           #platformUtteranceCompletedListener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    :goto_14
    return v2

    .line 1435
    :cond_15
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1436
    const/4 v2, -0x1

    .line 1437
    .local v2, result:I
    :try_start_19
    iget-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v3, :cond_22

    .line 1438
    monitor-exit v4

    goto :goto_14

    .line 1435
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_1f

    throw v3

    .line 1440
    :cond_22
    :try_start_22
    new-instance v3, Lcom/google/tts/TextToSpeechBeta$4;

    invoke-direct {v3, p0, p1}, Lcom/google/tts/TextToSpeechBeta$4;-><init>(Lcom/google/tts/TextToSpeechBeta;Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;)V

    iput-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mITtscallback:Lcom/google/tts/ITtsCallbackBeta;
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 1448
    :try_start_29
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/tts/TextToSpeechBeta;->mITtscallback:Lcom/google/tts/ITtsCallbackBeta;

    invoke-interface {v3, v5, v6}, Lcom/google/tts/ITtsBeta;->registerCallback(Ljava/lang/String;Lcom/google/tts/ITtsCallbackBeta;)I
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_32} :catch_49
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_32} :catch_5b

    move-result v2

    .line 1468
    :goto_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_1f

    goto :goto_14

    .line 1449
    :catch_35
    move-exception v0

    .line 1451
    .local v0, e:Landroid/os/RemoteException;
    :try_start_36
    const-string v3, "TextToSpeech.java - registerCallback"

    const-string v5, "RemoteException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1453
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1454
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_33

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_47
    move-exception v3

    goto :goto_33

    .line 1455
    :catch_49
    move-exception v0

    .line 1457
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - registerCallback"

    const-string v5, "NullPointerException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1459
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1460
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_33

    .line 1461
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_5b
    move-exception v0

    .line 1463
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "TextToSpeech.java - registerCallback"

    const-string v5, "IllegalStateException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1465
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1466
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_6c
    .catchall {:try_start_36 .. :try_end_6c} :catchall_47

    goto :goto_33
.end method

.method public setPitch(F)I
    .registers 8
    .parameter "pitch"

    .prologue
    .line 1147
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_10

    .line 1148
    const-string v2, "TextToSpeechBeta"

    .line 1149
    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech"

    .line 1148
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-super {p0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    move-result v1

    .line 1180
    :goto_f
    return v1

    .line 1152
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1153
    const/4 v1, -0x1

    .line 1154
    .local v1, result:I
    :try_start_14
    iget-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v2, :cond_1d

    .line 1155
    monitor-exit v3

    goto :goto_f

    .line 1152
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v2

    .line 1158
    :cond_1d
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2e

    .line 1159
    :try_start_22
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v5, v5

    invoke-interface {v2, v4, v5}, Lcom/google/tts/ITtsBeta;->setPitch(Ljava/lang/String;I)I
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2d} :catch_44
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_2d} :catch_56

    move-result v1

    .line 1180
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_1a

    goto :goto_f

    .line 1161
    :catch_30
    move-exception v0

    .line 1163
    .local v0, e:Landroid/os/RemoteException;
    :try_start_31
    const-string v2, "TextToSpeech.java - setPitch"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1165
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1166
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_2e

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_42
    move-exception v2

    goto :goto_2e

    .line 1167
    :catch_44
    move-exception v0

    .line 1169
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - setPitch"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1171
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1172
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_2e

    .line 1173
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_56
    move-exception v0

    .line 1175
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - setPitch"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1177
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1178
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_67
    .catchall {:try_start_31 .. :try_end_67} :catchall_42

    goto :goto_2e
.end method

.method public setSpeechRate(F)I
    .registers 10
    .parameter "speechRate"

    .prologue
    const/4 v7, 0x0

    .line 1094
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_11

    .line 1095
    const-string v3, "TextToSpeechBeta"

    .line 1096
    const-string v4, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech"

    .line 1095
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-super {p0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    move-result v2

    .line 1131
    :goto_10
    return v2

    .line 1099
    :cond_11
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1100
    const/4 v2, -0x1

    .line 1101
    .local v2, result:I
    :try_start_15
    iget-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v3, :cond_1e

    .line 1102
    monitor-exit v4

    goto :goto_10

    .line 1099
    :catchall_1b
    move-exception v3

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v3

    .line 1105
    :cond_1e
    cmpl-float v3, p1, v7

    if-lez v3, :cond_34

    .line 1106
    const/high16 v3, 0x42c8

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 1107
    .local v1, rate:I
    :try_start_26
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_4a
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_2f} :catch_38
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2f} :catch_4c

    .line 1112
    cmpl-float v3, p1, v7

    if-lez v3, :cond_36

    .line 1113
    const/4 v2, 0x0

    .line 1131
    .end local v1           #rate:I
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_1b

    goto :goto_10

    .line 1115
    .restart local v1       #rate:I
    :cond_36
    const/4 v2, -0x1

    goto :goto_34

    .line 1118
    :catch_38
    move-exception v0

    .line 1120
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_39
    const-string v3, "TextToSpeech.java - setSpeechRate"

    const-string v5, "NullPointerException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1122
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1123
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_34

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_4a
    move-exception v3

    goto :goto_34

    .line 1124
    :catch_4c
    move-exception v0

    .line 1126
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "TextToSpeech.java - setSpeechRate"

    const-string v5, "IllegalStateException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1128
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1129
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5d
    .catchall {:try_start_39 .. :try_end_5d} :catchall_4a

    goto :goto_34
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 601
    sget-boolean v0, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v0, :cond_f

    .line 602
    const-string v0, "TextToSpeechBeta"

    const-string v1, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-super {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 612
    :goto_e
    return-void

    .line 607
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/tts/TextToSpeechBeta;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_e

    .line 608
    :catch_17
    move-exception v0

    goto :goto_e
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 11
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 834
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_10

    .line 835
    const-string v3, "TextToSpeechBeta"

    const-string v4, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for speak"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-super {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v2

    .line 880
    :goto_f
    return v2

    .line 838
    :cond_10
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 839
    const/4 v2, -0x1

    .line 840
    .local v2, result:I
    :try_start_14
    const-string v3, "TTS received: "

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v3, :cond_22

    .line 842
    monitor-exit v4

    goto :goto_f

    .line 838
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v3

    .line 845
    :cond_22
    if-eqz p3, :cond_5a

    :try_start_24
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 846
    const-string v3, "streamType"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 847
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 848
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0x9

    aput-object v1, v3, v5

    .line 850
    :cond_3a
    const-string v3, "utteranceId"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 851
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_4a

    .line 852
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xb

    aput-object v1, v3, v5

    .line 854
    :cond_4a
    const-string v3, "engine"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 855
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_5a

    .line 856
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xd

    aput-object v1, v3, v5

    .line 859
    .end local v1           #extra:Ljava/lang/String;
    :cond_5a
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v3, v5, p1, p2, v6}, Lcom/google/tts/ITtsBeta;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_24 .. :try_end_63} :catchall_7b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_63} :catch_69
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_63} :catch_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_63} :catch_8f

    move-result v2

    .line 879
    :goto_64
    :try_start_64
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->resetCachedParams()V

    .line 880
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_1f

    goto :goto_f

    .line 860
    :catch_69
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    :try_start_6a
    const-string v3, "TextToSpeech.java - speak"

    const-string v5, "RemoteException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 864
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 865
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_64

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_7b
    move-exception v3

    goto :goto_64

    .line 866
    :catch_7d
    move-exception v0

    .line 868
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - speak"

    const-string v5, "NullPointerException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 870
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 871
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_64

    .line 872
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_8f
    move-exception v0

    .line 874
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "TextToSpeech.java - speak"

    const-string v5, "IllegalStateException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 876
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 877
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_a0
    .catchall {:try_start_6a .. :try_end_a0} :catchall_7b

    goto :goto_64
.end method

.method public stop()I
    .registers 6

    .prologue
    .line 1047
    sget-boolean v2, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v2, :cond_10

    .line 1048
    const-string v2, "TextToSpeechBeta"

    const-string v3, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-super {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v1

    .line 1077
    :goto_f
    return v1

    .line 1051
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1052
    const/4 v1, -0x1

    .line 1053
    .local v1, result:I
    :try_start_14
    iget-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v2, :cond_1d

    .line 1054
    monitor-exit v3

    goto :goto_f

    .line 1051
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v2

    .line 1057
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/google/tts/ITtsBeta;->stop(Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_39
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_24} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_24} :catch_4d

    move-result v1

    .line 1077
    :goto_25
    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1a

    goto :goto_f

    .line 1058
    :catch_27
    move-exception v0

    .line 1060
    .local v0, e:Landroid/os/RemoteException;
    :try_start_28
    const-string v2, "TextToSpeech.java - stop"

    const-string v4, "RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1062
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1063
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_25

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_39
    move-exception v2

    goto :goto_25

    .line 1064
    :catch_3b
    move-exception v0

    .line 1066
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - stop"

    const-string v4, "NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1068
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1069
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_25

    .line 1070
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v0

    .line 1072
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "TextToSpeech.java - stop"

    const-string v4, "IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1074
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1075
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_5e
    .catchall {:try_start_28 .. :try_end_5e} :catchall_39

    goto :goto_25
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 11
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1355
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v3, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v3, :cond_10

    .line 1356
    const-string v3, "TextToSpeechBeta"

    const-string v4, "TextToSpeechBeta not installed - defaulting to basic platform TextToSpeech for synthesizeToFile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-super {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    .line 1399
    :goto_f
    return v2

    .line 1359
    :cond_10
    iget-object v4, p0, Lcom/google/tts/TextToSpeechBeta;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1360
    const/4 v2, -0x1

    .line 1361
    .local v2, result:I
    :try_start_14
    iget-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    if-nez v3, :cond_1d

    .line 1362
    monitor-exit v4

    goto :goto_f

    .line 1359
    :catchall_1a
    move-exception v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v3

    .line 1365
    :cond_1d
    if-eqz p2, :cond_45

    :try_start_1f
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1367
    const-string v3, "utteranceId"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1368
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 1369
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xb

    aput-object v1, v3, v5

    .line 1371
    :cond_35
    const-string v3, "engine"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1372
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_45

    .line 1373
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xd

    aput-object v1, v3, v5

    .line 1376
    .end local v1           #extra:Ljava/lang/String;
    :cond_45
    iget-object v3, p0, Lcom/google/tts/TextToSpeechBeta;->mITts:Lcom/google/tts/ITtsBeta;

    iget-object v5, p0, Lcom/google/tts/TextToSpeechBeta;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/tts/TextToSpeechBeta;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v3, v5, p1, v6, p3}, Lcom/google/tts/ITtsBeta;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4e
    .catchall {:try_start_1f .. :try_end_4e} :catchall_69
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4e} :catch_57
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_4e} :catch_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_4e} :catch_7d

    move-result v3

    if-eqz v3, :cond_52

    .line 1377
    const/4 v2, 0x0

    .line 1398
    :cond_52
    :goto_52
    :try_start_52
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->resetCachedParams()V

    .line 1399
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_1a

    goto :goto_f

    .line 1379
    :catch_57
    move-exception v0

    .line 1381
    .local v0, e:Landroid/os/RemoteException;
    :try_start_58
    const-string v3, "TextToSpeech.java - synthesizeToFile"

    const-string v5, "RemoteException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1383
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1384
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_52

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_69
    move-exception v3

    goto :goto_52

    .line 1385
    :catch_6b
    move-exception v0

    .line 1387
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - synthesizeToFile"

    const-string v5, "NullPointerException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1389
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1390
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V

    goto :goto_52

    .line 1391
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_7d
    move-exception v0

    .line 1393
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "TextToSpeech.java - synthesizeToFile"

    const-string v5, "IllegalStateException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1395
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechBeta;->mStarted:Z

    .line 1396
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechBeta;->initTts()V
    :try_end_8e
    .catchall {:try_start_58 .. :try_end_8e} :catchall_69

    goto :goto_52
.end method
