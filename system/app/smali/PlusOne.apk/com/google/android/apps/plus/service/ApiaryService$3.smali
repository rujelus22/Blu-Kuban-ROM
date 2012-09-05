.class Lcom/google/android/apps/plus/service/ApiaryService$3;
.super Ljava/lang/Object;
.source "ApiaryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ApiaryService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/ApiaryService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultValue:Lcom/google/android/apps/plus/network/ApiaryOperation;

.field final synthetic val$serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ApiaryService;Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->this$0:Lcom/google/android/apps/plus/service/ApiaryService;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->val$serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->val$resultValue:Lcom/google/android/apps/plus/network/ApiaryOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->this$0:Lcom/google/android/apps/plus/service/ApiaryService;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->val$serviceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ApiaryService$3;->val$resultValue:Lcom/google/android/apps/plus/network/ApiaryOperation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/ApiaryService;->onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    .line 395
    return-void
.end method
