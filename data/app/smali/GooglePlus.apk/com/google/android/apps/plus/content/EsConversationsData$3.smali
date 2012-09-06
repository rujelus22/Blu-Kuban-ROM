.class final Lcom/google/android/apps/plus/content/EsConversationsData$3;
.super Ljava/lang/Object;
.source "EsConversationsData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;IZLjava/lang/String;IJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalConversationId:Ljava/lang/String;

.field final synthetic val$messageState:I

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;JILandroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4469
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$finalConversationId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$timestamp:J

    iput p4, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$messageState:I

    iput-object p5, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4473
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "conversationId"

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$finalConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4474
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4475
    const-string v1, "receiverState"

    iget v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$messageState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsConversationsData$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->MESSAGE_RECEIVED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;Landroid/os/Bundle;)V

    .line 4478
    return-void
.end method
