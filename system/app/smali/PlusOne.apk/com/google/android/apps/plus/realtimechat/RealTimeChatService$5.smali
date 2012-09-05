.class final Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->notifyUserPresenceChanged(JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conversationRowId:J

.field final synthetic val$isPresent:Z

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2099
    iput-wide p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;->val$conversationRowId:J

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;->val$userId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;->val$isPresent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2102
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 2103
    .local v1, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;->val$conversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;->val$userId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;->val$isPresent:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onUserPresenceChanged(JLjava/lang/String;Z)V

    goto :goto_8

    .line 2105
    .end local v1           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_1e
    return-void
.end method
