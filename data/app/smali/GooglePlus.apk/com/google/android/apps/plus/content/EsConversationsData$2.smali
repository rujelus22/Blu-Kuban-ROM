.class final Lcom/google/android/apps/plus/content/EsConversationsData$2;
.super Ljava/lang/Object;
.source "EsConversationsData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsConversationsData;->processMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$message:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$conversationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$message:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    iput-object p3, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1369
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "conversationId"

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v1, "timestamp"

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$message:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v1, "receiverState"

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$message:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->MESSAGE_RECEIVED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;Landroid/os/Bundle;)V

    .line 1374
    return-void
.end method
