.class public Lcom/sprint/w/installer/delivery/DeliveryHub;
.super Landroid/app/Activity;
.source "DeliveryHub.java"


# static fields
.field private static final DIALOG_AUTH_FAIL:I = 0x4

.field private static final DIALOG_AUTH_FAIL_MAX:I = 0x5

.field private static final DIALOG_GENERIC_ERROR:I = 0x2

.field private static final DIALOG_RETRY_QUESTION:I = 0x3

.field private static final DIALOG_SHOW_LOCAL_ERR_MSG:I = 0x1

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field static final REQUEST_SHOW_TERMS_AND_CONDITIONS:I = 0xe2

.field public static final STATUS_ERROR_FUNCTIONALITY_NOT_COMPLETED:I = -0x8

.field static sRetryAttempts:I


# instance fields
.field private incomingUri:Landroid/net/Uri;

.field private log:Lcom/sprint/id/logger/Logger;

.field mBtnGo:Landroid/widget/Button;

.field private mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

.field private mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

.field final mHandler:Landroid/os/Handler;

.field mLocalErrorMsg:Ljava/lang/String;

.field mPwd:Landroid/widget/EditText;

.field private mRequestID:Ljava/lang/String;

.field private mStatus:Lcom/sprint/w/installer/DeliveryState;

.field mStatusExtra:Ljava/lang/String;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private sPinCleared:Z

.field private sProgress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-class v0, Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->log:Lcom/sprint/id/logger/Logger;

    .line 61
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mRequestID:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->incomingUri:Landroid/net/Uri;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sProgress:Landroid/app/ProgressDialog;

    .line 70
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatusExtra:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sPinCleared:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mLocalErrorMsg:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/sprint/w/installer/delivery/DeliveryHub$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$2;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mUpdateResults:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/delivery/DeliveryHub;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sprint/w/installer/delivery/DeliveryHub;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/DeliveryState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/delivery/DeliveryHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setupAuthUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/delivery/DeliveryHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setupPinUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/delivery/DeliveryRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/delivery/DeliveryHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->processRequest()V

    return-void
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/delivery/DeliveryHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->startProcessing()V

    return-void
.end method

.method static synthetic access$702(Lcom/sprint/w/installer/delivery/DeliveryHub;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sPinCleared:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/delivery/DeliveryHub;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    return-void
.end method

.method private downloadDeliveryRequestPack()V
    .registers 4

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.DOWNLOAD_FROM_DELIVERY_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, iDwnSrv:Landroid/content/Intent;
    const-class v1, Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    const-class v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->finish()V

    .line 248
    return-void
.end method

.method private isRetryAllowed()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 581
    sget v1, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_e

    .line 582
    sget v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    .line 583
    const/4 v0, 0x1

    .line 586
    :goto_d
    return v0

    .line 585
    :cond_e
    sput v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    goto :goto_d
.end method

.method private processPackDownload()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    if-nez v0, :cond_a

    .line 234
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showTandC()V

    .line 240
    :goto_9
    return-void

    .line 238
    :cond_a
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->downloadDeliveryRequestPack()V

    goto :goto_9
.end method

.method private processRequest()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 190
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v0, :cond_62

    .line 192
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->sPinCleared:Z

    if-eqz v0, :cond_4c

    .line 193
    :cond_f
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    if-nez v0, :cond_19

    .line 196
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->processRequestRSS()V

    .line 229
    :cond_18
    :goto_18
    return-void

    .line 197
    :cond_19
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    if-ne v0, v2, :cond_23

    .line 202
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->processPackDownload()V

    goto :goto_18

    .line 203
    :cond_23
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 206
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->processRequestJSON()V

    goto :goto_18

    .line 207
    :cond_2e
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 210
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->ERROR_FUNCTIONALITY_NOT_COMPLETED:Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "Manual delivery not completed"

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 211
    :cond_3d
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 214
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->ERROR_FUNCTIONALITY_NOT_COMPLETED:Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "Maintenance delivery not compelted"

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 217
    :cond_4c
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->isRetryAllowed()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 218
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 220
    :cond_5b
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 223
    :cond_62
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->incomingUri:Landroid/net/Uri;

    if-eqz v0, :cond_6a

    .line 224
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->processRequestDeliveryCode()V

    goto :goto_18

    .line 226
    :cond_6a
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "DeliveryHub.processRequest STARTED WITHOUT ANY INPUTS, HOW DID THIS HAPPEN?"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->finish()V

    goto :goto_18
.end method

.method private processRequestDeliveryCode()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 378
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->incomingUri:Landroid/net/Uri;

    if-eqz v1, :cond_9e

    .line 379
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->incomingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mRequestID:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mRequestID:Ljava/lang/String;

    if-eqz v1, :cond_96

    .line 381
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 383
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->isAnyDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 384
    const/4 v8, 0x0

    .line 386
    .local v8, jsonResponse:Ljava/lang/String;
    const v1, 0x7f060102

    :try_start_22
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, url:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 388
    .local v7, json:Lorg/json/JSONObject;
    const-string v1, "m"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getMdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v1, "r"

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mRequestID:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060103

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/sprint/w/installer/util/HttpUtil;->executeHttpPostWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4c} :catch_55

    move-result-object v8

    .line 395
    .end local v0           #url:Ljava/lang/String;
    .end local v7           #json:Lorg/json/JSONObject;
    :goto_4d
    if-nez v8, :cond_63

    .line 396
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_DELIVERY_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v9}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 421
    .end local v8           #jsonResponse:Ljava/lang/String;
    :cond_54
    :goto_54
    return-void

    .line 391
    .restart local v8       #jsonResponse:Ljava/lang/String;
    :catch_55
    move-exception v6

    .line 392
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_DELIVERY_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_4d

    .line 398
    .end local v6           #e:Ljava/lang/Exception;
    :cond_63
    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-direct {v1, v8}, Lcom/sprint/w/installer/delivery/DeliveryRequest;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 399
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-boolean v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    if-eqz v1, :cond_54

    .line 400
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_80

    .line 401
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 403
    :cond_80
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->processRequest()V

    goto :goto_54

    .line 409
    .end local v8           #jsonResponse:Ljava/lang/String;
    :cond_84
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 410
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 412
    :cond_90
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v9}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 416
    :cond_96
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "no deliveryID found"

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 419
    :cond_9e
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "incomingURI null"

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54
.end method

.method private processRequestJSON()V
    .registers 1

    .prologue
    .line 375
    return-void
.end method

.method private processRequestRSS()V
    .registers 18

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    if-eqz v1, :cond_23e

    .line 278
    invoke-static/range {p0 .. p0}, Lcom/sprint/w/installer/util/Util;->isAnyDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_222

    .line 280
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v5, v5, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v6, v6, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/sprint/w/installer/util/HttpUtil;->openUrlWithAuthReponse(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 281
    .local v15, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 282
    .local v9, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 283
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 284
    .local v8, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v8, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 285
    .local v10, doc:Lorg/w3c/dom/Document;
    const-string v1, "channel"

    invoke-interface {v10, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 286
    .local v16, nl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_57

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Expected rss 2.0 \'channel\' tag"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 288
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "Expected rss 2.0 channel tag"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 369
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :goto_56
    return-void

    .line 291
    .restart local v8       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #doc:Lorg/w3c/dom/Document;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    :cond_57
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 292
    .local v12, elem:Lorg/w3c/dom/Element;
    new-instance v1, Lcom/sprint/w/installer/delivery/Catalog;

    invoke-direct {v1}, Lcom/sprint/w/installer/delivery/Catalog;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    const/4 v2, 0x0

    const-string v3, "title"

    invoke-static {v12, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/Catalog;->title:Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    const/4 v2, 0x0

    const-string v3, "description"

    invoke-static {v12, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/Catalog;->description:Ljava/lang/String;

    .line 295
    const-string v1, "item"

    invoke-interface {v12, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 297
    const/4 v14, 0x0

    .local v14, i:I
    :goto_93
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_16b

    .line 298
    new-instance v13, Lcom/sprint/w/installer/delivery/CatalogCard;

    invoke-direct {v13}, Lcom/sprint/w/installer/delivery/CatalogCard;-><init>()V

    .line 299
    .local v13, fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .end local v12           #elem:Lorg/w3c/dom/Element;
    check-cast v12, Lorg/w3c/dom/Element;

    .line 300
    .restart local v12       #elem:Lorg/w3c/dom/Element;
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "id"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    .line 301
    iget-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    if-nez v1, :cond_bd

    .line 302
    const/4 v1, 0x0

    const-string v2, "guid"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    .line 304
    :cond_bd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v2, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->isApprovedID(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e6

    .line 305
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

    iget-object v2, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    :try_end_d3
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_e .. :try_end_d3} :catch_d4
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_d3} :catch_153
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_d3} :catch_1b1
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_d3} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_d3} :catch_210

    goto :goto_56

    .line 334
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v12           #elem:Lorg/w3c/dom/Element;
    .end local v13           #fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    .end local v14           #i:I
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :catch_d4
    move-exception v7

    .line 335
    .local v7, ae:Lorg/apache/http/auth/AuthenticationException;
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_1f7

    .line 336
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_56

    .line 308
    .end local v7           #ae:Lorg/apache/http/auth/AuthenticationException;
    .restart local v8       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #doc:Lorg/w3c/dom/Document;
    .restart local v12       #elem:Lorg/w3c/dom/Element;
    .restart local v13       #fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    .restart local v14       #i:I
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    :cond_e6
    const/4 v1, 0x0

    :try_start_e7
    const-string v2, "title"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->title:Ljava/lang/String;

    .line 309
    const/4 v1, 0x0

    const-string v2, "pubDate"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->date:Ljava/lang/String;

    .line 310
    const/4 v1, 0x0

    const-string v2, "description"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->description:Ljava/lang/String;

    .line 311
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "icon"

    const-string v3, "url"

    invoke-static {v12, v1, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->iconUrl:Ljava/lang/String;

    .line 312
    const/4 v1, 0x0

    const-string v2, "link"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->link:Ljava/lang/String;

    .line 313
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "version"

    const-string v3, "name"

    invoke-static {v12, v1, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->version:Ljava/lang/String;
    :try_end_122
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_e7 .. :try_end_122} :catch_d4
    .catch Lorg/apache/http/HttpException; {:try_start_e7 .. :try_end_122} :catch_153
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e7 .. :try_end_122} :catch_1b1
    .catch Lorg/xml/sax/SAXException; {:try_start_e7 .. :try_end_122} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_122} :catch_210

    .line 315
    :try_start_122
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "version"

    const-string v3, "code"

    invoke-static {v12, v1, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->versionCode:I
    :try_end_132
    .catch Ljava/lang/NumberFormatException; {:try_start_122 .. :try_end_132} :catch_148
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_122 .. :try_end_132} :catch_d4
    .catch Lorg/apache/http/HttpException; {:try_start_122 .. :try_end_132} :catch_153
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_122 .. :try_end_132} :catch_1b1
    .catch Lorg/xml/sax/SAXException; {:try_start_122 .. :try_end_132} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_132} :catch_210

    .line 319
    :goto_132
    const/4 v1, 0x0

    :try_start_133
    const-string v2, "terms"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->terms:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_93

    .line 316
    :catch_148
    move-exception v11

    .line 317
    .local v11, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "version code is not a number"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_152
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_133 .. :try_end_152} :catch_d4
    .catch Lorg/apache/http/HttpException; {:try_start_133 .. :try_end_152} :catch_153
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_133 .. :try_end_152} :catch_1b1
    .catch Lorg/xml/sax/SAXException; {:try_start_133 .. :try_end_152} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_152} :catch_210

    goto :goto_132

    .line 340
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #elem:Lorg/w3c/dom/Element;
    .end local v13           #fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    .end local v14           #i:I
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :catch_153
    move-exception v11

    .line 341
    .local v11, e:Lorg/apache/http/HttpException;
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_202

    .line 342
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Lorg/apache/http/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 347
    :goto_166
    invoke-virtual {v11}, Lorg/apache/http/HttpException;->printStackTrace()V

    goto/16 :goto_56

    .line 322
    .end local v11           #e:Lorg/apache/http/HttpException;
    .restart local v8       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #doc:Lorg/w3c/dom/Document;
    .restart local v12       #elem:Lorg/w3c/dom/Element;
    .restart local v14       #i:I
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    :cond_16b
    :try_start_16b
    new-instance v14, Landroid/content/Intent;

    .end local v14           #i:I
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v14, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c3

    .line 324
    const-class v1, Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 325
    const-class v1, Lcom/sprint/w/installer/delivery/CatalogCard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    const-class v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    :goto_1a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sprint/w/installer/delivery/DeliveryHub;->startActivity(Landroid/content/Intent;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->finish()V
    :try_end_1af
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_16b .. :try_end_1af} :catch_d4
    .catch Lorg/apache/http/HttpException; {:try_start_16b .. :try_end_1af} :catch_153
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_16b .. :try_end_1af} :catch_1b1
    .catch Lorg/xml/sax/SAXException; {:try_start_16b .. :try_end_1af} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_1af} :catch_210

    goto/16 :goto_56

    .line 348
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v12           #elem:Lorg/w3c/dom/Element;
    .end local v14           #i:Landroid/content/Intent;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :catch_1b1
    move-exception v11

    .line 349
    .local v11, e:Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 350
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_56

    .line 328
    .end local v11           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v8       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #doc:Lorg/w3c/dom/Document;
    .restart local v12       #elem:Lorg/w3c/dom/Element;
    .restart local v14       #i:Landroid/content/Intent;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    :cond_1c3
    :try_start_1c3
    const-class v1, Lcom/sprint/w/installer/delivery/CatalogViewer;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    const-class v1, Lcom/sprint/w/installer/delivery/Catalog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    const-class v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1e4
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1c3 .. :try_end_1e4} :catch_d4
    .catch Lorg/apache/http/HttpException; {:try_start_1c3 .. :try_end_1e4} :catch_153
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1c3 .. :try_end_1e4} :catch_1b1
    .catch Lorg/xml/sax/SAXException; {:try_start_1c3 .. :try_end_1e4} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1e4} :catch_210

    goto :goto_1a7

    .line 351
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v12           #elem:Lorg/w3c/dom/Element;
    .end local v14           #i:Landroid/content/Intent;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :catch_1e5
    move-exception v11

    .line 352
    .local v11, e:Lorg/xml/sax/SAXException;
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 353
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_56

    .line 338
    .end local v11           #e:Lorg/xml/sax/SAXException;
    .restart local v7       #ae:Lorg/apache/http/auth/AuthenticationException;
    :cond_1f7
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_56

    .line 344
    .end local v7           #ae:Lorg/apache/http/auth/AuthenticationException;
    .local v11, e:Lorg/apache/http/HttpException;
    :cond_202
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Lorg/apache/http/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_166

    .line 354
    .end local v11           #e:Lorg/apache/http/HttpException;
    :catch_210
    move-exception v11

    .line 355
    .local v11, e:Ljava/io/IOException;
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 356
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_56

    .line 360
    .end local v11           #e:Ljava/io/IOException;
    :cond_222
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_233

    .line 361
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_56

    .line 363
    :cond_233
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_56

    .line 367
    :cond_23e
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "RSS url not found"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_56
.end method

.method private setTextHint(ILjava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "valIn"

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 511
    return-void
.end method

.method private setTextViewText(ILjava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "valIn"

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    return-void
.end method

.method private setViewVisible(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    return-void
.end method

.method private setupAuthUI()V
    .registers 5

    .prologue
    const v3, 0x7f0c0019

    const v2, 0x7f0c0018

    const v1, 0x7f0c0017

    .line 439
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationHelp()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 440
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationInstructions()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 441
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setTextViewText(ILjava/lang/String;)V

    .line 443
    :cond_20
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationLabelUser()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 444
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setTextHint(ILjava/lang/String;)V

    .line 446
    :cond_2f
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationLabelPassword()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 447
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setTextHint(ILjava/lang/String;)V

    .line 450
    :cond_3e
    const v0, 0x7f0c0016

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 451
    invoke-direct {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 452
    invoke-direct {p0, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 453
    invoke-direct {p0, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 454
    const v0, 0x7f0c001a

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 455
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 456
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mBtnGo:Landroid/widget/Button;

    .line 457
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mBtnGo:Landroid/widget/Button;

    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryHub$5;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$5;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    return-void
.end method

.method private setupPinUI()V
    .registers 5

    .prologue
    const v3, 0x7f0c001b

    const v1, 0x7f0c0017

    const v2, 0x7f0c0019

    .line 478
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationInstructions()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 479
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setTextViewText(ILjava/lang/String;)V

    .line 481
    :cond_18
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationLabelPassword()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 482
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setTextHint(ILjava/lang/String;)V

    .line 486
    :goto_27
    const v0, 0x7f0c0016

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 487
    invoke-direct {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 488
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-direct {p0, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 490
    const v0, 0x7f0c001a

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 491
    invoke-direct {p0, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setViewVisible(I)V

    .line 492
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mBtnGo:Landroid/widget/Button;

    .line 493
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mBtnGo:Landroid/widget/Button;

    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryHub$6;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$6;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    return-void

    .line 484
    :cond_5b
    const-string v0, "PIN:"

    invoke-direct {p0, v2, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setTextHint(ILjava/lang/String;)V

    goto :goto_27
.end method

.method private showTandC()V
    .registers 4

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, i:Landroid/content/Intent;
    const-string v1, "terms"

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const/16 v1, 0xe2

    invoke-virtual {p0, v0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method

.method private startProcessing()V
    .registers 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryHub$3;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$3;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method

.method private statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    .registers 5
    .parameter "statusIn"
    .parameter "extra"
    .parameter "closeTransaction"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;

    .line 172
    iput-object p2, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatusExtra:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mRequestID:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 175
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mRequestID:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 177
    :cond_d
    return-void
.end method


# virtual methods
.method protected handleNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->incomingUri:Landroid/net/Uri;

    .line 109
    :try_start_6
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 110
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 111
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mRequestID:Ljava/lang/String;

    .line 112
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_37

    .line 118
    :cond_33
    :goto_33
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->startProcessing()V

    .line 119
    return-void

    .line 114
    :catch_37
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeliveryHub Exception getParcelable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_33
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 260
    const/4 v0, -0x1

    if-ne v0, p2, :cond_c

    .line 261
    packed-switch p1, :pswitch_data_26

    .line 274
    :goto_7
    return-void

    .line 263
    :pswitch_8
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->downloadDeliveryRequestPack()V

    goto :goto_7

    .line 267
    :cond_c
    packed-switch p1, :pswitch_data_2c

    goto :goto_7

    .line 269
    :pswitch_10
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->CANCEL_TC:Lcom/sprint/w/installer/DeliveryState;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v3, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->finish()V

    goto :goto_7

    .line 261
    :pswitch_data_26
    .packed-switch 0xe2
        :pswitch_8
    .end packed-switch

    .line 267
    :pswitch_data_2c
    .packed-switch 0xe2
        :pswitch_10
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v1, 0x0

    sput v1, Lcom/sprint/w/installer/delivery/DeliveryHub;->sRetryAttempts:I

    .line 84
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->setContentView(I)V

    .line 85
    const v1, 0x7f0c0019

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mPwd:Landroid/widget/EditText;

    .line 86
    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 87
    .local v0, cb:Landroid/widget/CheckBox;
    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryHub$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$1;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->handleNewIntent(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v2, 0x7f0600ea

    const v3, 0x104000a

    .line 525
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 527
    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 528
    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryHub$7;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$7;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    packed-switch p1, :pswitch_data_70

    .line 569
    const/4 v1, 0x0

    .line 571
    :goto_21
    return-object v1

    .line 536
    :pswitch_22
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mLocalErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 571
    :goto_27
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_21

    .line 539
    :pswitch_2c
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_27

    .line 542
    :pswitch_34
    const v1, 0x7f0600e7

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 543
    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryHub$8;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$8;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_27

    .line 550
    :pswitch_47
    const v1, 0x7f0600e8

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_27

    .line 553
    :pswitch_52
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 554
    const v1, 0x7f060047

    new-instance v2, Lcom/sprint/w/installer/delivery/DeliveryHub$9;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$9;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryHub$10;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$10;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 566
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_27

    .line 534
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2c
        :pswitch_52
        :pswitch_34
        :pswitch_47
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->handleNewIntent(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public showProgress()V
    .registers 2

    .prologue
    .line 424
    new-instance v0, Lcom/sprint/w/installer/delivery/DeliveryHub$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/DeliveryHub$4;-><init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method
