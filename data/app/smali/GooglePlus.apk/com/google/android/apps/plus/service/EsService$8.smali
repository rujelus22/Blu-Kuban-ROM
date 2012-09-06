.class Lcom/google/android/apps/plus/service/EsService$8;
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

.field final synthetic val$backgroundOperation:Z

.field final synthetic val$circleId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$continuationToken:Ljava/lang/String;

.field final synthetic val$gaiaId:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3224
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$8;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object p5, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$circleId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$gaiaId:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$continuationToken:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$intent:Landroid/content/Intent;

    iput-boolean p9, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$backgroundOperation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 3230
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3231
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$8;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$circleId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$gaiaId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$continuationToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$intent:Landroid/content/Intent;

    iget-boolean v8, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$backgroundOperation:Z

    #calls: Lcom/google/android/apps/plus/service/EsService;->doSyncActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/service/EsService;->access$900(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 3233
    return-void
.end method
