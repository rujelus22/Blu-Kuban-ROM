.class Lcom/google/android/apps/plus/service/EsService$17;
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
    .line 3435
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$17;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 3442
    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$intent:Landroid/content/Intent;

    const-string v2, "circle_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3443
    .local v9, circleId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$intent:Landroid/content/Intent;

    const-string v2, "person_ids"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 3445
    .local v12, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v6, v1

    .line 3446
    .local v6, circle:[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3447
    .local v3, personId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3451
    .local v0, op:Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->start()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_1c

    .line 3454
    .end local v0           #op:Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;
    .end local v3           #personId:Ljava/lang/String;
    .end local v6           #circle:[Ljava/lang/String;
    .end local v9           #circleId:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_39
    move-exception v10

    .line 3455
    .local v10, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$17;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$intent:Landroid/content/Intent;

    new-instance v4, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v4, v14, v13, v10}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v4, v13}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    .line 3457
    .end local v10           #ex:Ljava/lang/Exception;
    :goto_46
    return-void

    .line 3453
    .restart local v6       #circle:[Ljava/lang/String;
    .restart local v9       #circleId:Ljava/lang/String;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_47
    :try_start_47
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$17;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$17;->val$intent:Landroid/content/Intent;

    new-instance v4, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v4}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    const/4 v5, 0x0

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v1, v2, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_54} :catch_39

    goto :goto_46
.end method
