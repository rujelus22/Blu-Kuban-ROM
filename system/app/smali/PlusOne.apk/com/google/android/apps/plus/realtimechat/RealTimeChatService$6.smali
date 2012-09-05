.class final Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->notifyUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conversationRowId:J

.field final synthetic val$isTyping:Z

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2119
    iput-wide p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$conversationRowId:J

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$userName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$isTyping:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2122
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 2123
    .local v0, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    iget-wide v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$conversationRowId:J

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$userName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;->val$isTyping:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    .line 2126
    .end local v0           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_20
    return-void
.end method
