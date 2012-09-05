.class Lcom/google/android/finsky/services/ContentSyncService$1;
.super Ljava/lang/Object;
.source "ContentSyncService.java"

# interfaces
.implements Lcom/google/android/finsky/services/CombinedResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ContentSyncService;->onStartCommand(Landroid/content/Intent;II)I
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private accountIdx:I

.field final synthetic this$0:Lcom/google/android/finsky/services/ContentSyncService;

.field final synthetic val$syncAccounts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ContentSyncService;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    iput-object p2, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->val$syncAccounts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->accountIdx:I

    return-void
.end method

.method private attemptNextSync()V
    .registers 4

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->accountIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->accountIdx:I

    .line 62
    iget v0, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->accountIdx:I

    iget-object v1, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->val$syncAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 63
    iget-object v1, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->val$syncAccounts:Ljava/util/List;

    iget v2, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->accountIdx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;

    iget-object v0, v0, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->account:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/services/ContentSyncService;->attemptContentSync(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V
    invoke-static {v1, v0, p0}, Lcom/google/android/finsky/services/ContentSyncService;->access$000(Lcom/google/android/finsky/services/ContentSyncService;Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V

    .line 68
    :goto_21
    return-void

    .line 65
    :cond_22
    const-string v0, "Done checking in."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ContentSyncService;->stopSelf()V

    goto :goto_21
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 44
    const-string v0, "Error syncing content: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/finsky/services/ContentSyncService$1;->attemptNextSync()V

    .line 46
    return-void
.end method

.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 50
    const-string v2, "Phonesky checkin succeeded for account"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->val$syncAccounts:Ljava/util/List;

    iget v3, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->accountIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;

    .line 52
    .local v1, checkinHash:Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;
    iget-object v0, v1, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->account:Ljava/lang/String;

    .line 53
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/utils/VendingPreferences;->getLastCheckinHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    iget v3, v1, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->localAssetHash:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 55
    invoke-static {v0}, Lcom/google/android/finsky/utils/VendingPreferences;->getLastSystemAppsHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    iget v3, v1, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->systemAppHash:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/google/android/finsky/services/ContentSyncService$1;->attemptNextSync()V

    .line 58
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/ContentSyncService$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)V

    return-void
.end method
