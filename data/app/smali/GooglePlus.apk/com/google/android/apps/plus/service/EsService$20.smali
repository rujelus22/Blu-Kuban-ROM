.class Lcom/google/android/apps/plus/service/EsService$20;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cv:Landroid/content/ContentValues;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4449
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$20;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$cv:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/16 v3, 0xc8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4452
    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$uri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$cv:Landroid/content/ContentValues;

    new-array v7, v11, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$url:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v10, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4454
    .local v1, rows:I
    if-ne v1, v11, :cond_2d

    move v0, v3

    .line 4455
    .local v0, resultCode:I
    :goto_1c
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    if-ne v0, v3, :cond_2f

    const-string v3, "Ok"

    :goto_22
    invoke-direct {v2, v0, v3, v10}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4457
    .local v2, serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$20;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/apps/plus/service/EsService;->access$1100(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    .line 4458
    return-void

    .line 4454
    .end local v0           #resultCode:I
    .end local v2           #serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2d
    const/4 v0, -0x1

    goto :goto_1c

    .line 4455
    .restart local v0       #resultCode:I
    :cond_2f
    const-string v3, "Error"

    goto :goto_22
.end method
