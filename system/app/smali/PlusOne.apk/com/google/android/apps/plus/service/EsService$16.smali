.class Lcom/google/android/apps/plus/service/EsService$16;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService;->processIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/EsService;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3417
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$16;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3424
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$16;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/apps/plus/service/EsService;->doSetCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->access$1200(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    .line 3425
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$16;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$intent:Landroid/content/Intent;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v4, 0x0

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 3429
    :goto_19
    return-void

    .line 3426
    :catch_1a
    move-exception v0

    .line 3427
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$16;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$16;->val$intent:Landroid/content/Intent;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3, v5}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto :goto_19
.end method
