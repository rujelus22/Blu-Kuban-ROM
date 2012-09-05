.class Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "AudienceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/AudienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/android/apps/plus/fragments/AudienceFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V

    return-void
.end method


# virtual methods
.method public onRequestSuggestedParticipants(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/util/List;)V
    .registers 13
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
    .local p4, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    const/4 v2, 0x0

    const v4, 0x7f07019b

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_2f

    .line 110
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v3

    if-ne v3, v5, :cond_2f

    .line 111
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_30

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$300(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :cond_2f
    :goto_2f
    return-void

    .line 113
    :cond_30
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_7d

    .line 114
    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 115
    .local v1, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasFirstName()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, name:Ljava/lang/String;
    :goto_46
    if-nez v0, :cond_52

    .line 118
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasFullName()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_52
    :goto_52
    if-eqz v0, :cond_73

    .line 122
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$300(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f07019c

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .end local v0           #name:Ljava/lang/String;
    :cond_6f
    move-object v0, v2

    .line 115
    goto :goto_46

    .restart local v0       #name:Ljava/lang/String;
    :cond_71
    move-object v0, v2

    .line 118
    goto :goto_52

    .line 126
    :cond_73
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$300(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2f

    .line 129
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_7d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$300(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f07019d

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method public onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_32

    .line 92
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/AudienceFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$200(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 97
    :cond_32
    return-void
.end method

.method public onResponseTimeout(I)V
    .registers 3
    .parameter "requestId"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 104
    :cond_c
    return-void
.end method
