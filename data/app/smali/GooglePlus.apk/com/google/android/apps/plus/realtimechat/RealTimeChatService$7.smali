.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$7;
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

.field final synthetic val$registration:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$7;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$7;->val$registration:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1761
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 1762
    .local v1, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$7;->val$registration:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onC2dmRegistration(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V

    goto :goto_8

    .line 1764
    .end local v1           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_1f
    return-void
.end method
