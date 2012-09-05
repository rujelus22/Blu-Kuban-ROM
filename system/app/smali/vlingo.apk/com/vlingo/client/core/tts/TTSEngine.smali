.class public Lcom/vlingo/client/core/tts/TTSEngine;
.super Ljava/lang/Object;
.source "TTSEngine.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/tts/TTSEngine$1;,
        Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;,
        Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;,
        Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VLG_TTSEngine"

.field private static final MAX_MESSAGE_READBACK_RETRIES:I = 0x5

.field private static volatile instance:Lcom/vlingo/client/core/tts/TTSEngine;

.field private static s_TTS_URL:Ljava/lang/String;


# instance fields
.field private audioListener:Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;

.field private currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

.field private localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/vlingo/client/core/tts/LocalTTSListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile onboardEngine:Landroid/speech/tts/TextToSpeech;

.field private volatile onboardEngineEnabled:Z

.field private final onboardLock:Ljava/lang/Object;

.field private volatile onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

.field private volatile playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

.field private remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vlingo/client/core/tts/ITTSListener;",
            ">;"
        }
    .end annotation
.end field

.field private final timer:Ljava/util/Timer;

.field private final ttsCache:Lcom/vlingo/client/core/tts/TTSCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    const-string v0, "TTS_URL"

    const-string v1, "http://samsungvuitts.vlingo.com/tts/tts2"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/tts/TTSEngine;->s_TTS_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngineEnabled:Z

    .line 90
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardLock:Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSAssetCache;->persistentCacheManager(Landroid/content/Context;)Lcom/vlingo/client/core/tts/TTSAssetCache;

    move-result-object v1

    .line 97
    .local v1, persistentCache:Lcom/vlingo/client/core/tts/TTSAssetCache;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSFileCache;->genericCacheManager(Landroid/content/Context;)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v0

    .line 98
    .local v0, fileCache:Lcom/vlingo/client/core/tts/TTSFileCache;
    new-instance v2, Lcom/vlingo/client/core/tts/TTSCacheImpl;

    invoke-direct {v2, v1, v0}, Lcom/vlingo/client/core/tts/TTSCacheImpl;-><init>(Lcom/vlingo/client/core/tts/TTSCache;Lcom/vlingo/client/core/tts/TTSCache;)V

    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;

    .line 100
    invoke-static {}, Lcom/vlingo/client/core/util/TimerSingleton;->getTimer()Ljava/util/Timer;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->timer:Ljava/util/Timer;

    .line 101
    new-instance v2, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;-><init>(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSEngine$1;)V

    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->audioListener:Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;

    .line 102
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSEngine;->reloadOnboardTTS()V

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vlingo/client/core/tts/TTSEngine;)Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->audioListener:Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vlingo/client/core/tts/TTSEngine;)Lcom/vlingo/client/core/tts/TTSCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStart(Lcom/vlingo/client/core/tts/TTSDemand;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vlingo/client/core/tts/TTSEngine;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSRequest2;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStop(Lcom/vlingo/client/core/tts/TTSDemand;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vlingo/client/core/tts/TTSEngine;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;)Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V

    return-void
.end method

.method private declared-synchronized cancelCurrentRequest()V
    .registers 3

    .prologue
    .line 450
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    if-eqz v0, :cond_b

    .line 451
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    const/4 v1, 0x0

    #calls: Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(Z)Z
    invoke-static {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->access$300(Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;Z)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 454
    :cond_b
    monitor-exit p0

    return-void

    .line 450
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFormattedTextForOnBoard(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;
    .registers 11
    .parameter "request"

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v6

    if-nez v6, :cond_f

    .line 373
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    .line 406
    :cond_e
    :goto_e
    return-object v1

    .line 375
    :cond_f
    const-string v1, ""

    .line 376
    .local v1, newString:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 377
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v5

    .line 378
    .local v5, type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    sget-object v6, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v5, v6, :cond_29

    sget-object v6, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v5, v6, :cond_ad

    .line 383
    :cond_29
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getSender()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_79

    .line 384
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/safereader/MessageContext;->getSenderName()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, sender:Ljava/lang/String;
    const v6, 0x7f090227

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .end local v3           #sender:Ljava/lang/String;
    :goto_44
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isReadMessageBody()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 391
    sget-object v6, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v5, v6, :cond_81

    .line 392
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/safereader/MessageContext;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, msg:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0900dd

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    goto :goto_e

    .line 388
    .end local v0           #msg:Ljava/lang/String;
    :cond_79
    const v6, 0x7f090226

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 396
    :cond_81
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/safereader/MessageContext;->getSubject()Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, subject:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090279

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    goto/16 :goto_e

    .line 401
    .end local v4           #subject:Ljava/lang/String;
    :cond_ad
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v6

    sget-object v7, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_EMAIL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v6, v7, :cond_e

    goto/16 :goto_e
.end method

.method public static getHttpRequest(Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/core/http/HttpRequest;
    .registers 11
    .parameter "ttsRequest"
    .parameter "callback"

    .prologue
    const/4 v8, 0x1

    .line 458
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getXML()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Lcom/vlingo/client/core/util/StringUtils;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 464
    .local v2, postData:[B
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v8}, Ljava/util/Hashtable;-><init>(I)V

    .line 465
    .local v1, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Content-type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v5, "X-vlrequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CL=true; RequestID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->sequence()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMsgTimeoutValue()I

    move-result v4

    .line 470
    .local v4, timeout:I
    const-string v5, "TTS"

    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getTTS_URL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p1, v6, v2}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v3

    .line 471
    .local v3, request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setExtraHeaders(Ljava/util/Hashtable;)V

    .line 472
    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setTimeout(I)V

    .line 477
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 478
    invoke-virtual {v3, v8}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setGzipPostData(Z)V

    .line 480
    :cond_4e
    return-object v3
.end method

.method public static getInstance()Lcom/vlingo/client/core/tts/TTSEngine;
    .registers 2

    .prologue
    .line 116
    const-class v1, Lcom/vlingo/client/core/tts/TTSEngine;

    monitor-enter v1

    .line 117
    :try_start_3
    sget-object v0, Lcom/vlingo/client/core/tts/TTSEngine;->instance:Lcom/vlingo/client/core/tts/TTSEngine;

    if-nez v0, :cond_e

    .line 118
    new-instance v0, Lcom/vlingo/client/core/tts/TTSEngine;

    invoke-direct {v0}, Lcom/vlingo/client/core/tts/TTSEngine;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSEngine;->instance:Lcom/vlingo/client/core/tts/TTSEngine;

    .line 119
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 120
    sget-object v0, Lcom/vlingo/client/core/tts/TTSEngine;->instance:Lcom/vlingo/client/core/tts/TTSEngine;

    return-object v0

    .line 119
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static getTTS_URL()Ljava/lang/String;
    .registers 1

    .prologue
    .line 812
    sget-object v0, Lcom/vlingo/client/core/tts/TTSEngine;->s_TTS_URL:Ljava/lang/String;

    return-object v0
.end method

.method private haveConnection()Z
    .registers 9

    .prologue
    .line 410
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 411
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 412
    .local v5, ni:[Landroid/net/NetworkInfo;
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v3, :cond_46

    aget-object v4, v0, v2

    .line 413
    .local v4, n:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MOBILE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIMAX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 414
    :cond_3b
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 415
    const/4 v6, 0x1

    .line 417
    .end local v4           #n:Landroid/net/NetworkInfo;
    :goto_42
    return v6

    .line 412
    .restart local v4       #n:Landroid/net/NetworkInfo;
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 417
    .end local v4           #n:Landroid/net/NetworkInfo;
    :cond_46
    const/4 v6, 0x0

    goto :goto_42
.end method

.method public static declared-synchronized isEnabledTTS()Z
    .registers 2

    .prologue
    .line 287
    const-class v0, Lcom/vlingo/client/core/tts/TTSEngine;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSEnabled()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isEnabledTTSMessageReadback()Z
    .registers 2

    .prologue
    .line 283
    const-class v0, Lcom/vlingo/client/core/tts/TTSEngine;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isErrorResponse([B)Z
    .registers 4
    .parameter "audio"

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, toReturn:Z
    if-nez p0, :cond_b

    .line 486
    const-string v1, "VLG_TTSEngine"

    const-string v2, "isErrorResponse true, TTS audio is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x1

    .line 489
    :cond_b
    array-length v1, p0

    const/16 v2, 0x200

    if-ge v1, v2, :cond_18

    .line 490
    const-string v1, "VLG_TTSEngine"

    const-string v2, "isErrorResponse true, TTS audio.length < 512"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x1

    .line 493
    :cond_18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    const-string v2, "<Error>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    .line 494
    const-string v1, "VLG_TTSEngine"

    const-string v2, "isErrorResponse true, audio contains <Error>"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x1

    .line 497
    :cond_2e
    return v0
.end method

.method public static declared-synchronized isReousrce(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    .registers 3
    .parameter "request"

    .prologue
    .line 279
    const-class v0, Lcom/vlingo/client/core/tts/TTSEngine;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/vlingo/client/core/tts/TTSResources;->isTTSResource(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyOnCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 12
    .parameter "demand"

    .prologue
    .line 585
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v8

    .line 586
    :try_start_3
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/LocalTTSListener;

    .line 587
    .local v4, listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/LocalTTSListener;->onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_9

    .line 589
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    :catchall_19
    move-exception v7

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 590
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v8

    .line 591
    const/4 v5, 0x0

    .line 592
    .local v5, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_21
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_5a

    move-result-object v3

    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    move-object v6, v5

    .line 593
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v6, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_28
    :try_start_28
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 594
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 595
    .local v2, key:I
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/ITTSListener;
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_62

    .line 597
    .local v4, listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :try_start_44
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/ITTSListener;->onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_62
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_4a

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_48
    move-object v6, v5

    .line 607
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_28

    .line 598
    :catch_4a
    move-exception v0

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    if-nez v6, :cond_65

    .line 604
    :try_start_4d
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_62

    .line 605
    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_52
    :try_start_52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 609
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:I
    .end local v3           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v4           #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :catchall_5a
    move-exception v7

    :goto_5b
    monitor-exit v8
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v7

    .line 608
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v3       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_5d
    :try_start_5d
    invoke-direct {p0, v6}, Lcom/vlingo/client/core/tts/TTSEngine;->removeRemoteListeners(Ljava/util/Vector;)V

    .line 609
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_62

    .line 610
    return-void

    .line 609
    :catchall_62
    move-exception v7

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_5b

    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v0       #e:Landroid/os/RemoteException;
    .restart local v2       #key:I
    .restart local v4       #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_65
    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_52
.end method

.method private notifyOnIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 12
    .parameter "demand"

    .prologue
    .line 557
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v8

    .line 558
    :try_start_3
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/LocalTTSListener;

    .line 559
    .local v4, listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/LocalTTSListener;->onIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_9

    .line 561
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    :catchall_19
    move-exception v7

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 562
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v8

    .line 563
    const/4 v5, 0x0

    .line 564
    .local v5, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_21
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_5a

    move-result-object v3

    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    move-object v6, v5

    .line 565
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v6, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_28
    :try_start_28
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 566
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 567
    .local v2, key:I
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/ITTSListener;
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_62

    .line 569
    .local v4, listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :try_start_44
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/ITTSListener;->onIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_62
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_4a

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_48
    move-object v6, v5

    .line 579
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_28

    .line 570
    :catch_4a
    move-exception v0

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    if-nez v6, :cond_65

    .line 576
    :try_start_4d
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_62

    .line 577
    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_52
    :try_start_52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 581
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:I
    .end local v3           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v4           #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :catchall_5a
    move-exception v7

    :goto_5b
    monitor-exit v8
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v7

    .line 580
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v3       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_5d
    :try_start_5d
    invoke-direct {p0, v6}, Lcom/vlingo/client/core/tts/TTSEngine;->removeRemoteListeners(Ljava/util/Vector;)V

    .line 581
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_62

    .line 582
    return-void

    .line 581
    :catchall_62
    move-exception v7

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_5b

    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v0       #e:Landroid/os/RemoteException;
    .restart local v2       #key:I
    .restart local v4       #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_65
    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_52
.end method

.method private notifyOnStart(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 12
    .parameter "demand"

    .prologue
    .line 501
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v8

    .line 502
    :try_start_3
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/LocalTTSListener;

    .line 503
    .local v4, listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/LocalTTSListener;->onStart(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_9

    .line 505
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    :catchall_19
    move-exception v7

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 506
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v8

    .line 507
    const/4 v5, 0x0

    .line 508
    .local v5, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_21
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_5a

    move-result-object v3

    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    move-object v6, v5

    .line 509
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v6, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_28
    :try_start_28
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 510
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 511
    .local v2, key:I
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/ITTSListener;
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_62

    .line 513
    .local v4, listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :try_start_44
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/ITTSListener;->onStart(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_62
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_4a

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_48
    move-object v6, v5

    .line 523
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_28

    .line 514
    :catch_4a
    move-exception v0

    .line 519
    .local v0, e:Landroid/os/RemoteException;
    if-nez v6, :cond_65

    .line 520
    :try_start_4d
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_62

    .line 521
    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_52
    :try_start_52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 525
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:I
    .end local v3           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v4           #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :catchall_5a
    move-exception v7

    :goto_5b
    monitor-exit v8
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v7

    .line 524
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v3       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_5d
    :try_start_5d
    invoke-direct {p0, v6}, Lcom/vlingo/client/core/tts/TTSEngine;->removeRemoteListeners(Ljava/util/Vector;)V

    .line 525
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_62

    .line 526
    return-void

    .line 525
    :catchall_62
    move-exception v7

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_5b

    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v0       #e:Landroid/os/RemoteException;
    .restart local v2       #key:I
    .restart local v4       #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_65
    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_52
.end method

.method private notifyOnStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 12
    .parameter "demand"

    .prologue
    .line 529
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v8

    .line 530
    :try_start_3
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/LocalTTSListener;

    .line 531
    .local v4, listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/LocalTTSListener;->onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_9

    .line 533
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/vlingo/client/core/tts/LocalTTSListener;
    :catchall_19
    move-exception v7

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 534
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v8

    .line 535
    const/4 v5, 0x0

    .line 536
    .local v5, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_21
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_5a

    move-result-object v3

    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    move-object v6, v5

    .line 537
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v6, listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_28
    :try_start_28
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 538
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 539
    .local v2, key:I
    iget-object v7, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/tts/ITTSListener;
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_62

    .line 541
    .local v4, listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :try_start_44
    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/ITTSListener;->onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_62
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_4a

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_48
    move-object v6, v5

    .line 551
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_28

    .line 542
    :catch_4a
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    if-nez v6, :cond_65

    .line 548
    :try_start_4d
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_62

    .line 549
    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_52
    :try_start_52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 553
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:I
    .end local v3           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v4           #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    :catchall_5a
    move-exception v7

    :goto_5b
    monitor-exit v8
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v7

    .line 552
    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v3       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_5d
    :try_start_5d
    invoke-direct {p0, v6}, Lcom/vlingo/client/core/tts/TTSEngine;->removeRemoteListeners(Ljava/util/Vector;)V

    .line 553
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_62

    .line 554
    return-void

    .line 553
    :catchall_62
    move-exception v7

    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_5b

    .end local v5           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v0       #e:Landroid/os/RemoteException;
    .restart local v2       #key:I
    .restart local v4       #listener:Lcom/vlingo/client/core/tts/ITTSListener;
    .restart local v6       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_65
    move-object v5, v6

    .end local v6           #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5       #listenersToRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_52
.end method

.method private removeRemoteListeners(Ljava/util/Vector;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, listeners:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_21

    .line 614
    iget-object v3, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 615
    :try_start_5
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 616
    .local v1, key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->removeRemoteListener(I)V

    goto :goto_9

    .line 618
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Integer;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 620
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_21
    return-void
.end method

.method public static setTTS_URL(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 816
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 817
    :cond_8
    const-string p0, "http://samsungvuitts.vlingo.com/tts/tts2"

    .line 818
    const-string v0, "TTS_URL"

    invoke-static {v0, p0}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_f
    :goto_f
    sput-object p0, Lcom/vlingo/client/core/tts/TTSEngine;->s_TTS_URL:Ljava/lang/String;

    .line 823
    return-void

    .line 819
    :cond_12
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->isBackgroundProcess()Z

    move-result v0

    if-nez v0, :cond_f

    .line 820
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setFeature(IZ)V

    goto :goto_f
.end method

.method private shouldHandleDemand(Lcom/vlingo/client/core/tts/TTSDemand;)Z
    .registers 6
    .parameter "demand"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 421
    sget-object v2, Lcom/vlingo/client/core/tts/TTSEngine$1;->$SwitchMap$com$vlingo$client$core$tts$TTSDemand$TTSType:[I

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    move v0, v1

    .line 443
    :cond_12
    :goto_12
    :pswitch_12
    return v0

    .line 423
    :pswitch_13
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isEMailReadbackEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_1f
    move v0, v1

    goto :goto_12

    .line 426
    :pswitch_21
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSMSReadbackEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_2d
    move v0, v1

    goto :goto_12

    .line 428
    :pswitch_2f
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModeConfirmationEnabled()Z

    move-result v0

    goto :goto_12

    .line 430
    :pswitch_34
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModeConfirmationEnabled()Z

    move-result v0

    goto :goto_12

    .line 432
    :pswitch_39
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModePromptEnabled()Z

    move-result v0

    goto :goto_12

    .line 434
    :pswitch_3e
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSEnabled()Z

    move-result v0

    goto :goto_12

    .line 421
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_13
        :pswitch_21
        :pswitch_21
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public static updateTTS_URL()V
    .registers 2

    .prologue
    .line 808
    const-string v0, "TTS_URL"

    const-string v1, "http://samsungvuitts.vlingo.com/tts/tts2"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/tts/TTSEngine;->s_TTS_URL:Ljava/lang/String;

    .line 809
    return-void
.end method


# virtual methods
.method public addLocalListener(Lcom/vlingo/client/core/tts/LocalTTSListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 155
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addRemoteListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V
    .registers 6
    .parameter "listener"
    .parameter "id"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 127
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 128
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_18
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public declared-synchronized cancelTTS(Z)V
    .registers 5
    .parameter "clearQueue"

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    if-eqz v1, :cond_f

    .line 332
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->isMessageReadback()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_48

    move-result v1

    if-eqz v1, :cond_f

    .line 362
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 338
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v1, :cond_1f

    .line 339
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 343
    :cond_1f
    if-eqz p1, :cond_24

    .line 344
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSEngine;->cancelCurrentRequest()V

    .line 347
    :cond_24
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/audio/AudioPlayer;->stopPlayback(Z)V

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, notif:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_48

    .line 352
    :try_start_2f
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v1, :cond_38

    .line 355
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 358
    :cond_38
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 359
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_4b

    .line 360
    if-eqz v0, :cond_d

    .line 361
    :try_start_40
    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_48

    goto :goto_d

    .line 331
    .end local v0           #notif:Lcom/vlingo/client/core/tts/TTSRequest2;
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1

    .line 359
    .restart local v0       #notif:Lcom/vlingo/client/core/tts/TTSRequest2;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_48
.end method

.method public declared-synchronized isCached(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    .registers 3
    .parameter "request"

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInit(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 831
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardLock:Ljava/lang/Object;

    monitor-enter v1

    .line 832
    if-nez p1, :cond_1d

    .line 835
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngineEnabled:Z

    .line 836
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lcom/vlingo/client/samsung/TTSUtil;->initTTSEngine(Landroid/speech/tts/TextToSpeech;)V

    .line 837
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 838
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 845
    :goto_1b
    monitor-exit v1

    .line 846
    return-void

    .line 842
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngineEnabled:Z

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    goto :goto_1b

    .line 845
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 8
    .parameter "utteranceId"

    .prologue
    .line 852
    const/4 v1, 0x0

    .line 854
    .local v1, notif:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v3, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardLock:Ljava/lang/Object;

    monitor-enter v3

    .line 857
    :try_start_4
    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v2, :cond_40

    .line 860
    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 863
    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->getBehavior()Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    move-result-object v2

    sget-object v4, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->INCOMING_CALL_ANNOUNCE:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    if-ne v2, v4, :cond_3b

    .line 867
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 868
    .local v0, am:Landroid/media/AudioManager;
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 872
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_3b
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 873
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 879
    :cond_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_4b

    .line 881
    if-eqz v1, :cond_4a

    .line 882
    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStop(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 883
    :cond_4a
    return-void

    .line 879
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public declared-synchronized playRequestUsingOnboard(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 11
    .parameter "request"

    .prologue
    .line 234
    monitor-enter p0

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/tts/TTSRequest2;->setUseOnboard(Z)V

    .line 235
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/tts/TTSRequest2;->setPlaying(Z)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_9a

    .line 237
    :try_start_9
    iget-object v6, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_91

    .line 238
    :try_start_c
    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_9d

    iget-boolean v5, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngineEnabled:Z

    if-eqz v5, :cond_9d

    .line 239
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/tts/TTSDemand;->getBehavior()Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    move-result-object v1

    .line 240
    .local v1, behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 243
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine;->getFormattedTextForOnBoard(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, textToSpeak:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "utteranceId"

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/tts/TTSDemand;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v5

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 248
    .local v0, am:Landroid/media/AudioManager;
    sget-object v5, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->INCOMING_CALL_ANNOUNCE:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    if-ne v1, v5, :cond_53

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 249
    const/4 v5, 0x2

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 251
    :cond_53
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->useSCOStream()Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 254
    :cond_5f
    const/4 v5, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 255
    const-string v5, "streamType"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_6e
    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 264
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStart(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 268
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    .end local v3           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #textToSpeak:Ljava/lang/String;
    :goto_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_c .. :try_end_7c} :catchall_8e

    .line 272
    :goto_7c
    monitor-exit p0

    return-void

    .line 258
    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    .restart local v3       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #textToSpeak:Ljava/lang/String;
    :cond_7e
    const/4 v5, 0x3

    const/4 v7, 0x0

    :try_start_80
    invoke-virtual {v0, v5, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 259
    const-string v5, "streamType"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 268
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    .end local v3           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #textToSpeak:Ljava/lang/String;
    :catchall_8e
    move-exception v5

    monitor-exit v6
    :try_end_90
    .catchall {:try_start_80 .. :try_end_90} :catchall_8e

    :try_start_90
    throw v5
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_91} :catch_91

    .line 269
    :catch_91
    move-exception v2

    .line 270
    .local v2, ex:Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_9a

    goto :goto_7c

    .line 234
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_9a
    move-exception v5

    monitor-exit p0

    throw v5

    .line 266
    :cond_9d
    :try_start_9d
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_8e

    goto :goto_7b
.end method

.method public declared-synchronized playTTS(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    .registers 9
    .parameter "request"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 171
    monitor-enter p0

    if-nez p1, :cond_7

    .line 230
    :goto_5
    monitor-exit p0

    return v4

    .line 174
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vlingo/client/core/tts/TTSEngine;->shouldHandleDemand(Lcom/vlingo/client/core/tts/TTSDemand;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 178
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    goto :goto_5

    .line 171
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4

    .line 191
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v4

    if-nez v4, :cond_25

    .line 192
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSEngine;->cancelCurrentRequest()V

    .line 195
    :cond_25
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->reset()V

    .line 199
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->useNetworkTTS()Z

    move-result v4

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 202
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v4, p1}, Lcom/vlingo/client/core/tts/TTSCache;->getCache(Lcom/vlingo/client/core/tts/TTSRequest2;)[B

    move-result-object v2

    .line 203
    .local v2, data:[B
    if-eqz v2, :cond_69

    .line 204
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    .line 206
    sget-object v4, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FOUND_IN_CACHE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->setState(Lcom/vlingo/client/core/tts/TTSRequest2$State;)V

    .line 207
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v4

    if-eqz v4, :cond_66

    sget-object v3, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->MESSAGE_READBACK:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    .line 208
    .local v3, type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
    :goto_52
    new-instance v1, Lcom/vlingo/client/core/audio/AudioContext;

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine;->audioListener:Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;

    invoke-direct {v1, p1, v4}, Lcom/vlingo/client/core/audio/AudioContext;-><init>(Ljava/lang/Object;Lcom/vlingo/client/core/audio/AudioListener;)V

    .line 209
    .local v1, context:Lcom/vlingo/client/core/audio/AudioContext;
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->playAudio([BLcom/vlingo/client/core/audio/AudioPlayer$AudioType;Lcom/vlingo/client/core/audio/AudioContext;)V

    .line 210
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->setPlaying(Z)V

    move v4, v5

    .line 211
    goto :goto_5

    .line 207
    .end local v1           #context:Lcom/vlingo/client/core/audio/AudioContext;
    .end local v3           #type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
    :cond_66
    sget-object v3, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->TTS_PROMPT:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    goto :goto_52

    .line 217
    .end local v2           #data:[B
    :cond_69
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSDemand;->getBehavior()Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    move-result-object v0

    .line 219
    .local v0, behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->useNetworkTTS()Z

    move-result v4

    if-eqz v4, :cond_88

    sget-object v4, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->INCOMING_CALL_ANNOUNCE:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    if-eq v0, v4, :cond_88

    .line 220
    new-instance v4, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    const/4 v6, 0x0

    invoke-direct {v4, p0, p1, v6}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;-><init>(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/core/tts/TTSEngine$1;)V

    iput-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    .line 221
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    #calls: Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->fetchAudio()V
    invoke-static {v4}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->access$200(Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;)V

    .line 224
    :cond_88
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->useNetworkTTS()Z

    move-result v4

    if-eqz v4, :cond_9c

    sget-object v4, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    if-eq v0, v4, :cond_9c

    sget-object v4, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->INCOMING_CALL_ANNOUNCE:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    if-eq v0, v4, :cond_9c

    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSEngine;->haveConnection()Z

    move-result v4

    if-nez v4, :cond_a3

    .line 227
    :cond_9c
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->setUseOnboard(Z)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine;->playRequestUsingOnboard(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    :try_end_a3
    .catchall {:try_start_1c .. :try_end_a3} :catchall_19

    :cond_a3
    move v4, v5

    .line 230
    goto/16 :goto_5
.end method

.method public declared-synchronized processIgnoredTTS(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 295
    monitor-exit p0

    return-void

    .line 294
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadOnboardTTS()V
    .registers 4

    .prologue
    .line 108
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_3
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public removeLocalListener(Lcom/vlingo/client/core/tts/LocalTTSListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->localListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeRemoteListener(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 141
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 142
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->remoteListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_18
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public declared-synchronized skipCurrentlyPlayingItem()V
    .registers 4

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v1, :cond_11

    .line 302
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStop(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 306
    :cond_11
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->skip()V

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, notif:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_39

    .line 311
    :try_start_1c
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v1, :cond_25

    .line 314
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardTTSRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 317
    :cond_25
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine;->onboardEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 318
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_36

    .line 319
    if-eqz v0, :cond_34

    .line 320
    :try_start_2d
    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_39

    .line 322
    :cond_34
    monitor-exit p0

    return-void

    .line 318
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 301
    .end local v0           #notif:Lcom/vlingo/client/core/tts/TTSRequest2;
    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method
