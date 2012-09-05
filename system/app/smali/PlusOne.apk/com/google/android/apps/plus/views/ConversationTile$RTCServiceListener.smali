.class Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "ConversationTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ConversationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/ConversationTile;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/ConversationTile;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/ConversationTile;Lcom/google/android/apps/plus/views/ConversationTile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/views/ConversationTile;)V

    return-void
.end method


# virtual methods
.method public onUserPresenceChanged(JLjava/lang/String;Z)V
    .registers 9
    .parameter "conversationRowId"
    .parameter "userId"
    .parameter "isPresent"

    .prologue
    .line 41
    if-eqz p4, :cond_2d

    .line 42
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/views/ConversationTile;

    #getter for: Lcom/google/android/apps/plus/views/ConversationTile;->mActiveParticipantIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/ConversationTile;->access$100(Lcom/google/android/apps/plus/views/ConversationTile;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_b
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/views/ConversationTile;

    #getter for: Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/views/ConversationTile;->access$200(Lcom/google/android/apps/plus/views/ConversationTile;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_37

    .line 48
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/views/ConversationTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ConversationTile;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    .line 49
    .local v1, listener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;->onParticipantPresenceChanged()V

    goto :goto_1d

    .line 44
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;
    :cond_2d
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/views/ConversationTile;

    #getter for: Lcom/google/android/apps/plus/views/ConversationTile;->mActiveParticipantIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/ConversationTile;->access$100(Lcom/google/android/apps/plus/views/ConversationTile;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 52
    :cond_37
    return-void
.end method
