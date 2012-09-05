.class public Lcom/vlingo/client/car/tts/CarTTSCachedRequests;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;,
        Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;
    }
.end annotation


# static fields
.field public static BLUETOOTH_OFF:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static BLUETOOTH_ON:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static CALL_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static ERROR_OCCURRED:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static HOME_PROMPT_DEMAND_FIRST_TIME:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static KEYWORD_SPOT_OFF_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static KEYWORD_SPOT_ON_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static KEYWORD_SPOT_ON_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static MEMO_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static MEMO_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static MEMO_SAVED:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static MESSAGES_NO_UNREAD:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static MESSAGE_NEXT_REPLY:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static NAV_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static NO_MATCH_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SAFEREADER_NEW_SMS_CMD_READ:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SAFEREADER_NEW_SMS_CMD_REPLY:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SAFEREADER_NEW_SMS_CMD_REPLY_OR_READ:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SAFEREADER_NEW_SMS_FROM:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SAFEREADER_OFF:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SAFEREADER_ON:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SAFEREADER_SPEAK_REPLY:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SCHEDULE_NO_EVENTS_TODAY:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_MESSAGE_BLANK_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_MESSAGE_FROM:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_REPLY:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_SAY_MESSAGE:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_SAY_MESSAGE_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_SENDING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_SEND_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_SEND_ERROR_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static SMS_SENT_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static STARTUP_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field public static TASK_CANCELLED:Lcom/vlingo/client/core/tts/TTSDemand; = null

.field private static final TIMEOUT_MS:I = 0x1b7740

.field public static VD_CALLING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

.field public static VD_CHOOSE_TYPE_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

.field public static VD_MULTIPLE_CONTACTS_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

.field public static VD_MULTIPLE_TYPES_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

.field public static VD_NO_MATCHING_TYPE:Lcom/vlingo/client/core/tts/TTSDemand;


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field private cacheAllLanguages:Z

.field private callbackExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

.field private volatile cancelled:Z

.field private volatile currentRequest:I

.field private langs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;

.field private persistentCache:Lcom/vlingo/client/core/tts/TTSFileCache;

.field private volatile requestsComplete:I

.field private requestsToCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/tts/TTSRequest2;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private runningTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->currentRequest:I

    .line 191
    iput v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsComplete:I

    .line 194
    iput-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z

    .line 195
    iput-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    .line 198
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheAllLanguages:Z

    .line 203
    new-instance v0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const-string v1, "TTSCachedRequestCallback"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->callbackExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    .line 204
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->callbackExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setMaxPoolSize(I)V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->builder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$1308(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsComplete:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsComplete:I

    return v0
.end method

.method static synthetic access$1600(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestComplete(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheAllLanguages:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->handleTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Lcom/vlingo/client/core/tts/TTSFileCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->persistentCache:Lcom/vlingo/client/core/tts/TTSFileCache;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/core/tts/TTSFileCache;)Lcom/vlingo/client/core/tts/TTSFileCache;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->persistentCache:Lcom/vlingo/client/core/tts/TTSFileCache;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->langs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->langs:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->processNextLang()V

    return-void
.end method

.method static synthetic access$900(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/util/Vector;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->addDemandsFromCurrentLanguage(Ljava/util/Vector;)V

    return-void
.end method

.method private addDemandsFromCurrentLanguage(Ljava/util/Vector;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/tts/TTSDemand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, demandsToCache:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSDemand;>;"
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->TASK_CANCELLED:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->CALL_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NAV_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->STARTUP_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND_FIRST_TIME:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NO_MATCH_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->ERROR_OCCURRED:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_SPEAK_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_CALLING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_MULTIPLE_CONTACTS_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_MULTIPLE_TYPES_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_NO_MATCHING_TYPE:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_CHOOSE_TYPE_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_ERROR_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SENT_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SENDING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SAY_MESSAGE_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_BLANK_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_FROM:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SAY_MESSAGE:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_FROM:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_READ:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY_OR_READ:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_ON_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_ON_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_OFF_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGE_NEXT_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGES_NO_UNREAD:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SCHEDULE_NO_EVENTS_TODAY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_SAVED:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method private declared-synchronized fetchNextRequest()V
    .registers 6

    .prologue
    .line 472
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v2, :cond_7

    .line 498
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 476
    :cond_7
    :try_start_7
    iget v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsComplete:I

    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_27

    .line 479
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    .line 481
    iget-boolean v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheAllLanguages:Z

    if-eqz v2, :cond_1f

    .line 482
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->processNextLang()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_5

    .line 472
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 484
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->listener:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;->onCachingFinished(ZLjava/lang/String;)V

    goto :goto_5

    .line 488
    :cond_27
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->listener:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;

    iget v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsComplete:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;->onCachingUpdated(F)V

    .line 490
    iget v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->currentRequest:I

    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 493
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;

    iget v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->currentRequest:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->currentRequest:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 494
    .local v1, request:Lcom/vlingo/client/core/tts/TTSRequest2;
    new-instance v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;)V

    .line 495
    .local v0, curHttpCallback:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 496
    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->fetchAudio()V
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->access$1500(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    :try_end_5d
    .catchall {:try_start_1f .. :try_end_5d} :catchall_1c

    goto :goto_5
.end method

.method public static getHomePromptDefault()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStartupPromptDefault()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized handleTimeout()V
    .registers 2

    .prologue
    .line 453
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$6;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$6;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 461
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    if-eqz v0, :cond_15

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancel(Z)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 466
    :cond_15
    monitor-exit p0

    return-void

    .line 453
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processNextLang()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->langs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_13

    .line 299
    iput-object v4, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->langs:Ljava/util/Vector;

    .line 300
    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->listener:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;

    invoke-interface {v1, v3, v4}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;->onCachingFinished(ZLjava/lang/String;)V

    .line 349
    :goto_12
    return-void

    .line 304
    :cond_13
    iput-boolean v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    .line 305
    iput v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsComplete:I

    .line 306
    iput v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->currentRequest:I

    .line 307
    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->langs:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, lang:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;

    invoke-direct {v2, p0, v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_12
.end method

.method public static reinit()V
    .registers 3

    .prologue
    .line 108
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, res:Landroid/content/res/Resources;
    const-string v1, "tts_carmode_home_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getHomePromptDefault()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 112
    const-string v1, "tts_carmode_startup_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getStartupPromptDefault()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->STARTUP_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 114
    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->CALL_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 115
    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 116
    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NAV_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 117
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND_FIRST_TIME:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 119
    const v1, 0x7f090224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarError(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NO_MATCH_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 120
    const v1, 0x7f09021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarError(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->ERROR_OCCURRED:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 121
    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmationCancel(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->TASK_CANCELLED:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 124
    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_CALLING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 125
    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_CHOOSE_TYPE_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 126
    const v1, 0x7f090237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_MULTIPLE_CONTACTS_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 127
    const v1, 0x7f090238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_MULTIPLE_TYPES_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 128
    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarError(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_NO_MATCHING_TYPE:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 131
    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 132
    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_ERROR_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 133
    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SENDING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 134
    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SENT_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 135
    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 136
    const v1, 0x7f09022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SAY_MESSAGE_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 137
    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_BLANK_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 138
    const v1, 0x7f09022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_FROM:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 139
    const v1, 0x7f09022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SAY_MESSAGE:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 144
    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 145
    const v1, 0x7f090221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 146
    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarBackground(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_SAVED:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 149
    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_ON_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 150
    const v1, 0x7f09021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_ON_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 151
    const v1, 0x7f09021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->KEYWORD_SPOT_OFF_BRIEF_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 152
    const v1, 0x7f09021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 153
    const v1, 0x7f090219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 156
    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 158
    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 159
    const v1, 0x7f090228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_SPEAK_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 163
    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_FROM:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 164
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_READ:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 165
    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 166
    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY_OR_READ:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 169
    const v1, 0x7f090229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarCancelable(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SCHEDULE_NO_EVENTS_TODAY:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 170
    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGES_NO_UNREAD:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 171
    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    sput-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGE_NEXT_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 173
    return-void
.end method

.method private requestComplete(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->callbackExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)Lcom/vlingo/client/core/util/Future;

    .line 447
    return-void
.end method

.method public static resetCustomizablePrompts()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 176
    const-string v0, "tts_carmode_home_prompt_dirty"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "tos_accepted"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 178
    :cond_11
    const-string v0, "tts_carmode_home_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getHomePromptDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1a
    const-string v0, "tts_carmode_startup_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getStartupPromptDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "tts_carmode_home_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getHomePromptDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 183
    const-string v0, "tts_carmode_startup_prompt"

    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->getStartupPromptDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->STARTUP_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 184
    return-void
.end method

.method public static setCarModeHomePrompt(Ljava/lang/String;)V
    .registers 2
    .parameter "prompt"

    .prologue
    .line 208
    invoke-static {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 209
    return-void
.end method

.method public static setStartupPrompt(Ljava/lang/String;)V
    .registers 2
    .parameter "prompt"

    .prologue
    .line 212
    invoke-static {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->STARTUP_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 213
    return-void
.end method


# virtual methods
.method public cacheRequests(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;Landroid/content/Context;)V
    .registers 4
    .parameter "listener"
    .parameter "context"

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheRequests(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;Landroid/content/Context;Z)V

    .line 221
    return-void
.end method

.method public cacheRequests(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;Landroid/content/Context;Z)V
    .registers 6
    .parameter "listener"
    .parameter "context"
    .parameter "useExternalStorage"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    if-eqz v0, :cond_5

    .line 295
    :goto_4
    return-void

    .line 224
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    .line 225
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->listener:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;

    .line 226
    invoke-interface {p1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;->onCachingStarted()V

    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->builder:Landroid/app/AlertDialog$Builder;

    .line 229
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public declared-synchronized cancel(Z)V
    .registers 7
    .parameter "success"

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    new-instance v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$4;

    invoke-direct {v2, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$4;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Z)V

    invoke-static {v2}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 417
    iget-boolean v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z

    if-nez v2, :cond_3a

    .line 420
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z

    .line 421
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z

    .line 422
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    .line 423
    .local v1, task:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;
    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->cancel()V
    invoke-static {v1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->access$1200(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_19

    .line 409
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2

    .line 425
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 426
    if-eqz p1, :cond_3c

    .line 427
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->listener:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;->onCachingFinished(ZLjava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_29

    .line 433
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    .line 430
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->listener:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;

    invoke-interface {v2}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;->onCachingCancelled()V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_29

    goto :goto_3a
.end method
