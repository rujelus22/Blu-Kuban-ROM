.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->processIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1669
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 1670
    .local v1, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$intent:Landroid/content/Intent;

    const-string v3, "reason"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onDisconnected(I)V

    goto :goto_8

    .line 1673
    .end local v1           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_21
    return-void
.end method
