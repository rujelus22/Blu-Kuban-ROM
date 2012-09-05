.class public Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "InviteParticipantsOperation.java"


# instance fields
.field mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field mConversationRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "audience"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 26
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mConversationRowId:J

    .line 27
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantListFromAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v4

    .line 40
    .local v4, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mConversationRowId:J

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->inviteParticipantsLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 42
    return-void
.end method
