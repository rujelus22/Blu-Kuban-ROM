.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    const-class v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xdd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 405
    return-void
.end method
