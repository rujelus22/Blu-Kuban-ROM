.class public Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.super Ljava/lang/Object;
.source "RealTimeChatServiceListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConversationCreated(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "resultValue"
    .parameter "result"

    .prologue
    .line 26
    return-void
.end method

.method public onConversationsLoaded(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 31
    return-void
.end method

.method public onRequestSuggestedParticipants(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/util/List;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    return-void
.end method

.method public onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 16
    return-void
.end method

.method public onResponseTimeout(I)V
    .registers 2
    .parameter "requestId"

    .prologue
    .line 20
    return-void
.end method

.method public onUserPresenceChanged(JLjava/lang/String;Z)V
    .registers 5
    .parameter "conversationRowId"
    .parameter "userId"
    .parameter "isPresent"

    .prologue
    .line 35
    return-void
.end method

.method public onUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "conversationRowId"
    .parameter "userId"
    .parameter "userName"
    .parameter "isTyping"

    .prologue
    .line 40
    return-void
.end method
