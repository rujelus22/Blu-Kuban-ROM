.class Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;
.super Ljava/lang/Object;
.source "UpdatesAvailableReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->checkForUpdates(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/model/AssetList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;Landroid/accounts/Account;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->this$0:Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/model/AssetList;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->this$0:Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

    #getter for: Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mQueuedAssets:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->access$000(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->val$account:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/vending/model/AssetList;->getAssets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->this$0:Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->checkForUpdates(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->access$100(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Lcom/google/android/vending/model/AssetList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;->onResponse(Lcom/google/android/vending/model/AssetList;)V

    return-void
.end method
