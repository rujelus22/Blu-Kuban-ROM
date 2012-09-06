.class public Lcom/google/android/apps/plus/service/PicasaNetworkService;
.super Landroid/app/IntentService;
.source "PicasaNetworkService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    const-string v0, "PicasaNetworkService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 25
    .parameter "intent"

    .prologue
    .line 29
    const-string v20, "op_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 31
    .local v12, name:Ljava/lang/String;
    const-string v20, "total_time"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    .line 33
    .local v17, totalTime:J
    const-string v20, "net_duration"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 35
    .local v13, netTime:J
    const-string v20, "sent_bytes"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 37
    .local v7, bytesSent:J
    const-string v20, "received_bytes"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 39
    .local v5, bytesReceived:J
    const-string v20, "transaction_count"

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 42
    .local v16, requestCount:I
    new-instance v19, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    .line 43
    .local v19, transactionMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
    new-instance v11, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v11}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 44
    .local v11, inMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    invoke-virtual {v11, v5, v6}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->setBytesTransferred(J)V

    .line 45
    new-instance v15, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v15}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 46
    .local v15, outMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    invoke-virtual {v15, v7, v8}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->setBytesTransferred(J)V

    .line 47
    new-instance v9, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-direct {v9, v11, v15}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    .line 50
    .local v9, connectionMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6b
    move/from16 v0, v16

    if-ge v10, v0, :cond_78

    .line 51
    invoke-virtual {v9}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 52
    invoke-virtual {v9}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 50
    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    .line 55
    :cond_78
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onBeginTransaction(Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->setConnectionMetrics(Lorg/apache/http/HttpConnectionMetrics;)V

    .line 57
    sub-long v20, v17, v13

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction(JJ)V

    .line 59
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    .line 61
    return-void
.end method
