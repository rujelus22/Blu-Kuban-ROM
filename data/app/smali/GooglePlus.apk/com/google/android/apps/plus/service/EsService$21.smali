.class Lcom/google/android/apps/plus/service/EsService$21;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/EsService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultValue:Ljava/lang/Object;

.field final synthetic val$serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5586
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$21;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$21;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$21;->val$serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$21;->val$resultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 5592
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$21;->this$0:Lcom/google/android/apps/plus/service/EsService;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$21;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$21;->val$serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$21;->val$resultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    .line 5593
    return-void
.end method
