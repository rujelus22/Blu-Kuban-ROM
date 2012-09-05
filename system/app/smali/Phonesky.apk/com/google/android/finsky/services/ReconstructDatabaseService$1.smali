.class Lcom/google/android/finsky/services/ReconstructDatabaseService$1;
.super Ljava/lang/Object;
.source "ReconstructDatabaseService.java"

# interfaces
.implements Lcom/google/android/finsky/services/CombinedResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ReconstructDatabaseService;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/services/CombinedResponseListener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private accountIdx:I

.field private allSucceeded:Z

.field final synthetic this$0:Lcom/google/android/finsky/services/ReconstructDatabaseService;

.field final synthetic val$accounts:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ReconstructDatabaseService;[Landroid/accounts/Account;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->this$0:Lcom/google/android/finsky/services/ReconstructDatabaseService;

    iput-object p2, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->accountIdx:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->allSucceeded:Z

    return-void
.end method

.method private attemptNextReconstruct()V
    .registers 4

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->accountIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->accountIdx:I

    .line 78
    iget v0, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->accountIdx:I

    iget-object v1, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->val$accounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->this$0:Lcom/google/android/finsky/services/ReconstructDatabaseService;

    iget-object v1, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->val$accounts:[Landroid/accounts/Account;

    iget v2, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->accountIdx:I

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/services/ReconstructDatabaseService;->initiateReconstruct(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V
    invoke-static {v0, v1, p0}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->access$100(Lcom/google/android/finsky/services/ReconstructDatabaseService;Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V

    .line 83
    :goto_1a
    return-void

    .line 81
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->finishReconstruct()V

    goto :goto_1a
.end method

.method private finishReconstruct()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 86
    const-string v1, "Done reconstructing."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    new-instance v1, Lcom/google/android/finsky/local/MigrationAsyncTask;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/local/MigrationAsyncTask;-><init>(Landroid/content/Context;Lcom/google/android/finsky/local/AssetStore;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/local/MigrationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    const-string v1, "Resuming checkin listener as reconstruction completes."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCheckinAssetStoreListener()Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    move-result-object v1

    const-string v2, "ReconstructDatabaseService"

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->resume(Ljava/lang/String;)V

    .line 96
    iget-boolean v1, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->allSucceeded:Z

    if-eqz v1, :cond_57

    .line 99
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_RECONSTRUCT_TIMESTAMP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 104
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_AID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, pendingRestoreAid:Ljava/lang/String;
    if-eqz v0, :cond_57

    .line 106
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_AID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 108
    iget-object v1, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->this$0:Lcom/google/android/finsky/services/ReconstructDatabaseService;

    invoke-static {v1, v0}, Lcom/google/android/finsky/services/RestoreService;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    .end local v0           #pendingRestoreAid:Ljava/lang/String;
    :cond_57
    iget-object v1, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->this$0:Lcom/google/android/finsky/services/ReconstructDatabaseService;

    invoke-virtual {v1}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->stopSelf()V

    .line 113
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "Error on database reconstruct request: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iput-boolean v2, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->allSucceeded:Z

    .line 62
    invoke-direct {p0}, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->attemptNextReconstruct()V

    .line 63
    return-void
.end method

.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)V
    .registers 9
    .parameter "response"

    .prologue
    .line 67
    const-string v0, "Phonesky reconstruct succeeded for account"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->this$0:Lcom/google/android/finsky/services/ReconstructDatabaseService;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->val$accounts:[Landroid/accounts/Account;

    iget v6, p0, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->accountIdx:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/services/ReconstructDatabaseService;->updateFromReconstruct(Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/download/DownloadQueue;Ljava/util/List;Ljava/lang/String;)I
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->access$000(Lcom/google/android/finsky/services/ReconstructDatabaseService;Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/download/DownloadQueue;Ljava/util/List;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->handledDatabaseSync()V

    .line 73
    invoke-direct {p0}, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->attemptNextReconstruct()V

    .line 74
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)V

    return-void
.end method
