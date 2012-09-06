.class public Lcom/google/android/finsky/receivers/DeclineAssetReceiver;
.super Lcom/google/android/finsky/download/DownloadReceiver;
.source "DeclineAssetReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 51
    :cond_e
    :goto_e
    return-void

    .line 29
    :cond_f
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/DeclineAssetReceiver;->setResultCode(I)V

    .line 31
    const-string v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, fromAddress:Ljava/lang/String;
    const-string v5, "google.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 36
    const-string v5, "asset_package"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "decline_reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, declinedReasonStr:Ljava/lang/String;
    const/4 v4, -0x1

    .line 39
    .local v4, reason:I
    if-eqz v0, :cond_38

    .line 41
    :try_start_30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_37} :catch_5a

    move-result v4

    .line 48
    :cond_38
    :goto_38
    const-string v5, "Received PURCHASE_DECLINED tickle for %s reason=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v5

    const-string v6, "install.declinedTickle"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v3, v7}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 42
    :catch_5a
    move-exception v2

    .line 44
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v5, "Non-numeric decline reason: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_38
.end method
