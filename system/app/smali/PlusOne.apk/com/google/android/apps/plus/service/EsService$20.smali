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

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3547
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$20;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-boolean p4, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$refresh:Z

    iput-object p5, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$20;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$refresh:Z

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$20;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/apps/plus/service/EsService;->doSyncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->access$1400(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLandroid/content/Intent;)V

    .line 3555
    return-void
.end method
