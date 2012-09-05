.class public Lcom/sprint/w/installer/DownloadService$DownloaderThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloaderThread"
.end annotation


# instance fields
.field private mAccessViaAuth:Z

.field mCanceled:Z

.field mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mDefault:Z

.field mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

.field private mFromUrl:Z

.field mId:Ljava/lang/String;

.field mInputStream:Ljava/io/InputStream;

.field private mIsPsiCall:Z

.field mLength:I

.field mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/w/installer/DownloadService$StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field mName:Ljava/lang/String;

.field mPack:Lcom/sprint/w/installer/psi/ServicePack;

.field public mPackFilePath:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mPowerManager:Landroid/os/PowerManager;

.field mProgress:I

.field mProgressBytes:J

.field private mRetry:Z

.field mStartId:I

.field mStatus:I

.field mUrl:Landroid/net/Uri;

.field mUserId:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/sprint/w/installer/DownloadService;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/DownloadService;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter "url"
    .parameter "name"
    .parameter "startId"
    .parameter "userId"
    .parameter "password"

    .prologue
    const/4 v5, 0x1

    .line 297
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;-><init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 298
    iput-object p2, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    .line 299
    iput-object p5, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUserId:Ljava/lang/String;

    .line 300
    iput-object p6, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPassword:Ljava/lang/String;

    .line 301
    iput-boolean v5, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    .line 302
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/DownloadService;Lcom/sprint/w/installer/delivery/DeliveryRequest;I)V
    .registers 12
    .parameter
    .parameter "dr"
    .parameter "startId"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 306
    const/4 v2, 0x0

    iget-object v3, p2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;-><init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 307
    iget-object v0, p2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    .line 308
    iget-object v0, p2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUserId:Ljava/lang/String;

    .line 309
    iget-object v0, p2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPassword:Ljava/lang/String;

    .line 310
    iput-boolean v7, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    .line 311
    #setter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {p1, v7}, Lcom/sprint/w/installer/DownloadService;->access$002(Lcom/sprint/w/installer/DownloadService;Z)Z

    .line 312
    iget-object v0, p2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    .line 313
    iput-object p2, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 314
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 12
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "startId"
    .parameter "isPsiCall"
    .parameter "isDefault"

    .prologue
    const v3, 0x1d4c0

    const/4 v4, 0x1

    .line 275
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mListeners:Ljava/util/Vector;

    .line 267
    iput-boolean v4, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mRetry:Z

    .line 277
    iput-object p2, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    .line 278
    iput-object p3, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    .line 279
    iput p4, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mStartId:I

    .line 280
    iput-boolean p6, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mDefault:Z

    .line 281
    iput-boolean p5, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mIsPsiCall:Z

    .line 282
    iget-boolean v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mIsPsiCall:Z

    invoke-static {v1}, Lcom/sprint/w/installer/util/HttpUtil;->isAuthDownload(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mAccessViaAuth:Z

    .line 283
    iget-boolean v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mAccessViaAuth:Z

    if-eqz v1, :cond_73

    .line 284
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->getAuthHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 292
    :goto_41
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/sprint/w/installer/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPowerManager:Landroid/os/PowerManager;

    .line 293
    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPowerManager:Landroid/os/PowerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/id/logger/Logger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 294
    return-void

    .line 286
    :cond_73
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 287
    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 288
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 289
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_41
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/DownloadService$DownloaderThread;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    return v0
.end method

.method private executeDownload(Lorg/apache/http/client/methods/HttpGet;)V
    .registers 30
    .parameter "httpGetRequest"

    .prologue
    .line 412
    const/16 v16, 0x0

    .line 413
    .local v16, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 415
    .local v10, bos:Ljava/io/BufferedOutputStream;
    const/16 v26, 0x0

    .line 417
    .local v26, resp:Lorg/apache/http/HttpResponse;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_c9
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_5 .. :try_end_e} :catch_20

    move-result-object v26

    .line 422
    :goto_f
    if-nez v26, :cond_d3

    .line 423
    :try_start_11
    new-instance v2, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v6, "HttpResponse was null"

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_11 .. :try_end_20} :catch_20

    .line 549
    :catch_20
    move-exception v14

    .line 550
    .local v14, e:Lcom/sprint/w/installer/DownloadServiceException;
    :goto_21
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while downloading a pack. CODE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/sprint/w/installer/DownloadServiceException;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    :try_start_3f
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_495

    .line 556
    :goto_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    if-eqz v2, :cond_87

    .line 557
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 558
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v3}, Lcom/sprint/w/installer/DownloadService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 561
    :cond_87
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mRetry:Z

    if-eqz v2, :cond_46b

    .line 562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mRetry:Z

    .line 563
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mStatus:I

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    const-string v6, "Retrying"

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 567
    :cond_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    iget-object v2, v2, Lcom/sprint/w/installer/DownloadService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sprint/w/installer/DownloadService$DownloaderThread$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread$1;-><init>(Lcom/sprint/w/installer/DownloadService$DownloaderThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    invoke-direct/range {p0 .. p1}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->executeDownload(Lorg/apache/http/client/methods/HttpGet;)V

    .line 614
    .end local v14           #e:Lcom/sprint/w/installer/DownloadServiceException;
    :goto_c8
    return-void

    .line 418
    :catch_c9
    move-exception v14

    .line 419
    .local v14, e:Ljava/lang/Exception;
    :try_start_ca
    sget-object v2, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->throwDownloadServiceException(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 426
    .end local v14           #e:Ljava/lang/Exception;
    :cond_d3
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 428
    .local v24, psiStatusCodeChar:C
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3a0

    .line 429
    const-string v2, "content-length"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 430
    .local v21, lenh:Lorg/apache/http/Header;
    const/16 v20, 0x0

    .line 431
    .local v20, len:I
    if-eqz v21, :cond_126

    .line 432
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .end local v20           #len:I
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mLength:I

    .line 433
    .restart local v20       #len:I
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SP size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 436
    :cond_126
    move/from16 v0, v20

    int-to-long v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->findDownloadTarget(J)Z

    move-result v2

    if-nez v2, :cond_18a

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    const v7, 0x7f0600a4

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_176

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/DeliveryState;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 441
    :cond_176
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-nez v2, :cond_185

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/PsiCode;

    invoke-static {v2, v3}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    .line 444
    :cond_185
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V
    :try_end_188
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_ca .. :try_end_188} :catch_20

    goto/16 :goto_c8

    .line 448
    :cond_18a
    :try_start_18a
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_199} :catch_24b
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_18a .. :try_end_199} :catch_20

    .end local v16           #is:Ljava/io/InputStream;
    .local v17, is:Ljava/io/InputStream;
    :try_start_199
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mInputStream:Ljava/io/InputStream;
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_19f} :catch_49f
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_199 .. :try_end_19f} :catch_49a

    move-object/from16 v16, v17

    .line 453
    .end local v17           #is:Ljava/io/InputStream;
    .restart local v16       #is:Ljava/io/InputStream;
    :goto_1a1
    const/4 v15, 0x0

    .line 455
    .local v15, fos:Ljava/io/FileOutputStream;
    :try_start_1a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_255

    .line 456
    new-instance v15, Ljava/io/FileOutputStream;

    .end local v15           #fos:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1bd
    .catch Ljava/io/FileNotFoundException; {:try_start_1a2 .. :try_end_1bd} :catch_264
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_1a2 .. :try_end_1bd} :catch_20

    .line 464
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    :goto_1bd
    :try_start_1bd
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1c2
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_1bd .. :try_end_1c2} :catch_20

    .line 465
    .end local v10           #bos:Ljava/io/BufferedOutputStream;
    .local v11, bos:Ljava/io/BufferedOutputStream;
    const v2, 0xc800

    :try_start_1c5
    new-array v12, v2, [B
    :try_end_1c7
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_1c5 .. :try_end_1c7} :catch_247

    .line 468
    .local v12, buffer:[B
    const/4 v13, 0x0

    .line 469
    .local v13, complete:I
    const-wide/16 v18, 0x0

    .line 472
    .local v18, lastUpdate:J
    :cond_1ca
    :goto_1ca
    :try_start_1ca
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v2, :cond_23b

    const/4 v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1d6} :catch_233
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_1ca .. :try_end_1d6} :catch_247

    move-result v25

    .local v25, r:I
    move/from16 v0, v25

    if-eq v2, v0, :cond_23b

    .line 474
    const/4 v2, 0x0

    :try_start_1dc
    move/from16 v0, v25

    invoke-virtual {v11, v12, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1e1
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1e1} :catch_26d
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_1dc .. :try_end_1e1} :catch_247

    .line 478
    add-int v13, v13, v25

    .line 479
    const-wide/high16 v2, 0x4059

    int-to-double v6, v13

    mul-double/2addr v2, v6

    move/from16 v0, v20

    int-to-double v6, v0

    div-double/2addr v2, v6

    double-to-int v5, v2

    .line 480
    .local v5, percentComplete:I
    :try_start_1ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 481
    .local v22, now:J
    const-wide/16 v2, 0x3e8

    add-long v2, v2, v18

    cmp-long v2, v2, v22

    if-gez v2, :cond_1ca

    .line 484
    move-wide/from16 v18, v22

    .line 485
    int-to-long v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mProgressBytes:J

    .line 486
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mProgress:I

    .line 487
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v2, :cond_1ca

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-eqz v8, :cond_276

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_22b
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mDefault:Z

    invoke-virtual/range {v2 .. v9}, Lcom/sprint/w/installer/DownloadService;->updateOngoingNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Z)V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_232} :catch_233
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_1ec .. :try_end_232} :catch_247

    goto :goto_1ca

    .line 492
    .end local v5           #percentComplete:I
    .end local v22           #now:J
    .end local v25           #r:I
    :catch_233
    move-exception v14

    .line 493
    .local v14, e:Ljava/io/IOException;
    :try_start_234
    sget-object v2, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->throwDownloadServiceException(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    .line 497
    .end local v14           #e:Ljava/io/IOException;
    :cond_23b
    const/16 v27, 0x0

    .line 498
    .local v27, testing:Z
    if-eqz v27, :cond_278

    .line 499
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Testing Retry logic. Please remove me!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_247
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_234 .. :try_end_247} :catch_247

    .line 549
    .end local v12           #buffer:[B
    .end local v13           #complete:I
    .end local v18           #lastUpdate:J
    .end local v27           #testing:Z
    :catch_247
    move-exception v14

    move-object v10, v11

    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #bos:Ljava/io/BufferedOutputStream;
    goto/16 :goto_21

    .line 449
    .end local v15           #fos:Ljava/io/FileOutputStream;
    :catch_24b
    move-exception v14

    .line 450
    .local v14, e:Ljava/lang/Exception;
    :goto_24c
    :try_start_24c
    sget-object v2, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->throwDownloadServiceException(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V
    :try_end_253
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_24c .. :try_end_253} :catch_20

    goto/16 :goto_1a1

    .line 458
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    :cond_255
    :try_start_255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sprint/w/installer/DownloadService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_261
    .catch Ljava/io/FileNotFoundException; {:try_start_255 .. :try_end_261} :catch_264
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_255 .. :try_end_261} :catch_20

    move-result-object v15

    goto/16 :goto_1bd

    .line 460
    .end local v15           #fos:Ljava/io/FileOutputStream;
    :catch_264
    move-exception v14

    .line 461
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_265
    new-instance v2, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->OC:Lcom/sprint/w/installer/PsiCode;

    invoke-direct {v2, v3, v14}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    throw v2
    :try_end_26d
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_265 .. :try_end_26d} :catch_20

    .line 475
    .end local v10           #bos:Ljava/io/BufferedOutputStream;
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    .restart local v12       #buffer:[B
    .restart local v13       #complete:I
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #lastUpdate:J
    .restart local v25       #r:I
    :catch_26d
    move-exception v14

    .line 476
    .local v14, e:Ljava/io/IOException;
    :try_start_26e
    new-instance v2, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->OC:Lcom/sprint/w/installer/PsiCode;

    invoke-direct {v2, v3, v14}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    throw v2
    :try_end_276
    .catch Ljava/io/IOException; {:try_start_26e .. :try_end_276} :catch_233
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_26e .. :try_end_276} :catch_247

    .line 488
    .end local v14           #e:Ljava/io/IOException;
    .restart local v5       #percentComplete:I
    .restart local v22       #now:J
    :cond_276
    const/4 v8, 0x0

    goto :goto_22b

    .line 502
    .end local v5           #percentComplete:I
    .end local v22           #now:J
    .end local v25           #r:I
    .restart local v27       #testing:Z
    :cond_278
    :try_start_278
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 503
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 504
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v2, :cond_2f7

    .line 505
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_287} :catch_2fb
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_278 .. :try_end_287} :catch_247

    .line 513
    :goto_287
    :try_start_287
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download done; canceled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v2, :cond_304

    if-lez v20, :cond_304

    move/from16 v0, v20

    if-eq v13, v0, :cond_304

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v6}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0600a8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_2ed

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->FAIL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    const-string v6, "Pack file shorter than expected"

    const/4 v7, 0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 520
    :cond_2ed
    new-instance v2, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->JAR_SIZE_MISMATCH:Lcom/sprint/w/installer/PsiCode;

    const-string v4, "Pack file shorter than expected"

    invoke-direct {v2, v3, v4}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/String;)V

    throw v2
    :try_end_2f7
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_287 .. :try_end_2f7} :catch_247

    .line 507
    :cond_2f7
    :try_start_2f7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2fa
    .catch Ljava/io/IOException; {:try_start_2f7 .. :try_end_2fa} :catch_2fb
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_2f7 .. :try_end_2fa} :catch_247

    goto :goto_287

    .line 509
    :catch_2fb
    move-exception v14

    .line 510
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_2fc
    new-instance v2, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->OC:Lcom/sprint/w/installer/PsiCode;

    invoke-direct {v2, v3, v14}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    throw v2

    .line 522
    .end local v14           #e:Ljava/io/IOException;
    :cond_304
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mStatus:I

    .line 523
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v2, :cond_358

    .line 524
    sget-object v2, Lcom/sprint/w/installer/DownloadService;->sReadyToInstallDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-eqz v2, :cond_39e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_338
    invoke-virtual {v3, v4, v6, v7, v2}, Lcom/sprint/w/installer/DownloadService;->notifyComplete(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;ZLjava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_358

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->SUCCESS_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    :try_end_358
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_2fc .. :try_end_358} :catch_247

    :cond_358
    move-object v10, v11

    .line 603
    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .end local v12           #buffer:[B
    .end local v13           #complete:I
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v18           #lastUpdate:J
    .end local v20           #len:I
    .end local v21           #lenh:Lorg/apache/http/Header;
    .end local v24           #psiStatusCodeChar:C
    .end local v27           #testing:Z
    .restart local v10       #bos:Ljava/io/BufferedOutputStream;
    :cond_359
    :goto_359
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-eqz v2, :cond_399

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/DownloadService;->notifyCanceled(Ljava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Notifying server of canceled download..."

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->USER_CANCELLED:Lcom/sprint/w/installer/PsiCode;

    invoke-static {v2, v3}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_399

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->CANCEL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 612
    :cond_399
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V

    goto/16 :goto_c8

    .line 525
    .end local v10           #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    .restart local v12       #buffer:[B
    .restart local v13       #complete:I
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #lastUpdate:J
    .restart local v20       #len:I
    .restart local v21       #lenh:Lorg/apache/http/Header;
    .restart local v24       #psiStatusCodeChar:C
    .restart local v27       #testing:Z
    :cond_39e
    const/4 v2, 0x0

    goto :goto_338

    .line 530
    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .end local v12           #buffer:[B
    .end local v13           #complete:I
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v18           #lastUpdate:J
    .end local v20           #len:I
    .end local v21           #lenh:Lorg/apache/http/Header;
    .end local v27           #testing:Z
    .restart local v10       #bos:Ljava/io/BufferedOutputStream;
    :cond_3a0
    :try_start_3a0
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_406

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    const v7, 0x7f0600a5

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_3f2

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    const-string v6, "403 pack"

    const/4 v7, 0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 535
    :cond_3f2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-nez v2, :cond_401

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->FORBIDDEN:Lcom/sprint/w/installer/PsiCode;

    invoke-static {v2, v3}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    .line 538
    :cond_401
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V

    goto/16 :goto_359

    .line 539
    :cond_406
    const/16 v2, 0x34

    move/from16 v0, v24

    if-eq v0, v2, :cond_412

    const/16 v2, 0x35

    move/from16 v0, v24

    if-ne v0, v2, :cond_359

    .line 540
    :cond_412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    const v7, 0x7f0600a6

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v2

    if-eqz v2, :cond_457

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->FAIL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 544
    :cond_457
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-nez v2, :cond_466

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    sget-object v3, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    invoke-static {v2, v3}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    .line 547
    :cond_466
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V
    :try_end_469
    .catch Lcom/sprint/w/installer/DownloadServiceException; {:try_start_3a0 .. :try_end_469} :catch_20

    goto/16 :goto_359

    .line 579
    .end local v24           #psiStatusCodeChar:C
    .local v14, e:Lcom/sprint/w/installer/DownloadServiceException;
    :cond_46b
    :try_start_46b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_46e
    .catch Ljava/lang/Exception; {:try_start_46b .. :try_end_46e} :catch_498

    .line 583
    :goto_46e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v2, :cond_484

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_484
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mStatus:I

    .line 588
    new-instance v2, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;-><init>(Lcom/sprint/w/installer/DownloadService$DownloaderThread;Lcom/sprint/w/installer/DownloadServiceException;)V

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->start()V

    goto/16 :goto_359

    .line 553
    :catch_495
    move-exception v2

    goto/16 :goto_42

    .line 580
    :catch_498
    move-exception v2

    goto :goto_46e

    .line 549
    .end local v14           #e:Lcom/sprint/w/installer/DownloadServiceException;
    .end local v16           #is:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/InputStream;
    .restart local v20       #len:I
    .restart local v21       #lenh:Lorg/apache/http/Header;
    .restart local v24       #psiStatusCodeChar:C
    :catch_49a
    move-exception v14

    move-object/from16 v16, v17

    .end local v17           #is:Ljava/io/InputStream;
    .restart local v16       #is:Ljava/io/InputStream;
    goto/16 :goto_21

    .line 449
    .end local v16           #is:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/InputStream;
    :catch_49f
    move-exception v14

    move-object/from16 v16, v17

    .end local v17           #is:Ljava/io/InputStream;
    .restart local v16       #is:Ljava/io/InputStream;
    goto/16 :goto_24c
.end method

.method private findDownloadTarget(J)Z
    .registers 15
    .parameter "length"

    .prologue
    .line 635
    iget-object v8, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 636
    const/4 v8, 0x0

    .line 688
    :goto_5
    return v8

    .line 638
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".spk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    .line 639
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-lez v8, :cond_16d

    .line 643
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 644
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v9}, Lcom/sprint/w/installer/DownloadService;->getFilesDir()Ljava/io/File;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 646
    const/4 v6, 0x0

    .line 647
    .local v6, sfs:Landroid/os/StatFs;
    const/4 v5, 0x0

    .line 650
    .local v5, sdGood:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 651
    .local v7, state:Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 652
    new-instance v6, Landroid/os/StatFs;

    .end local v6           #sfs:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 653
    .restart local v6       #sfs:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long v0, v8, v10

    .line 654
    .local v0, avail:J
    cmp-long v8, v0, p1

    if-lez v8, :cond_13e

    const/4 v5, 0x1

    .line 655
    :goto_96
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SD card available: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 662
    .end local v0           #avail:J
    :goto_b0
    new-instance v6, Landroid/os/StatFs;

    .end local v6           #sfs:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 663
    .restart local v6       #sfs:Landroid/os/StatFs;
    const-wide/16 v8, 0x2

    div-long v8, p1, v8

    add-long v3, p1, v8

    .line 666
    .local v3, neededInternal:J
    if-nez v5, :cond_c6

    .line 667
    add-long/2addr v3, p1

    .line 671
    :cond_c6
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long v0, v8, v10

    .line 672
    .restart local v0       #avail:J
    cmp-long v8, v0, v3

    if-lez v8, :cond_15d

    const/4 v2, 0x1

    .line 673
    .local v2, internalGood:Z
    :goto_d7
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Internal available: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Needed internal: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 676
    if-eqz v2, :cond_16a

    .line 677
    if-eqz v5, :cond_160

    .line 678
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPackFilePath:Ljava/lang/String;

    .line 679
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Using SD"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 683
    :goto_13b
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 654
    .end local v2           #internalGood:Z
    .end local v3           #neededInternal:J
    :cond_13e
    const/4 v5, 0x0

    goto/16 :goto_96

    .line 659
    .end local v0           #avail:J
    :cond_141
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SD card not in usable state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_b0

    .line 672
    .restart local v0       #avail:J
    .restart local v3       #neededInternal:J
    :cond_15d
    const/4 v2, 0x0

    goto/16 :goto_d7

    .line 681
    .restart local v2       #internalGood:Z
    :cond_160
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Using internal"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_13b

    .line 685
    :cond_16a
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 687
    .end local v0           #avail:J
    .end local v2           #internalGood:Z
    .end local v3           #neededInternal:J
    .end local v5           #sdGood:Z
    .end local v6           #sfs:Landroid/os/StatFs;
    .end local v7           #state:Ljava/lang/String;
    :cond_16d
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Content-Length was 0, defaulting to TRUE"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 688
    const/4 v8, 0x1

    goto/16 :goto_5
.end method

.method private finishSelf()V
    .registers 3

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v0, :cond_b

    .line 319
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_b
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 322
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 324
    :cond_18
    sget-object v0, Lcom/sprint/w/installer/DownloadService;->sAllDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 325
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    iget v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mStartId:I

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/DownloadService;->stopSelf(I)V

    .line 327
    :cond_27
    return-void
.end method

.method private hasLostSevice()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 625
    iget-boolean v2, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mIsPsiCall:Z

    if-eqz v2, :cond_15

    .line 626
    iget-object v2, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sprint/w/installer/util/Util;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 628
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 626
    goto :goto_12

    .line 628
    :cond_15
    iget-object v2, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sprint/w/installer/util/Util;->isAnyDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method private throwDownloadServiceException(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "code"
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/w/installer/DownloadServiceException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->hasLostSevice()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 618
    new-instance v0, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->LOST_SERVICE:Lcom/sprint/w/installer/PsiCode;

    invoke-direct {v0, v1, p2}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    throw v0

    .line 620
    :cond_e
    new-instance v0, Lcom/sprint/w/installer/DownloadServiceException;

    invoke-direct {v0, p1, p2}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 331
    const/4 v13, 0x0

    .line 332
    .local v13, httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 333
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 334
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mStatus:I

    .line 335
    new-instance v15, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v15}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 336
    .local v15, sp:Lcom/sprint/w/installer/psi/ServicePack;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mDefault:Z

    invoke-virtual {v15, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-eqz v7, :cond_7c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_50
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mDefault:Z

    invoke-virtual/range {v1 .. v8}, Lcom/sprint/w/installer/DownloadService;->updateOngoingNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Z)V

    .line 341
    :try_start_57
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-nez v1, :cond_60

    .line 342
    invoke-static {v15}, Lcom/sprint/w/installer/psi/PsiContentManager;->prepareForDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_7e

    .line 352
    :cond_60
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-eqz v1, :cond_96

    .line 353
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "Notifying server of canceled download..."

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    sget-object v2, Lcom/sprint/w/installer/PsiCode;->USER_CANCELLED:Lcom/sprint/w/installer/PsiCode;

    invoke-static {v1, v2}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V

    .line 409
    :goto_7b
    return-void

    .line 339
    :cond_7c
    const/4 v7, 0x0

    goto :goto_50

    .line 344
    :catch_7e
    move-exception v12

    .line 346
    .local v12, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V

    goto :goto_7b

    .line 360
    .end local v12           #e:Ljava/lang/Exception;
    :cond_96
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-nez v1, :cond_ce

    invoke-virtual {v15}, Lcom/sprint/w/installer/psi/ServicePack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ce

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    const v5, 0x7f0600a7

    invoke-virtual {v4, v5}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V

    goto :goto_7b

    .line 365
    :cond_ce
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mAccessViaAuth:Z

    if-eqz v1, :cond_1f6

    .line 366
    const/4 v9, 0x0

    .line 368
    .local v9, authCookie:Ljava/lang/String;
    :try_start_d5
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->httpAuthRequest()Ljava/lang/String;
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_108
    .catch Ljava/security/InvalidKeyException; {:try_start_d5 .. :try_end_d8} :catch_10d
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_d5 .. :try_end_d8} :catch_112

    move-result-object v9

    .line 379
    :goto_d9
    if-nez v9, :cond_117

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    const v5, 0x7f0600a7

    invoke-virtual {v4, v5}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V

    goto/16 :goto_7b

    .line 369
    :catch_108
    move-exception v12

    .line 370
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d9

    .line 372
    .end local v12           #e:Ljava/io/IOException;
    :catch_10d
    move-exception v12

    .line 373
    .local v12, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v12}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_d9

    .line 375
    .end local v12           #e:Ljava/security/InvalidKeyException;
    :catch_112
    move-exception v12

    .line 376
    .local v12, e:Lcom/sprint/internal/SystemPropertiesException;
    invoke-virtual {v12}, Lcom/sprint/internal/SystemPropertiesException;->printStackTrace()V

    goto :goto_d9

    .line 385
    .end local v12           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_117
    :try_start_117
    new-instance v16, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://63.168.226.150:4747/?uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-eqz v1, :cond_1c3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_132
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 386
    .local v16, u:Ljava/net/URL;
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 387
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_16c} :catch_1c9

    .line 388
    .end local v13           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .local v14, httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_16c
    const-string v1, "x-wap-profile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUaProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v14, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "Cookie"

    invoke-virtual {v14, v1, v9}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "AppAuth"

    const-string v2, "SprintID"

    invoke-virtual {v14, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_188} :catch_20f

    move-object v13, v14

    .line 402
    .end local v9           #authCookie:Ljava/lang/String;
    .end local v14           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #u:Ljava/net/URL;
    .restart local v13       #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    :goto_189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUserId:Ljava/lang/String;

    if-eqz v1, :cond_1bc

    .line 403
    new-instance v10, Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-direct {v10, v1, v2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 404
    .local v10, authScope:Lorg/apache/http/auth/AuthScope;
    new-instance v11, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPassword:Ljava/lang/String;

    invoke-direct {v11, v1, v2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v11, creds:Lorg/apache/http/auth/UsernamePasswordCredentials;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, v10, v11}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 408
    .end local v10           #authScope:Lorg/apache/http/auth/AuthScope;
    .end local v11           #creds:Lorg/apache/http/auth/UsernamePasswordCredentials;
    :cond_1bc
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->executeDownload(Lorg/apache/http/client/methods/HttpGet;)V

    goto/16 :goto_7b

    .line 385
    .restart local v9       #authCookie:Ljava/lang/String;
    :cond_1c3
    :try_start_1c3
    invoke-virtual {v15}, Lcom/sprint/w/installer/psi/ServicePack;->getDownloadUrl()Ljava/lang/String;
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1c6} :catch_1c9

    move-result-object v1

    goto/16 :goto_132

    .line 393
    :catch_1c9
    move-exception v12

    .line 394
    .local v12, e:Ljava/lang/Exception;
    :goto_1ca
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    const v5, 0x7f0600a7

    invoke-virtual {v4, v5}, Lcom/sprint/w/installer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sprint/w/installer/DownloadService;->notifyFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->finishSelf()V

    goto :goto_189

    .line 399
    .end local v9           #authCookie:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/Exception;
    :cond_1f6
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    .end local v13           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z

    if-eqz v1, :cond_20a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_206
    invoke-direct {v13, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v13       #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_189

    .end local v13           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    :cond_20a
    invoke-virtual {v15}, Lcom/sprint/w/installer/psi/ServicePack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_206

    .line 393
    .restart local v9       #authCookie:Ljava/lang/String;
    .restart local v14       #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #u:Ljava/net/URL;
    :catch_20f
    move-exception v12

    move-object v13, v14

    .end local v14           #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #httpGetRequest:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1ca
.end method
