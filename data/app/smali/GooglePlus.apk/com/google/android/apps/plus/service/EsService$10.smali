.class Lcom/google/android/apps/plus/service/EsService$10;
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
    .line 3947
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$10;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3954
    :try_start_2
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$intent:Landroid/content/Intent;

    const-string v4, "person_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3955
    .local v1, personId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$intent:Landroid/content/Intent;

    const-string v4, "refresh"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3958
    .local v2, refresh:Z
    if-eqz v2, :cond_2a

    .line 3959
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->refreshProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 3964
    :goto_1c
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$10;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$intent:Landroid/content/Intent;

    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v6, 0x0

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    .line 3968
    .end local v1           #personId:Ljava/lang/String;
    .end local v2           #refresh:Z
    :goto_29
    return-void

    .line 3961
    .restart local v1       #personId:Ljava/lang/String;
    .restart local v2       #refresh:Z
    :cond_2a
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    goto :goto_1c

    .line 3965
    .end local v1           #personId:Ljava/lang/String;
    .end local v2           #refresh:Z
    :catch_33
    move-exception v0

    .line 3966
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$10;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$intent:Landroid/content/Intent;

    new-instance v5, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v5, v8, v7, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v3, v4, v5, v7}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    goto :goto_29
.end method
