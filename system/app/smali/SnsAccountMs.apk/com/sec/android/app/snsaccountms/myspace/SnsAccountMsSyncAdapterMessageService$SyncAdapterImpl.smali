.class Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SnsAccountMsSyncAdapterMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService$SyncAdapterImpl;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 9
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService$SyncAdapterImpl;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;

    #setter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->mAccount:Landroid/accounts/Account;
    invoke-static {v1, p1}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->access$002(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService$SyncAdapterImpl;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;

    #setter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->mAuthority:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->access$102(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService$SyncAdapterImpl;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;

    #setter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->mSyncResult:Landroid/content/SyncResult;
    invoke-static {v1, p5}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->access$202(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;Landroid/content/SyncResult;)Landroid/content/SyncResult;

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService$SyncAdapterImpl;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;

    const-string v2, "AUTO POLLING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    #calls: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->performSync(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->access$300(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;Z)V
    :try_end_1a
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 103
    :goto_1a
    return-void

    .line 99
    :catch_1b
    move-exception v0

    .line 100
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v1, "SnsAccountMs"

    const-string v2, "SnsAccountMsSyncAdapterMessageService : onPerformSync is CANCELED!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public onSyncCanceled()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService$SyncAdapterImpl;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;

    #calls: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->onSyncCanceled()V
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;->access$400(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsSyncAdapterMessageService;)V

    .line 108
    return-void
.end method
