.class public Lcom/sprint/dsa/dss/DsaSystem;
.super Ljava/lang/Object;
.source "DsaSystem.java"


# static fields
.field public static final ESN:I = 0x3

.field public static final MDN:I = 0x1

.field public static final MEID:I = 0x1e

.field public static final MSID:I = 0x23

.field public static final NAI:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"

.field static connectionManager:Lcom/sprint/internal/ConnectionManager;

.field static esn:Ljava/lang/String;

.field static mdn:Ljava/lang/String;

.field static meid:Ljava/lang/String;

.field static msid:Ljava/lang/String;

.field static nai:Ljava/lang/String;

.field static reseller:Ljava/lang/String;

.field static systemProperties:Lcom/sprint/internal/SystemProperties;

.field static url:Ljava/lang/String;

.field static x_wap_p:Ljava/lang/String;


# instance fields
.field private dsaClient:Lcom/sprint/dsa/dss/DsaClient;

.field private mContext:Landroid/content/Context;

.field mapPayload:Ljava/util/HashMap;
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

.field private network:I

.field private writeErrMsg:Ljava/lang/String;

.field private writeResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->nai:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->mdn:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->esn:Ljava/lang/String;

    .line 35
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->msid:Ljava/lang/String;

    .line 36
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->meid:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->x_wap_p:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/sprint/dsa/dss/DsaSystem;->reseller:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "cx"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "prov_success"

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeResult:Ljava/lang/String;

    .line 46
    const-string v0, "prov_error"

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeErrMsg:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/dss/DsaSystem;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/sprint/dsa/dss/DsaSystem;->network:I

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/dsa/dss/DsaSystem;)V
    .registers 1
    .parameter

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/sprint/dsa/dss/DsaSystem;->writeInBackgroundPost()V

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/dsa/dss/DsaSystem;)V
    .registers 1
    .parameter

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/sprint/dsa/dss/DsaSystem;->writeDone()V

    return-void
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_NETWORK_NOT_AVAILABLE:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/StateManager;->setBGState(Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;)V

    .line 504
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaSystem;->done()V

    .line 505
    return-void
.end method

.method private isNetworkAvailable(I)Z
    .registers 8
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    .line 479
    const/4 v2, 0x0

    .line 482
    .local v2, info:Landroid/net/NetworkInfo;
    :try_start_2
    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 481
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 483
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_13

    move-result-object v2

    .line 488
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :goto_10
    if-nez v2, :cond_1c

    .line 498
    :cond_12
    :goto_12
    return v3

    .line 484
    :catch_13
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_DSA"

    const-string v5, "DsaSystem.isNetworkAvailable(): error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 492
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1c
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, p1, :cond_12

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_12

    .line 498
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_12
.end method

.method private writeDone()V
    .registers 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeResult:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 428
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "option="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeErrMsg:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 433
    :goto_1d
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    .line 434
    return-void

    .line 430
    :cond_26
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "option="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeResult:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    goto :goto_1d
.end method

.method private writeInBackgroundPost()V
    .registers 3

    .prologue
    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background task - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaSystem;->writePayload()V

    .line 421
    return-void
.end method


# virtual methods
.method public done()V
    .registers 2

    .prologue
    .line 328
    new-instance v0, Lcom/sprint/dsa/dss/DsaSystem$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/dss/DsaSystem$1;-><init>(Lcom/sprint/dsa/dss/DsaSystem;)V

    .line 355
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    return-void
.end method

.method public initSystem()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sprint/dsa/dss/DsaClient;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->mapPayload:Ljava/util/HashMap;

    .line 61
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->query:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 62
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/StateManager;->setBGState(Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;)V

    .line 63
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->getFirstPage()V

    .line 65
    :cond_23
    return-void
.end method

.method public isNetworkAvailable()Z
    .registers 7

    .prologue
    .line 452
    const/16 v0, 0x3e8

    .line 453
    .local v0, NETWORK_CHECK_INTERVAL:I
    const v1, 0xea60

    .line 456
    .local v1, NETWORK_MAX_WAIT:I
    const v3, 0xea60

    .local v3, i:I
    :goto_8
    if-gtz v3, :cond_c

    .line 473
    :goto_a
    const/4 v4, 0x0

    :goto_b
    return v4

    .line 461
    :cond_c
    :try_start_c
    const-string v4, "144.226.247.31"

    invoke-static {v4}, Lcom/sprint/dsa/dss/DsaDiag;->canConnectTo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 463
    const/4 v4, 0x1

    goto :goto_b

    .line 466
    :cond_16
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1e

    .line 456
    add-int/lit16 v3, v3, -0x3e8

    goto :goto_8

    .line 468
    :catch_1e
    move-exception v2

    .line 469
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_DSA"

    const-string v5, "DsaSystem.isNetworkAvailable(): error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setPayload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "value"
    .parameter "code"

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x2b

    const/4 v8, 0x1

    .line 285
    const/4 v4, 0x0

    .line 286
    .local v4, oldValue:Ljava/lang/String;
    const/4 v3, 0x0

    .line 287
    .local v3, newValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 288
    .local v1, err:Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 291
    .local v2, i:I
    :try_start_11
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_2b

    const-string v5, "SprintZone_DSA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "set: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2b
    const-string v5, "000"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 322
    :cond_33
    :goto_33
    return-void

    .line 295
    :cond_34
    if-eq v9, v2, :cond_3e

    if-eq v10, v2, :cond_3e

    sget-object v5, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v5, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    :cond_3e
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_58

    const-string v5, "SprintZone_DSA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_58
    sget-object v5, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v5, v2, p1}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 298
    if-eq v9, v2, :cond_33

    if-eq v10, v2, :cond_33

    .line 299
    sget-object v5, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v5, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_95

    .line 301
    const-string v5, "SprintZone_DSA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "value:Old|Set|New = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 302
    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_95
    if-eq v8, v2, :cond_9b

    const/16 v5, 0x23

    if-ne v5, v2, :cond_a6

    .line 307
    :cond_9b
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a6

    .line 308
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sprint/dsa/dss/DsaClient;->needsPowerRecycle:Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_a6} :catch_e9

    .line 314
    :cond_a6
    :goto_a6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_103

    if-nez v1, :cond_103

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setValue("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") not set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_c7
    :goto_c7
    if-eqz v1, :cond_33

    .line 319
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeErrMsg:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeErrMsg:Ljava/lang/String;

    .line 320
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->writeResult:Ljava/lang/String;

    goto/16 :goto_33

    .line 311
    :catch_e9
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SprintZone_DSA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setPayload:i -"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a6

    .line 316
    .end local v0           #e:Ljava/lang/Exception;
    :cond_103
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_c7

    .line 317
    const-string v5, "SprintZone_DSA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Write Succeeded:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7
.end method

.method public sysPropWrite(Lcom/sprint/dsa/dss/DsaClient;)V
    .registers 4
    .parameter "dsaClient"

    .prologue
    .line 378
    const v1, 0x7f080038

    invoke-virtual {p1, v1}, Lcom/sprint/dsa/dss/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sprint/dsa/dss/DsaClient;->setBusyText(Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/sprint/dsa/dss/DsaSystem$2;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/dss/DsaSystem$2;-><init>(Lcom/sprint/dsa/dss/DsaSystem;)V

    .line 413
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 414
    return-void
.end method

.method public warmInit()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v10, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, factoryDefault:Z
    const/4 v0, 0x0

    .line 81
    .local v0, canConnect:Z
    :try_start_3
    iget-object v11, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_10

    move-result v8

    .line 87
    :goto_9
    sget-boolean v11, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v11, :cond_1b

    sget-object v10, Lcom/sprint/dsa/Util;->TEST_URL:Ljava/lang/String;

    .line 165
    :goto_f
    return-object v10

    .line 82
    :catch_10
    move-exception v3

    .line 83
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "SprintZone_DSA"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 89
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1b
    new-instance v11, Lcom/sprint/internal/SystemProperties;

    iget-object v12, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    .line 90
    new-instance v11, Lcom/sprint/internal/ConnectionManager;

    iget-object v12, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    .line 91
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/sprint/dsa/dss/DsaSystem;->mapPayload:Ljava/util/HashMap;

    .line 93
    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->canConnectToDSA1()Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 96
    const/4 v0, 0x1

    .line 108
    :cond_3b
    :goto_3b
    const/4 v2, -0x1

    .line 111
    .local v2, code:I
    if-eqz v8, :cond_dd

    if-nez v0, :cond_dd

    .line 112
    :try_start_40
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v12, 0x192

    invoke-virtual {v11, v12}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;

    .line 117
    :goto_4a
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->nai:Ljava/lang/String;

    .line 118
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->mdn:Ljava/lang/String;

    .line 119
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->esn:Ljava/lang/String;

    .line 120
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v12, 0x23

    invoke-virtual {v11, v12}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->msid:Ljava/lang/String;

    .line 121
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v12, 0x1e

    invoke-virtual {v11, v12}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->meid:Ljava/lang/String;

    .line 122
    const/16 v2, 0x1a4

    .line 123
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v11, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->reseller:Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_83} :catch_e3

    .line 128
    :goto_83
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->esn:Ljava/lang/String;

    if-nez v11, :cond_8b

    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->meid:Ljava/lang/String;

    if-eqz v11, :cond_8f

    :cond_8b
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;

    if-nez v11, :cond_ff

    .line 129
    :cond_8f
    const-string v11, "SprintZone_DSA"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "DsaSystem.warmInit(): returning null: esn / meid / url = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/sprint/dsa/dss/DsaSystem;->esn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sprint/dsa/dss/DsaSystem;->meid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 98
    .end local v2           #code:I
    :cond_bf
    if-eqz v8, :cond_3b

    if-nez v0, :cond_3b

    .line 100
    :try_start_c3
    const-string v11, "SprintZone_DSA"

    const-string v12, "DsaSystem.warmInit(): requestDataProfile()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Lcom/sprint/internal/ConnectionManager;->requestDataProfile(I)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d1} :catch_d3

    goto/16 :goto_3b

    .line 102
    :catch_d3
    move-exception v3

    .line 103
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "SprintZone_DSA"

    const-string v12, "warminit:requestDataProfile"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 115
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #code:I
    :cond_dd
    :try_start_dd
    const-string v11, "https://deviceselfservice.sprint.com/dsa/"

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e1} :catch_e3

    goto/16 :goto_4a

    .line 124
    :catch_e3
    move-exception v3

    .line 125
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "SprintZone_DSA"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "DsaSystem.warmInit(): getString("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_83

    .line 133
    .end local v3           #e:Ljava/lang/Exception;
    :cond_ff
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, encodedModel:Ljava/lang/String;
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, encodedMake:Ljava/lang/String;
    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, encodedSWVer:Ljava/lang/String;
    const-string v6, ""

    .line 138
    .local v6, encodedReseller:Ljava/lang/String;
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->reseller:Ljava/lang/String;

    if-eqz v11, :cond_11d

    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->reseller:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    :cond_11d
    const/4 v9, 0x0

    .line 142
    .local v9, pi:Landroid/content/pm/PackageInfo;
    :try_start_11e
    iget-object v11, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, p0, Lcom/sprint/dsa/dss/DsaSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_12e} :catch_209

    move-result-object v9

    .line 147
    :goto_12f
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 148
    .local v1, clientVersion:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "esn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sprint/dsa/dss/DsaSystem;->esn:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "meid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sprint/dsa/dss/DsaSystem;->meid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 149
    const-string v12, "nai="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sprint/dsa/dss/DsaSystem;->nai:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "mdn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sprint/dsa/dss/DsaSystem;->mdn:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "msid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sprint/dsa/dss/DsaSystem;->msid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 150
    const-string v12, "lang="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "make="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "model="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 151
    const-string v12, "clientver="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "swver="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 152
    const-string v12, "resellername="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 148
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;

    .line 156
    if-nez v0, :cond_213

    .line 157
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaSystem;->isNetworkAvailable()Z

    move-result v11

    if-nez v11, :cond_213

    if-eqz v8, :cond_213

    .line 161
    sget-object v11, Lcom/sprint/dsa/dss/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v11}, Lcom/sprint/internal/ConnectionManager;->release()V

    goto/16 :goto_f

    .line 143
    .end local v1           #clientVersion:Ljava/lang/String;
    :catch_209
    move-exception v3

    .line 144
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "SprintZone_DSA"

    const-string v12, "DsaSystem.warmInit(): getPackageManager()"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12f

    .line 165
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #clientVersion:Ljava/lang/String;
    :cond_213
    sget-object v10, Lcom/sprint/dsa/dss/DsaSystem;->url:Ljava/lang/String;

    goto/16 :goto_f
.end method

.method public writePayload()V
    .registers 7

    .prologue
    .line 439
    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaSystem;->mapPayload:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 448
    return-void

    .line 439
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaSystem;->mapPayload:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 443
    .local v2, value:Ljava/lang/String;
    :try_start_1f
    invoke-virtual {p0, v2, v1}, Lcom/sprint/dsa/dss/DsaSystem;->setPayload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_a

    .line 444
    :catch_23
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_DSA"

    const-string v5, "writePayload"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method
