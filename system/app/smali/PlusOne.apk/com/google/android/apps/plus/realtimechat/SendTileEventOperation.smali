.class public Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "SendTileEventOperation.java"


# instance fields
.field private final mConversationId:Ljava/lang/String;

.field private final mTileEventData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileEventType:Ljava/lang/String;

.field private final mTileType:Ljava/lang/String;

.field private final mTileVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationId"
    .parameter "tileType"
    .parameter "tileVersion"
    .parameter "tileEventType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p7, tileEventData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 22
    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mConversationId:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileType:Ljava/lang/String;

    .line 24
    iput p5, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileVersion:I

    .line 25
    iput-object p6, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileEventType:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileEventData:Ljava/util/HashMap;

    .line 27
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mConversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileType:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileVersion:I

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileEventType:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;->mTileEventData:Ljava/util/HashMap;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->tileEventRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 33
    return-void
.end method
