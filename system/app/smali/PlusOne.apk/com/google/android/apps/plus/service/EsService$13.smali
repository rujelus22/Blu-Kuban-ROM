.class Lcom/google/android/apps/plus/service/EsService$13;
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
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3350
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$13;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3357
    :try_start_2
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$intent:Landroid/content/Intent;

    const-string v4, "person_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3358
    .local v1, personId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$intent:Landroid/content/Intent;

    const-string v4, "refresh"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3359
    .local v2, refresh:Z
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 3361
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$13;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$intent:Landroid/content/Intent;

    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    .line 3365
    .end local v1           #personId:Ljava/lang/String;
    .end local v2           #refresh:Z
    :goto_27
    return-void

    .line 3362
    :catch_28
    move-exception v0

    .line 3363
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$13;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$13;->val$intent:Landroid/content/Intent;

    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5, v8, v7, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v3, v4, v5, v7}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto :goto_27
.end method
