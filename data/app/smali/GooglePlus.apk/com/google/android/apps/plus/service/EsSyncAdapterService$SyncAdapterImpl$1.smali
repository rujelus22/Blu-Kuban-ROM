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

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$theAccount:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->this$0:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$theAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->this$0:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    #getter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->access$200(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$theAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$extras:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;->val$extras:Landroid/os/Bundle;

    const-string v3, "sync_tag"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->syncComplete(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 425
    return-void

    .line 423
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
