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

.field final synthetic val$continuationToken:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$location:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field final synthetic val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2671
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$10;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object p5, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$location:Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object p6, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$continuationToken:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2677
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2678
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$10;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$location:Lcom/google/wireless/tacotruck/proto/Data$Location;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$continuationToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService$10;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/apps/plus/service/EsService;->doSyncNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->access$800(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2680
    return-void
.end method
