.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$8;
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


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V
    .registers 2
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$8;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1792
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 1793
    .local v1, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v3, -0x1

    const-string v4, "C2DM registration error."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onC2dmRegistration(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V

    goto :goto_9

    .line 1797
    .end local v1           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_21
    return-void
.end method
