.class Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;
.super Ljava/lang/Object;
.source "SnsImageCacheHttpMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;
    }
.end annotation


# static fields
.field static mFileSavingCount:Ljava/lang/Integer;

.field static mHttpClient:Lorg/apache/http/client/HttpClient;


# instance fields
.field mFileName:Ljava/lang/String;

.field mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

.field mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    .line 391
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)V
    .registers 2
    .parameter "httpMgr"

    .prologue
    .line 399
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->saveFile()V

    return-void
.end method

.method private extractPortNumber(Ljava/lang/String;)I
    .registers 9
    .parameter "url"

    .prologue
    const/4 v6, -0x1

    .line 829
    const/4 v3, 0x0

    .line 830
    .local v3, portNum:I
    const/4 v0, 0x0

    .line 833
    .local v0, contentPos:I
    const-string v5, "://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_12

    .line 834
    const-string v5, "://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 837
    :cond_12
    const/4 v4, -0x1

    .line 838
    .local v4, portStartPos:I
    const/16 v5, 0x3a

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v6, :cond_2e

    .line 839
    add-int/lit8 v4, v4, 0x1

    .line 841
    const/4 v2, -0x1

    .line 843
    .local v2, portEndPos:I
    const/16 v5, 0x2f

    :try_start_20
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v6, :cond_2f

    .line 844
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 853
    .end local v2           #portEndPos:I
    :cond_2e
    :goto_2e
    return v3

    .line 846
    .restart local v2       #portEndPos:I
    :cond_2f
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_36} :catch_38

    move-result v3

    goto :goto_2e

    .line 848
    :catch_38
    move-exception v1

    .line 849
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2e
.end method

.method private fileNameGenerator(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "reqUri"

    .prologue
    const/4 v11, -0x1

    .line 768
    sget-object v8, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    monitor-enter v8

    .line 770
    :try_start_4
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 771
    .local v4, mtm:Landroid/webkit/MimeTypeMap;
    const-string v7, "://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 772
    .local v6, pos:I
    const/4 v5, 0x0

    .line 773
    .local v5, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 774
    .local v0, ext:Ljava/lang/String;
    const/4 v1, 0x0

    .line 775
    .local v1, extTemp:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 777
    .local v3, millisecond:Ljava/lang/Long;
    if-eq v6, v11, :cond_108

    .line 778
    const-string v7, "://"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 782
    :goto_26
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 783
    if-eq v6, v11, :cond_33

    .line 784
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 786
    :cond_33
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 787
    if-eq v6, v11, :cond_40

    .line 788
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 790
    :cond_40
    sget-object v7, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    sget-object v7, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    .line 791
    sget-object v7, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_5f

    .line 792
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    .line 795
    :cond_5f
    const/16 v7, 0x2f

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 796
    if-eq v6, v11, :cond_6f

    .line 797
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 799
    :cond_6f
    if-eqz v1, :cond_77

    .line 800
    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 802
    :cond_77
    if-eq v6, v11, :cond_85

    if-eqz v1, :cond_85

    .line 803
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_85
    if-eqz v0, :cond_a5

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a5

    .line 806
    iget-object v7, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    const-string v9, "Content-Type"

    invoke-interface {v7, v9}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 808
    .local v2, headers:[Lorg/apache/http/Header;
    if-eqz v2, :cond_a5

    array-length v7, v2

    if-lez v7, :cond_a5

    .line 809
    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .end local v2           #headers:[Lorg/apache/http/Header;
    :cond_a5
    if-nez v0, :cond_a9

    .line 813
    const-string v0, "file"

    .line 815
    :cond_a9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2e

    const/16 v10, 0x5f

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileSavingCount:Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 818
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_106

    .line 819
    const-string v7, "SNS_IMAGE_CACHE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SnsImageCacheHttpSendingThread : fileNameGenerator : Generated Name = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_106
    monitor-exit v8

    return-object v5

    .line 780
    :cond_108
    move-object v5, p1

    goto/16 :goto_26

    .line 825
    .end local v0           #ext:Ljava/lang/String;
    .end local v1           #extTemp:Ljava/lang/String;
    .end local v3           #millisecond:Ljava/lang/Long;
    .end local v4           #mtm:Landroid/webkit/MimeTypeMap;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #pos:I
    :catchall_10b
    move-exception v7

    monitor-exit v8
    :try_end_10d
    .catchall {:try_start_4 .. :try_end_10d} :catchall_10b

    throw v7
.end method

.method private declared-synchronized getFirstWaitReq()Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    .registers 6

    .prologue
    .line 409
    monitor-enter p0

    const/4 v3, 0x0

    .line 411
    .local v3, result:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getSemaphore()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 413
    iget-object v4, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHttpReqQueue()Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    .local v2, reqQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;

    .line 416
    .local v1, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getSendingFlag()Z

    move-result v4

    if-nez v4, :cond_15

    .line 417
    move-object v3, v1

    .line 418
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->setSendingFlag(Z)V

    .line 423
    .end local v1           #req:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    :cond_2c
    iget-object v4, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getSemaphore()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_37

    .line 425
    monitor-exit p0

    return-object v3

    .line 409
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #reqQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;>;"
    :catchall_37
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private printLog(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;)V
    .registers 9
    .parameter "request"

    .prologue
    .line 624
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 626
    :try_start_6
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "############################################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "# SNS IMAGE-CACHE HTTP REQUEST :                                                           #"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "############################################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Req ID      = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getFwkReqID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# URI         = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# RequestLine = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 639
    .local v0, allHeaders:[Lorg/apache/http/Header;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v2, headerInfo:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_81
    array-length v4, v0

    if-ge v3, v4, :cond_ab

    .line 641
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 642
    const-string v4, "# Headers     = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 648
    :cond_ab
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "# Method      = HTTP-GET"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "############################################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b9} :catch_ba

    .line 673
    .end local v0           #allHeaders:[Lorg/apache/http/Header;
    .end local v2           #headerInfo:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    :goto_b9
    return-void

    .line 652
    :catch_ba
    move-exception v1

    .line 653
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b9

    .line 657
    .end local v1           #e:Ljava/lang/Exception;
    :cond_bf
    :try_start_bf
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "############################################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "# SNS IMAGE-CACHE HTTP REQUEST :                                                           #"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "############################################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Req ID      = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getFwkReqID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "############################################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_f7} :catch_f8

    goto :goto_b9

    .line 669
    :catch_f8
    move-exception v1

    .line 670
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b9
.end method

.method private printLog(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 677
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 679
    :try_start_6
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "############################################################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "# SNS IMAGE-CACHE HTTP RESPONSE :                                                          #"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "############################################################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v1, "SNS_IMAGE_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Req ID       = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getFwkID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v1, "SNS_IMAGE_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# HttpStatus   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getHttpStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v1, "SNS_IMAGE_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# ImageCache Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "############################################################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_76} :catch_77

    .line 711
    :goto_76
    return-void

    .line 691
    :catch_77
    move-exception v0

    .line 692
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_76

    .line 696
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7c
    :try_start_7c
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "############################################################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "# SNS IMAGE-CACHE HTTP RESPONSE :                                                          #"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "############################################################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v1, "SNS_IMAGE_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Req ID       = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getFwkID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v1, "SNS_IMAGE_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# HttpStatus   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getHttpStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "############################################################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_d0} :catch_d1

    goto :goto_76

    .line 707
    :catch_d1
    move-exception v0

    .line 708
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_76
.end method

.method private saveFile()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 743
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "SnsImageCacheHttpSendingThread : saveFile Called !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v4, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 747
    .local v3, respEntity:Lorg/apache/http/HttpEntity;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getReceivedFileDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 749
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 750
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "SnsImageCacheHttpSendingThread :  make directory..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_28
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_59

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 755
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 758
    :cond_59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 759
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 761
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-interface {v3, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 762
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 763
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 765
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_77
    return-void
.end method


# virtual methods
.method public doHTTPSend()V
    .registers 25

    .prologue
    .line 432
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend Called !!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHttpReqQueue()Ljava/util/ArrayList;

    move-result-object v13

    .line 435
    .local v13, reqQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v20

    sput-object v20, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 436
    const/4 v12, 0x0

    .line 438
    .local v12, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    sget-object v20, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v20, :cond_339

    .line 440
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_330

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->getFirstWaitReq()Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;

    move-result-object v12

    if-eqz v12, :cond_330

    .line 441
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getFwkReqID()I

    move-result v8

    .line 442
    .local v8, fwkID:I
    sget-object v20, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v20

    const-string v21, "http"

    invoke-virtual/range {v20 .. v21}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v16

    .line 444
    .local v16, serverPort:I
    const/16 v17, 0xc8

    .line 445
    .local v17, statusCode:I
    const/4 v5, 0x0

    .line 446
    .local v5, bRestoreHttpScheme:Z
    const/4 v4, 0x0

    .line 447
    .local v4, bNetworkUnreachable:Z
    const/4 v3, 0x0

    .line 448
    .local v3, bInterruptedIO:Z
    const/4 v15, 0x0

    .line 449
    .local v15, responseContent:Ljava/lang/String;
    const/16 v19, 0x0

    .line 453
    .local v19, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getURI()Ljava/net/URI;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->extractPortNumber(Ljava/lang/String;)I

    move-result v18

    .line 454
    .local v18, trialPort:I
    if-nez v18, :cond_62

    .line 455
    const/16 v18, 0x50

    .line 458
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "power"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 460
    .local v11, pm:Landroid/os/PowerManager;
    const/16 v20, 0x1

    const-string v21, "SNS_IMAGE_CACHE"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    .line 461
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 463
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->printLog(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;)V
    :try_end_88
    .catchall {:try_start_62 .. :try_end_88} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_88} :catch_ba

    .line 466
    :try_start_88
    sget-object v20, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    .line 467
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : httpClient.execute(req) - CALLED~"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_88 .. :try_end_9d} :catchall_157
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_88 .. :try_end_9d} :catch_13c
    .catch Ljava/io/InterruptedIOException; {:try_start_88 .. :try_end_9d} :catch_1c9
    .catch Ljava/net/SocketException; {:try_start_88 .. :try_end_9d} :catch_1f3
    .catch Ljava/net/UnknownHostException; {:try_start_88 .. :try_end_9d} :catch_21b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_9d} :catch_230
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9d} :catch_24b

    .line 531
    :goto_9d
    :try_start_9d
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->isAborted()Z

    move-result v20

    if-nez v20, :cond_322

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v20, v0

    if-nez v20, :cond_25b

    .line 534
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() - mResponse is NULL !!!!!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v20, Ljava/lang/Exception;

    const-string v21, "Response is Null."

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_ba
    .catchall {:try_start_9d .. :try_end_ba} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ba} :catch_ba

    .line 574
    .end local v11           #pm:Landroid/os/PowerManager;
    :catch_ba
    move-exception v6

    .line 575
    .local v6, e:Ljava/lang/Exception;
    const/16 v17, 0x3e9

    .line 576
    :try_start_bd
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : EXCEPTION OCCUR !!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_bd .. :try_end_cb} :catchall_157

    .line 581
    new-instance v14, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;

    move/from16 v0, v17

    invoke-direct {v14, v8, v0, v15}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;-><init>(IILjava/lang/String;)V

    .line 584
    .local v14, resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->printLog(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 588
    .local v9, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->dequeueHttpRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;)V

    .line 590
    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 592
    .local v10, msg:Landroid/os/Message;
    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    if-eqz v5, :cond_136

    .line 596
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v20

    if-eqz v20, :cond_34b

    .line 597
    const-string v20, "SNS_IMAGE_CACHE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SnsImageCacheHttpSendingThread : doHTTPSend() - restore http scheme with port["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->registerHttpScheme(I)V

    .line 607
    :cond_136
    if-eqz v19, :cond_13b

    .line 608
    .end local v6           #e:Ljava/lang/Exception;
    :goto_138
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 620
    .end local v3           #bInterruptedIO:Z
    .end local v4           #bNetworkUnreachable:Z
    .end local v5           #bRestoreHttpScheme:Z
    .end local v8           #fwkID:I
    .end local v9           #handler:Landroid/os/Handler;
    .end local v10           #msg:Landroid/os/Message;
    .end local v14           #resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    .end local v15           #responseContent:Ljava/lang/String;
    .end local v16           #serverPort:I
    .end local v17           #statusCode:I
    .end local v18           #trialPort:I
    .end local v19           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_13b
    :goto_13b
    return-void

    .line 471
    .restart local v3       #bInterruptedIO:Z
    .restart local v4       #bNetworkUnreachable:Z
    .restart local v5       #bRestoreHttpScheme:Z
    .restart local v8       #fwkID:I
    .restart local v11       #pm:Landroid/os/PowerManager;
    .restart local v15       #responseContent:Ljava/lang/String;
    .restart local v16       #serverPort:I
    .restart local v17       #statusCode:I
    .restart local v18       #trialPort:I
    .restart local v19       #wl:Landroid/os/PowerManager$WakeLock;
    :catch_13c
    move-exception v6

    .line 472
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_13d
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 473
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : ClientProtocolException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : Error in the HTTP protocol!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->abort()V
    :try_end_155
    .catchall {:try_start_13d .. :try_end_155} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_155} :catch_ba

    goto/16 :goto_9d

    .line 581
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v11           #pm:Landroid/os/PowerManager;
    :catchall_157
    move-exception v20

    new-instance v14, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;

    move/from16 v0, v17

    invoke-direct {v14, v8, v0, v15}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;-><init>(IILjava/lang/String;)V

    .line 584
    .restart local v14       #resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->printLog(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 588
    .restart local v9       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->dequeueHttpRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;)V

    .line 590
    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v9, v0, v1, v2, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 592
    .restart local v10       #msg:Landroid/os/Message;
    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    if-eqz v5, :cond_1c3

    .line 596
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v21

    if-eqz v21, :cond_342

    .line 597
    const-string v21, "SNS_IMAGE_CACHE"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SnsImageCacheHttpSendingThread : doHTTPSend() - restore http scheme with port["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->registerHttpScheme(I)V

    .line 607
    :cond_1c3
    if-eqz v19, :cond_1c8

    .line 608
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    :cond_1c8
    throw v20

    .line 482
    .end local v9           #handler:Landroid/os/Handler;
    .end local v10           #msg:Landroid/os/Message;
    .end local v14           #resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    .restart local v11       #pm:Landroid/os/PowerManager;
    :catch_1c9
    move-exception v6

    .line 483
    .local v6, e:Ljava/io/InterruptedIOException;
    :try_start_1ca
    const-string v20, "SNS_IMAGE_CACHE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SnsImageCacheHttpSendingThread : doHTTPSend() : InterruptedIOException : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : The process reading/writing to a stream has been interrupted OR Socket timeout occurs before the request has completed!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v3, 0x1

    .line 491
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->abort()V

    goto/16 :goto_9d

    .line 492
    .end local v6           #e:Ljava/io/InterruptedIOException;
    :catch_1f3
    move-exception v6

    .line 493
    .local v6, e:Ljava/net/SocketException;
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    .line 494
    const-string v20, "Network unreachable"

    invoke-virtual {v6}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_204

    .line 495
    const/4 v4, 0x1

    .line 497
    :cond_204
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : SocketException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : Error during socket creation or setting options!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->abort()V

    goto/16 :goto_9d

    .line 504
    .end local v6           #e:Ljava/net/SocketException;
    :catch_21b
    move-exception v6

    .line 505
    .local v6, e:Ljava/net/UnknownHostException;
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 506
    const/4 v4, 0x1

    .line 507
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : UnknownHostException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->abort()V

    goto/16 :goto_9d

    .line 513
    .end local v6           #e:Ljava/net/UnknownHostException;
    :catch_230
    move-exception v6

    .line 514
    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 515
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : IllegalArgumentException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : The method is invoked with an argument which it can not reasonably deal with!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->abort()V

    goto/16 :goto_9d

    .line 525
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catch_24b
    move-exception v6

    .line 526
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : Exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->abort()V

    goto/16 :goto_9d

    .line 540
    .end local v6           #e:Ljava/lang/Exception;
    :cond_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 543
    const/16 v20, 0xc8

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2ab

    .line 544
    invoke-virtual {v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getURI()Ljava/net/URI;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->fileNameGenerator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileName:Ljava/lang/String;

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileName:Ljava/lang/String;

    .line 548
    new-instance v7, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;-><init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;Ljava/lang/String;)V

    .line 549
    .local v7, fileSaveThread:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;
    invoke-virtual {v7}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->start()V
    :try_end_29d
    .catchall {:try_start_1ca .. :try_end_29d} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_29d} :catch_ba

    .line 553
    :try_start_29d
    invoke-virtual {v7}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->join()V

    .line 554
    invoke-virtual {v7}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->getException()Ljava/lang/Throwable;

    move-result-object v6

    .line 555
    .local v6, e:Ljava/lang/Throwable;
    if-eqz v6, :cond_2ab

    .line 556
    throw v6
    :try_end_2a7
    .catchall {:try_start_29d .. :try_end_2a7} :catchall_157
    .catch Ljava/lang/InterruptedException; {:try_start_29d .. :try_end_2a7} :catch_2a7
    .catch Ljava/lang/Throwable; {:try_start_29d .. :try_end_2a7} :catch_31a
    .catch Ljava/lang/Exception; {:try_start_29d .. :try_end_2a7} :catch_ba

    .line 558
    .end local v6           #e:Ljava/lang/Throwable;
    :catch_2a7
    move-exception v6

    .line 559
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2a8
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2ab
    .catchall {:try_start_2a8 .. :try_end_2ab} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2ab} :catch_ba

    .line 581
    .end local v6           #e:Ljava/lang/InterruptedException;
    .end local v7           #fileSaveThread:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;
    :cond_2ab
    :goto_2ab
    new-instance v14, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;

    move/from16 v0, v17

    invoke-direct {v14, v8, v0, v15}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;-><init>(IILjava/lang/String;)V

    .line 584
    .restart local v14       #resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->printLog(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 588
    .restart local v9       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->dequeueHttpRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;)V

    .line 590
    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 592
    .restart local v10       #msg:Landroid/os/Message;
    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    if-eqz v5, :cond_316

    .line 596
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v20

    if-eqz v20, :cond_354

    .line 597
    const-string v20, "SNS_IMAGE_CACHE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SnsImageCacheHttpSendingThread : doHTTPSend() - restore http scheme with port["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->registerHttpScheme(I)V

    .line 607
    :cond_316
    if-eqz v19, :cond_13b

    goto/16 :goto_138

    .line 560
    .end local v9           #handler:Landroid/os/Handler;
    .end local v10           #msg:Landroid/os/Message;
    .end local v14           #resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    .restart local v7       #fileSaveThread:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;
    :catch_31a
    move-exception v6

    .line 561
    .local v6, e:Ljava/lang/Throwable;
    :try_start_31b
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31e
    .catchall {:try_start_31b .. :try_end_31e} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_31e} :catch_ba

    .line 562
    const/16 v17, 0x3ea

    .line 563
    const/4 v15, 0x0

    goto :goto_2ab

    .line 566
    .end local v6           #e:Ljava/lang/Throwable;
    .end local v7           #fileSaveThread:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;
    :cond_322
    if-eqz v4, :cond_327

    .line 567
    const/16 v17, 0x3f1

    goto :goto_2ab

    .line 568
    :cond_327
    if-eqz v3, :cond_32c

    .line 569
    const/16 v17, 0x3f2

    goto :goto_2ab

    .line 572
    :cond_32c
    const/16 v17, 0x3e9

    goto/16 :goto_2ab

    .line 614
    .end local v3           #bInterruptedIO:Z
    .end local v4           #bNetworkUnreachable:Z
    .end local v5           #bRestoreHttpScheme:Z
    .end local v8           #fwkID:I
    .end local v11           #pm:Landroid/os/PowerManager;
    .end local v15           #responseContent:Ljava/lang/String;
    .end local v16           #serverPort:I
    .end local v17           #statusCode:I
    .end local v18           #trialPort:I
    .end local v19           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_330
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() : NOTHING to SEND"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    .line 617
    :cond_339
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() - mHttpClient is NULL !!!!!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    .line 601
    .restart local v3       #bInterruptedIO:Z
    .restart local v4       #bNetworkUnreachable:Z
    .restart local v5       #bRestoreHttpScheme:Z
    .restart local v8       #fwkID:I
    .restart local v9       #handler:Landroid/os/Handler;
    .restart local v10       #msg:Landroid/os/Message;
    .restart local v14       #resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    .restart local v15       #responseContent:Ljava/lang/String;
    .restart local v16       #serverPort:I
    .restart local v17       #statusCode:I
    .restart local v18       #trialPort:I
    .restart local v19       #wl:Landroid/os/PowerManager$WakeLock;
    :cond_342
    const-string v21, "SNS_IMAGE_CACHE"

    const-string v22, "SnsImageCacheHttpSendingThread : doHTTPSend() - restore http scheme with port[ ]"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b6

    .local v6, e:Ljava/lang/Exception;
    :cond_34b
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() - restore http scheme with port[ ]"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    .end local v6           #e:Ljava/lang/Exception;
    .restart local v11       #pm:Landroid/os/PowerManager;
    :cond_354
    const-string v20, "SNS_IMAGE_CACHE"

    const-string v21, "SnsImageCacheHttpSendingThread : doHTTPSend() - restore http scheme with port[ ]"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_309
.end method

.method public run()V
    .registers 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->doHTTPSend()V

    .line 405
    return-void
.end method
