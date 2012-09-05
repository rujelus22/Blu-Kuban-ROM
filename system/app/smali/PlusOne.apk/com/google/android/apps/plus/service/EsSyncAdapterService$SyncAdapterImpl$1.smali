.class Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;
.super Ljava/lang/Object;
.source "EsSyncAdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

.field final synthetic val$activeAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->this$0:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$activeAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 354
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$activeAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$extras:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$extras:Landroid/os/Bundle;

    const-string v3, "sync_tag"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->syncComplete(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 356
    return-void

    .line 354
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method
