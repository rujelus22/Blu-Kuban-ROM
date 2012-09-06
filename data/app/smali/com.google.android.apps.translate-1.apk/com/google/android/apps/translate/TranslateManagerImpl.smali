.class public Lcom/google/android/apps/translate/TranslateManagerImpl;
.super Ljava/lang/Object;
.source "TranslateManagerImpl.java"

# interfaces
.implements Lcom/google/android/apps/translate/TranslateManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;,
        Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;
    }
.end annotation


# static fields
.field private static final SERVICE_CONNECTION_TIMEOUT_SEC:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TranslateManagerImpl"


# instance fields
.field private mCacheDb:Lcom/google/android/apps/translate/history/BaseDb;

.field private final mCondVar:Landroid/os/ConditionVariable;

.field private final mContext:Landroid/content/Context;

.field private mFromLanguage:Lcom/google/android/apps/translate/Language;

.field private mIsConnected:Z

.field private mIsInstantTranslation:Z

.field private mLogRequestHandler:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;

.field private mLoggingRequestThread:Ljava/lang/Thread;

.field private mPreviousInstantTransleQuery:Ljava/lang/String;

.field private mToLanguage:Lcom/google/android/apps/translate/Language;

.field private final mTranslateConn:Landroid/content/ServiceConnection;

.field private mTranslateService:Lcom/google/android/apps/translate/ITranslate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCondVar:Landroid/os/ConditionVariable;

    .line 26
    iput-boolean v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsConnected:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsInstantTranslation:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mPreviousInstantTransleQuery:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/google/android/apps/translate/TranslateManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/TranslateManagerImpl$1;-><init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mLoggingRequestThread:Ljava/lang/Thread;

    .line 155
    new-instance v0, Lcom/google/android/apps/translate/TranslateManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/TranslateManagerImpl$3;-><init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mTranslateConn:Landroid/content/ServiceConnection;

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;)Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mLogRequestHandler:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/google/android/apps/translate/TranslateManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/TranslateManagerImpl;->doTranslateFromServiceSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/TranslateManagerImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/translate/TranslateManagerImpl;->connectToTranslateService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/ITranslate;)Lcom/google/android/apps/translate/ITranslate;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mTranslateService:Lcom/google/android/apps/translate/ITranslate;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/translate/TranslateManagerImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/TranslateManagerImpl;)Landroid/os/ConditionVariable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCondVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private connectToTranslateService()Z
    .registers 5

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/translate/TranslateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mTranslateConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCondVar:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 177
    iget-boolean v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsConnected:Z

    return v1
.end method

.method private doTranslateFromServiceSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "extraParams"
    .parameter "fromLangShortName"
    .parameter "toLangShortName"
    .parameter "text"

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, result:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mTranslateService:Lcom/google/android/apps/translate/ITranslate;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p4, p2, p3, v3}, Lcom/google/android/apps/translate/ITranslate;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_34

    move-result-object v1

    .line 145
    :goto_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 146
    const-string v2, "TranslateManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCacheDb:Lcom/google/android/apps/translate/history/BaseDb;

    new-instance v3, Lcom/google/android/apps/translate/history/Entry;

    invoke-direct {v3, p2, p3, p4, v1}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/history/BaseDb;->add(Lcom/google/android/apps/translate/history/Entry;)V

    .line 152
    :goto_33
    return-object v1

    .line 142
    :catch_34
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TranslateManagerImpl"

    const-string v3, "Translation error"

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 149
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3d
    const-string v2, "TranslateManagerImpl"

    const-string v3, "Received EMPTY result"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method


# virtual methods
.method public deinitialize()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mTranslateConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 67
    return-void
.end method

.method public doTranslate(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "text"

    .prologue
    .line 83
    iget-object v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCondVar:Landroid/os/ConditionVariable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    .line 84
    iget-object v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mTranslateService:Lcom/google/android/apps/translate/ITranslate;

    if-nez v4, :cond_11

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/translate/TranslateManagerImpl;->initialize()V

    .line 87
    const-string v2, ""

    .line 132
    :goto_10
    return-object v2

    .line 90
    :cond_11
    const/4 v3, 0x0

    .line 91
    .local v3, sendLogRequest:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, extraParams:Ljava/lang/StringBuilder;
    iget-boolean v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsInstantTranslation:Z

    if-eqz v4, :cond_9f

    .line 96
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsInstantTranslation:Z

    .line 98
    iget-object v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mPreviousInstantTransleQuery:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_99

    iget-object v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mPreviousInstantTransleQuery:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 100
    const-string v4, "&otf=2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :goto_33
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mPreviousInstantTransleQuery:Ljava/lang/String;

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCacheDb:Lcom/google/android/apps/translate/history/BaseDb;

    iget-object v5, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v6, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v4, v5, v6, p1}, Lcom/google/android/apps/translate/history/CacheDb;->getCachedEntry(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 114
    .local v0, cacheResult:Lcom/google/android/apps/translate/history/Entry;
    if-eqz v0, :cond_b9

    .line 115
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b9

    .line 117
    if-eqz v3, :cond_7f

    iget-object v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mLogRequestHandler:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;

    if-eqz v4, :cond_7f

    .line 118
    const-string v4, "TranslateManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending a logging translation request. inputText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mLogRequestHandler:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v7}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;->sendTranslationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_7f
    const-string v4, "TranslateManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use cache entry. inputText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 102
    .end local v0           #cacheResult:Lcom/google/android/apps/translate/history/Entry;
    .end local v2           #result:Ljava/lang/String;
    :cond_99
    const-string v4, "&otf=3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 105
    :cond_9f
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/translate/UserActivityMgr;->getCurrTranslationExtraParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/translate/UserActivityMgr;->prepareNewTranslation()V

    .line 107
    const-string v4, "&otf=1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/4 v3, 0x1

    goto/16 :goto_33

    .line 128
    .restart local v0       #cacheResult:Lcom/google/android/apps/translate/history/Entry;
    .restart local v2       #result:Ljava/lang/String;
    :cond_b9
    const-string v4, "TranslateManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call translate service. inputText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, p1}, Lcom/google/android/apps/translate/TranslateManagerImpl;->doTranslateFromServiceSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    goto/16 :goto_10
.end method

.method public initialize()V
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsInstantTranslation:Z

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/CacheDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mCacheDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mLoggingRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_18

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mLoggingRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    :cond_18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/translate/TranslateManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/TranslateManagerImpl$2;-><init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method

.method public setInstantTransalte(Z)V
    .registers 2
    .parameter "isInstantTranslation"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsInstantTranslation:Z

    .line 78
    return-void
.end method

.method public setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 72
    iput-object p2, p0, Lcom/google/android/apps/translate/TranslateManagerImpl;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 73
    return-void
.end method
