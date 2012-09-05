.class Lcom/sec/android/app/sns/http/SnsHttpSendingThread;
.super Ljava/lang/Object;
.source "SnsHttpMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static mFileSavingCount:I

.field static mHttpClient:Lorg/apache/http/client/HttpClient;


# instance fields
.field mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

.field mRedirectURL:Ljava/lang/String;

.field mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 533
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mFileSavingCount:I

    .line 535
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/sns/http/SnsHttpMgr;)V
    .registers 2
    .parameter "httpMgr"

    .prologue
    .line 543
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    .line 545
    return-void
.end method

.method private declared-synchronized getFirstWaitReq()Lcom/sec/android/app/sns/http/SnsHttpRequest;
    .registers 6

    .prologue
    .line 553
    monitor-enter p0

    const/4 v3, 0x0

    .line 555
    .local v3, result:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getSemaphore()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 557
    iget-object v4, p0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpReqQueue()Ljava/util/ArrayList;

    move-result-object v2

    .line 559
    .local v2, reqQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/sns/http/SnsHttpRequest;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sns/http/SnsHttpRequest;

    .line 560
    .local v1, req:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getSendingFlag()Z

    move-result v4

    if-nez v4, :cond_15

    .line 561
    move-object v3, v1

    .line 562
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->setSendingFlag(Z)V

    .line 567
    .end local v1           #req:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    :cond_2c
    iget-object v4, p0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getSemaphore()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_37

    .line 569
    monitor-exit p0

    return-object v3

    .line 553
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #reqQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/sns/http/SnsHttpRequest;>;"
    :catchall_37
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private printLog(Lcom/sec/android/app/sns/http/SnsHttpRequest;)V
    .registers 10
    .parameter "request"

    .prologue
    .line 784
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 786
    :try_start_6
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "######################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "# SNS HTTP REQUEST :                                                 #"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "######################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# UA          = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "User-Agent"

    invoke-virtual {p1, v6}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Req ID      = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getFwkReqID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Req Type    = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getFwkReqType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# URI         = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# RequestLine = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 798
    .local v0, allHeaders:[Lorg/apache/http/Header;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v2, headerInfo:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c6
    array-length v4, v0

    if-ge v3, v4, :cond_f0

    .line 800
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 801
    const-string v4, "# Headers     = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6

    .line 807
    :cond_f0
    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 808
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "# Method      = HTTP-GET : Content is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_103
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "######################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v0           #allHeaders:[Lorg/apache/http/Header;
    .end local v2           #headerInfo:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    :goto_10a
    return-void

    .line 809
    .restart local v0       #allHeaders:[Lorg/apache/http/Header;
    .restart local v2       #headerInfo:Ljava/lang/StringBuilder;
    .restart local v3       #i:I
    :cond_10b
    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_139

    .line 810
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Method      = HTTP-PUT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_133} :catch_134

    goto :goto_103

    .line 819
    .end local v0           #allHeaders:[Lorg/apache/http/Header;
    .end local v2           #headerInfo:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    :catch_134
    move-exception v1

    .line 820
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10a

    .line 812
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #allHeaders:[Lorg/apache/http/Header;
    .restart local v2       #headerInfo:Ljava/lang/StringBuilder;
    .restart local v3       #i:I
    :cond_139
    :try_start_139
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Method      = HTTP-POST : Content["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_15f} :catch_134

    goto :goto_103

    .line 824
    .end local v0           #allHeaders:[Lorg/apache/http/Header;
    .end local v2           #headerInfo:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    :cond_160
    :try_start_160
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "######################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "# SNS HTTP REQUEST :                                                 #"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "######################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Req ID      = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getFwkReqID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v4, "SNS_HTTPMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Req Type    = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getFwkReqType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v4, "SNS_HTTPMGR"

    const-string v5, "######################################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_1b8} :catch_1ba

    goto/16 :goto_10a

    .line 833
    :catch_1ba
    move-exception v1

    .line 834
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10a
.end method

.method private printLog(Lcom/sec/android/app/sns/response/data/SnsResponse;)V
    .registers 9
    .parameter "response"

    .prologue
    .line 841
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 843
    :try_start_6
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "######################################################################"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "# SNS HTTP RESPONSE :                                                #"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "######################################################################"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Req ID       = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Req Type     = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# HttpStatus   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getHttpStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v2

    .line 852
    .local v2, internalCode:I
    if-eqz v2, :cond_91

    .line 853
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# HttpInternalCode   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_91
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 856
    .local v0, content:Ljava/lang/String;
    if-nez v0, :cond_a8

    .line 857
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "# ResponseBody = [ NULL ]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_a0
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "######################################################################"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #internalCode:I
    :goto_a7
    return-void

    .line 859
    .restart local v0       #content:Ljava/lang/String;
    .restart local v2       #internalCode:I
    :cond_a8
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# ResponseBody = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c6} :catch_c7

    goto :goto_a0

    .line 864
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #internalCode:I
    :catch_c7
    move-exception v1

    .line 865
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a7

    .line 869
    .end local v1           #e:Ljava/lang/Exception;
    :cond_cc
    :try_start_cc
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "######################################################################"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "# SNS HTTP RESPONSE :                                                #"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "######################################################################"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Req ID       = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Req Type     = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# HttpStatus   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getHttpStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v2

    .line 878
    .restart local v2       #internalCode:I
    if-eqz v2, :cond_157

    .line 879
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# HttpInternalCode   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_157
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 882
    .restart local v0       #content:Ljava/lang/String;
    if-nez v0, :cond_166

    .line 883
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "# ResponseBody = [ NULL ]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_166
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "######################################################################"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_16d} :catch_16f

    goto/16 :goto_a7

    .line 888
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #internalCode:I
    :catch_16f
    move-exception v1

    .line 889
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a7
.end method


# virtual methods
.method public doSendHttp()V
    .registers 24

    .prologue
    .line 576
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp Called !!!"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpReqQueue()Ljava/util/ArrayList;

    move-result-object v15

    .line 580
    .local v15, reqQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/sns/http/SnsHttpRequest;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->setHttpDefaultProxy()V

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 582
    const/4 v14, 0x0

    .line 584
    .local v14, req:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    sget-object v2, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v2, :cond_34b

    .line 589
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_342

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->getFirstWaitReq()Lcom/sec/android/app/sns/http/SnsHttpRequest;

    move-result-object v14

    if-eqz v14, :cond_342

    .line 590
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getFwkReqID()I

    move-result v3

    .line 591
    .local v3, fwkID:I
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getFwkReqType()I

    move-result v4

    .line 592
    .local v4, fwkReqType:I
    sget-object v2, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    const-string v8, "http"

    invoke-virtual {v2, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v18

    .line 594
    .local v18, serverPort:I
    const/4 v6, -0x1

    .line 595
    .local v6, httpStatusCode:I
    const/4 v5, 0x0

    .line 596
    .local v5, internalCode:I
    const/4 v9, 0x0

    .line 597
    .local v9, bRestoreHttpScheme:Z
    const/4 v7, 0x0

    .line 598
    .local v7, responseContent:Ljava/lang/String;
    const/16 v20, 0x0

    .line 602
    .local v20, wl:Landroid/os/PowerManager$WakeLock;
    const/16 v2, 0x21

    if-eq v4, v2, :cond_5b

    const/16 v2, 0x23

    if-ne v4, v2, :cond_a5

    .line 604
    :cond_5b
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->extractPortNumber(Ljava/lang/String;)I

    move-result v19

    .line 605
    .local v19, trialPort:I
    if-nez v19, :cond_6b

    .line 606
    const/16 v19, 0x50

    .line 608
    :cond_6b
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a5

    .line 609
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_17d

    .line 610
    const-string v2, "SNS_HTTPMGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SnsHttpSendingThread : doSendHttp() - register new http scheme with port["

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v21, "]"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerHttpScheme(I)V

    .line 618
    const/4 v9, 0x1

    .line 624
    .end local v19           #trialPort:I
    :cond_a5
    :try_start_a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v8, "power"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 626
    .local v13, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v8, "SNS_HTTPMGR"

    invoke-virtual {v13, v2, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    .line 627
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 629
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->printLog(Lcom/sec/android/app/sns/http/SnsHttpRequest;)V
    :try_end_c4
    .catchall {:try_start_a5 .. :try_end_c4} :catchall_1f3
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_c4} :catch_103

    .line 632
    const/4 v2, 0x0

    :try_start_c5
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mRedirectURL:Ljava/lang/String;

    .line 633
    sget-object v2, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    check-cast v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v8, Lcom/sec/android/app/sns/http/SnsHttpSendingThread$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread$1;-><init>(Lcom/sec/android/app/sns/http/SnsHttpSendingThread;)V

    invoke-virtual {v2, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 642
    sget-object v2, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    .line 643
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : httpClient.execute(req) - CALLED~"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_c5 .. :try_end_e8} :catchall_1f3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c5 .. :try_end_e8} :catch_186
    .catch Ljava/io/InterruptedIOException; {:try_start_c5 .. :try_end_e8} :catch_19f
    .catch Ljava/net/SocketException; {:try_start_c5 .. :try_end_e8} :catch_1ce
    .catch Ljava/net/UnknownHostException; {:try_start_c5 .. :try_end_e8} :catch_266
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_e8} :catch_278
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e8} :catch_291

    .line 707
    :goto_e8
    :try_start_e8
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_2c9

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v2, :cond_2a3

    .line 710
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() - mResponse is NULL !!!!!!! "

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v2, Ljava/lang/Exception;

    const-string v8, "Response is Null."

    invoke-direct {v2, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_103
    .catchall {:try_start_e8 .. :try_end_103} :catchall_1f3
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_103} :catch_103

    .line 735
    .end local v13           #pm:Landroid/os/PowerManager;
    :catch_103
    move-exception v10

    .line 736
    .local v10, e:Ljava/lang/Exception;
    const/16 v5, 0x1389

    .line 737
    :try_start_106
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : EXCEPTION OCCUR !!!"

    invoke-static {v2, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_1f3

    .line 740
    new-instance v2, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v2}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mRedirectURL:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createHttpMgrResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v16

    .line 744
    .local v16, resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->printLog(Lcom/sec/android/app/sns/response/data/SnsResponse;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpHandler()Landroid/os/Handler;

    move-result-object v11

    .line 748
    .local v11, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2, v14}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->dequeueHttpRequest(Lcom/sec/android/app/sns/http/SnsHttpRequest;)V

    .line 750
    const/4 v2, 0x7

    const/4 v8, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v11, v2, v8, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 752
    .local v12, msg:Landroid/os/Message;
    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    if-eqz v9, :cond_177

    .line 756
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_35d

    .line 757
    const-string v2, "SNS_HTTPMGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SnsHttpSendingThread : doSendHttp() - restore http scheme with port["

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v21, "]"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_16e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerHttpScheme(I)V

    .line 767
    :cond_177
    if-eqz v20, :cond_17c

    .line 768
    .end local v10           #e:Ljava/lang/Exception;
    :goto_179
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 780
    .end local v3           #fwkID:I
    .end local v4           #fwkReqType:I
    .end local v5           #internalCode:I
    .end local v6           #httpStatusCode:I
    .end local v7           #responseContent:Ljava/lang/String;
    .end local v9           #bRestoreHttpScheme:Z
    .end local v11           #handler:Landroid/os/Handler;
    .end local v12           #msg:Landroid/os/Message;
    .end local v16           #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    .end local v18           #serverPort:I
    .end local v20           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_17c
    :goto_17c
    return-void

    .line 614
    .restart local v3       #fwkID:I
    .restart local v4       #fwkReqType:I
    .restart local v5       #internalCode:I
    .restart local v6       #httpStatusCode:I
    .restart local v7       #responseContent:Ljava/lang/String;
    .restart local v9       #bRestoreHttpScheme:Z
    .restart local v18       #serverPort:I
    .restart local v19       #trialPort:I
    .restart local v20       #wl:Landroid/os/PowerManager$WakeLock;
    :cond_17d
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() - register new http scheme with port"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 646
    .end local v19           #trialPort:I
    .restart local v13       #pm:Landroid/os/PowerManager;
    :catch_186
    move-exception v10

    .line 647
    .local v10, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_187
    invoke-virtual {v10}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 648
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : ClientProtocolException"

    invoke-static {v2, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : Error in the HTTP protocol!!"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->abort()V

    .line 655
    const/16 v5, 0x1389

    .line 705
    goto/16 :goto_e8

    .line 657
    .end local v10           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_19f
    move-exception v10

    .line 658
    .local v10, e:Ljava/io/InterruptedIOException;
    const-string v2, "SNS_HTTPMGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SnsHttpSendingThread : doSendHttp() : InterruptedIOException : "

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : The process reading/writing to a stream has been interrupted OR Socket timeout occurs before the request has completed!!"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->abort()V

    .line 665
    const/16 v5, 0x138c

    .line 705
    goto/16 :goto_e8

    .line 667
    .end local v10           #e:Ljava/io/InterruptedIOException;
    :catch_1ce
    move-exception v10

    .line 668
    .local v10, e:Ljava/net/SocketException;
    invoke-virtual {v10}, Ljava/net/SocketException;->printStackTrace()V

    .line 669
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : SocketException"

    invoke-static {v2, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : Error during socket creation or setting options!!"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v2, "Network unreachable"

    invoke-virtual {v10}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_263

    .line 674
    const/16 v5, 0x13ed

    .line 678
    :goto_1ee
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->abort()V
    :try_end_1f1
    .catchall {:try_start_187 .. :try_end_1f1} :catchall_1f3
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1f1} :catch_103

    goto/16 :goto_e8

    .line 740
    .end local v10           #e:Ljava/net/SocketException;
    .end local v13           #pm:Landroid/os/PowerManager;
    :catchall_1f3
    move-exception v2

    move-object/from16 v21, v2

    new-instance v2, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v2}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mRedirectURL:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createHttpMgrResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v16

    .line 744
    .restart local v16       #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->printLog(Lcom/sec/android/app/sns/response/data/SnsResponse;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpHandler()Landroid/os/Handler;

    move-result-object v11

    .line 748
    .restart local v11       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2, v14}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->dequeueHttpRequest(Lcom/sec/android/app/sns/http/SnsHttpRequest;)V

    .line 750
    const/4 v2, 0x7

    const/4 v8, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v11, v2, v8, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 752
    .restart local v12       #msg:Landroid/os/Message;
    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    if-eqz v9, :cond_25d

    .line 756
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_354

    .line 757
    const-string v2, "SNS_HTTPMGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SnsHttpSendingThread : doSendHttp() - restore http scheme with port["

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v22, "]"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerHttpScheme(I)V

    .line 767
    :cond_25d
    if-eqz v20, :cond_262

    .line 768
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 740
    :cond_262
    throw v21

    .line 676
    .end local v11           #handler:Landroid/os/Handler;
    .end local v12           #msg:Landroid/os/Message;
    .end local v16           #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    .restart local v10       #e:Ljava/net/SocketException;
    .restart local v13       #pm:Landroid/os/PowerManager;
    :cond_263
    const/16 v5, 0x1389

    goto :goto_1ee

    .line 679
    .end local v10           #e:Ljava/net/SocketException;
    :catch_266
    move-exception v10

    .line 680
    .local v10, e:Ljava/net/UnknownHostException;
    :try_start_267
    invoke-virtual {v10}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 681
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : UnknownHostException"

    invoke-static {v2, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    const/16 v5, 0x13ee

    .line 686
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->abort()V

    goto/16 :goto_e8

    .line 687
    .end local v10           #e:Ljava/net/UnknownHostException;
    :catch_278
    move-exception v10

    .line 688
    .local v10, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 689
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : IllegalArgumentException"

    invoke-static {v2, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : The method is invoked with an argument which it can not reasonably deal with!!"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v5, 0x1389

    .line 697
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->abort()V

    goto/16 :goto_e8

    .line 698
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catch_291
    move-exception v10

    .line 699
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : Exception"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/16 v5, 0x1389

    .line 704
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->abort()V

    goto/16 :goto_e8

    .line 715
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 716
    .local v17, response:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 718
    const/16 v2, 0x21

    if-ne v4, v2, :cond_2c5

    .line 719
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() - [[close mInputStream.]] "

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v14}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->closeInputStream()V
    :try_end_2c5
    .catchall {:try_start_267 .. :try_end_2c5} :catchall_1f3
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_2c5} :catch_103

    .line 726
    :cond_2c5
    :try_start_2c5
    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_2c8
    .catchall {:try_start_2c5 .. :try_end_2c8} :catchall_1f3
    .catch Ljava/lang/IllegalStateException; {:try_start_2c5 .. :try_end_2c8} :catch_334
    .catch Ljava/io/IOException; {:try_start_2c5 .. :try_end_2c8} :catch_33b
    .catch Ljava/lang/Exception; {:try_start_2c5 .. :try_end_2c8} :catch_103

    move-result-object v7

    .line 740
    .end local v17           #response:Lorg/apache/http/HttpEntity;
    :cond_2c9
    :goto_2c9
    new-instance v2, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v2}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mRedirectURL:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createHttpMgrResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v16

    .line 744
    .restart local v16       #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->printLog(Lcom/sec/android/app/sns/response/data/SnsResponse;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpHandler()Landroid/os/Handler;

    move-result-object v11

    .line 748
    .restart local v11       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2, v14}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->dequeueHttpRequest(Lcom/sec/android/app/sns/http/SnsHttpRequest;)V

    .line 750
    const/4 v2, 0x7

    const/4 v8, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v11, v2, v8, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 752
    .restart local v12       #msg:Landroid/os/Message;
    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    if-eqz v9, :cond_330

    .line 756
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_366

    .line 757
    const-string v2, "SNS_HTTPMGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SnsHttpSendingThread : doSendHttp() - restore http scheme with port["

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v21, "]"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->mHttpMgrInst:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerHttpScheme(I)V

    .line 767
    :cond_330
    if-eqz v20, :cond_17c

    goto/16 :goto_179

    .line 727
    .end local v11           #handler:Landroid/os/Handler;
    .end local v12           #msg:Landroid/os/Message;
    .end local v16           #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    .restart local v17       #response:Lorg/apache/http/HttpEntity;
    :catch_334
    move-exception v10

    .line 728
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_335
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 729
    const/16 v5, 0x138a

    .line 733
    goto :goto_2c9

    .line 730
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :catch_33b
    move-exception v10

    .line 731
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33f
    .catchall {:try_start_335 .. :try_end_33f} :catchall_1f3
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_33f} :catch_103

    .line 732
    const/16 v5, 0x138b

    goto :goto_2c9

    .line 774
    .end local v3           #fwkID:I
    .end local v4           #fwkReqType:I
    .end local v5           #internalCode:I
    .end local v6           #httpStatusCode:I
    .end local v7           #responseContent:Ljava/lang/String;
    .end local v9           #bRestoreHttpScheme:Z
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #pm:Landroid/os/PowerManager;
    .end local v17           #response:Lorg/apache/http/HttpEntity;
    .end local v18           #serverPort:I
    .end local v20           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_342
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() : NOTHING to SEND"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17c

    .line 778
    :cond_34b
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() - mHttpClient is NULL !!!!!!! "

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17c

    .line 761
    .restart local v3       #fwkID:I
    .restart local v4       #fwkReqType:I
    .restart local v5       #internalCode:I
    .restart local v6       #httpStatusCode:I
    .restart local v7       #responseContent:Ljava/lang/String;
    .restart local v9       #bRestoreHttpScheme:Z
    .restart local v11       #handler:Landroid/os/Handler;
    .restart local v12       #msg:Landroid/os/Message;
    .restart local v16       #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    .restart local v18       #serverPort:I
    .restart local v20       #wl:Landroid/os/PowerManager$WakeLock;
    :cond_354
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() - restore http scheme with port"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_254

    .local v10, e:Ljava/lang/Exception;
    :cond_35d
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() - restore http scheme with port"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16e

    .end local v10           #e:Ljava/lang/Exception;
    .restart local v13       #pm:Landroid/os/PowerManager;
    :cond_366
    const-string v2, "SNS_HTTPMGR"

    const-string v8, "SnsHttpSendingThread : doSendHttp() - restore http scheme with port"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_327
.end method

.method public run()V
    .registers 1

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;->doSendHttp()V

    .line 549
    return-void
.end method
