.class Lcom/google/android/apps/plus/service/EsService$11;
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

.field final synthetic val$circleId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$continuationToken:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$userId:Ljava/lang/Long;

.field final synthetic val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$11;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object p5, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$circleId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$userId:Ljava/lang/Long;

    iput-object p7, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$continuationToken:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 2700
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2701
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$11;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$circleId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$userId:Ljava/lang/Long;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$continuationToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService$11;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/apps/plus/service/EsService;->doSyncActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/service/EsService;->access$900(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2703
    return-void
.end method
