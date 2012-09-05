.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultValue:Ljava/lang/Object;

.field final synthetic val$serviceResult:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2078
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$serviceResult:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    iput-object p4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$resultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$serviceResult:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$resultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    .line 2085
    return-void
.end method
