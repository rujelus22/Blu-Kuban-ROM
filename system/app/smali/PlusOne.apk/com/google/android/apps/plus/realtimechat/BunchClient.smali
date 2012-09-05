.class public Lcom/google/android/apps/plus/realtimechat/BunchClient;
.super Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;
.source "BunchClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,
        Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;,
        Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    }
.end annotation


# instance fields
.field private mClientVersion:Ljava/lang/String;

.field private mConnected:Z

.field private mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

.field private final mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueuedCommands:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;)V
    .registers 12
    .parameter "account"
    .parameter "context"
    .parameter "backend"
    .parameter "backendAddress"
    .parameter "listener"

    .prologue
    .line 168
    const-string v5, "bunch"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;-><init>(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-direct {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    .line 171
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 172
    return-void
.end method

.method private static areConversationListRequestsEqual(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Z
    .registers 7
    .parameter "l"
    .parameter "r"

    .prologue
    const/4 v0, 0x1

    .line 537
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    move-result-object v2

    if-ne v1, v2, :cond_3a

    .line 538
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_24

    .line 548
    :cond_23
    :goto_23
    return v0

    .line 542
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasConversationId()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasConversationId()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_23

    .line 548
    :cond_3a
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3

    .prologue
    .line 501
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->setClientVersion(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private expectResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Z
    .registers 3
    .parameter "command"

    .prologue
    .line 558
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingRequest()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 562
    :cond_18
    const/4 v0, 0x0

    .line 564
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 681
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 682
    const-string v0, "ChatMessage"

    .line 780
    :goto_8
    return-object v0

    .line 683
    :cond_9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 684
    const-string v0, "ChatMessageRequest"

    goto :goto_8

    .line 685
    :cond_12
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageResponse()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 686
    const-string v0, "ChatMessageResponse"

    goto :goto_8

    .line 687
    :cond_1b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListRequest()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 688
    const-string v0, "ConversationListRequest"

    goto :goto_8

    .line 689
    :cond_24
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 690
    const-string v0, "ConversationListResponse"

    goto :goto_8

    .line 691
    :cond_2d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceRequest()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 692
    const-string v0, "ConversationPreferenceRequest"

    goto :goto_8

    .line 693
    :cond_36
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceResponse()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 694
    const-string v0, "ConversationPreferenceResponse"

    goto :goto_8

    .line 695
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 696
    const-string v0, "ConversationRenameRequest"

    goto :goto_8

    .line 697
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameResponse()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 698
    const-string v0, "ConversationRenameResponse"

    goto :goto_8

    .line 699
    :cond_51
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 700
    const-string v0, "ConversationRequest"

    goto :goto_8

    .line 701
    :cond_5a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 702
    const-string v0, "ConversationRequest"

    goto :goto_8

    .line 703
    :cond_63
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 704
    const-string v0, "ConversationSearchRequest"

    goto :goto_8

    .line 705
    :cond_6c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 706
    const-string v0, "ConversationSearchResponse"

    goto :goto_8

    .line 707
    :cond_75
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationRequest()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 708
    const-string v0, "DeviceRegistrationRequest"

    goto :goto_8

    .line 709
    :cond_7e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationResponse()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 710
    const-string v0, "DeviceRegistrationResponse"

    goto :goto_8

    .line 711
    :cond_87
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 712
    const-string v0, "Error"

    goto/16 :goto_8

    .line 713
    :cond_91
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 714
    const-string v0, "EventSearchRequest"

    goto/16 :goto_8

    .line 715
    :cond_9b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 716
    const-string v0, "EventSearchResponse"

    goto/16 :goto_8

    .line 717
    :cond_a5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 718
    const-string v0, "EventStreamRequest"

    goto/16 :goto_8

    .line 719
    :cond_af
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSteamResponse()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 720
    const-string v0, "EventSteamResponse"

    goto/16 :goto_8

    .line 721
    :cond_b9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 722
    const-string v0, "GroupConversationRename"

    goto/16 :goto_8

    .line 723
    :cond_c3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInvalidateLocalCache()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 724
    const-string v0, "InvalidateLocalCache"

    goto/16 :goto_8

    .line 725
    :cond_cd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 726
    const-string v0, "InviteRequest"

    goto/16 :goto_8

    .line 727
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 728
    const-string v0, "InviteResponse"

    goto/16 :goto_8

    .line 729
    :cond_e1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 730
    const-string v0, "LeaveConversationRequest"

    goto/16 :goto_8

    .line 731
    :cond_eb
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 732
    const-string v0, "LeaveConversationResponse"

    goto/16 :goto_8

    .line 733
    :cond_f5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 734
    const-string v0, "MembershipChange"

    goto/16 :goto_8

    .line 735
    :cond_ff
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 736
    const-string v0, "Migration"

    goto/16 :goto_8

    .line 737
    :cond_109
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingRequest()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 738
    const-string v0, "PingRequest"

    goto/16 :goto_8

    .line 739
    :cond_113
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingResponse()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 740
    const-string v0, "PingResponse"

    goto/16 :goto_8

    .line 741
    :cond_11d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresence()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 742
    const-string v0, "Presence"

    goto/16 :goto_8

    .line 743
    :cond_127
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceRequest()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 744
    const-string v0, "PresenceRequest"

    goto/16 :goto_8

    .line 745
    :cond_131
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceResponse()Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 746
    const-string v0, "PresenceResponse"

    goto/16 :goto_8

    .line 747
    :cond_13b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 748
    const-string v0, "Receipt"

    goto/16 :goto_8

    .line 749
    :cond_145
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 750
    const-string v0, "ReceiptRequest"

    goto/16 :goto_8

    .line 751
    :cond_14f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptResponse()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 752
    const-string v0, "ReceiptResponse"

    goto/16 :goto_8

    .line 753
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 754
    const-string v0, "ReplyToInviteRequest"

    goto/16 :goto_8

    .line 755
    :cond_163
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 756
    const-string v0, "ReplyToInviteResponse"

    goto/16 :goto_8

    .line 757
    :cond_16d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsRequest()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 758
    const-string v0, "SetAclsRequest"

    goto/16 :goto_8

    .line 759
    :cond_177
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsResponse()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 760
    const-string v0, "SetAclsResponse"

    goto/16 :goto_8

    .line 761
    :cond_181
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTyping()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 762
    const-string v0, "Typing"

    goto/16 :goto_8

    .line 763
    :cond_18b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingRequest()Z

    move-result v0

    if-eqz v0, :cond_195

    .line 764
    const-string v0, "TypingRequest"

    goto/16 :goto_8

    .line 765
    :cond_195
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingResponse()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 766
    const-string v0, "TypingResponse"

    goto/16 :goto_8

    .line 767
    :cond_19f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationRequest()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 768
    const-string v0, "UserCreationRequest"

    goto/16 :goto_8

    .line 769
    :cond_1a9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationResponse()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 770
    const-string v0, "UserCreationResponse"

    goto/16 :goto_8

    .line 771
    :cond_1b3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 772
    const-string v0, "UserInfoRequest"

    goto/16 :goto_8

    .line 773
    :cond_1bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 774
    const-string v0, "UserInfoResponse"

    goto/16 :goto_8

    .line 775
    :cond_1c7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 776
    const-string v0, "SuggestionsRequest"

    goto/16 :goto_8

    .line 777
    :cond_1d1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 778
    const-string v0, "SuggestionsResponse"

    goto/16 :goto_8

    .line 780
    :cond_1db
    const-string v0, "Unknown"

    goto/16 :goto_8
.end method

.method private processCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;Ljava/util/List;)V
    .registers 18
    .parameter "response"
    .parameter "operationState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p3, bunchResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;>;"
    const/4 v4, 0x0

    .line 579
    .local v4, requestId:I
    const/4 v3, 0x0

    .line 580
    .local v3, request:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v7

    if-nez v7, :cond_88

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationResponse()Z

    move-result v7

    if-nez v7, :cond_88

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasRequestClientId()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 583
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, clientId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    monitor-enter v8

    .line 585
    :try_start_1b
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 586
    .local v2, pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->pendingRequestTimestamp(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v5

    .line 588
    .local v5, requestTimestamp:Ljava/lang/Long;
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->requestPending(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 591
    if-eqz v2, :cond_37

    .line 592
    iget v4, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequestId:I

    .line 593
    iget-object v3, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 597
    :cond_37
    new-instance v6, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 599
    .local v6, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/Object;)V

    .line 602
    const-string v7, "BunchClient"

    const/4 v9, 0x4

    invoke-static {v7, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_87

    if-eqz v3, :cond_87

    .line 603
    const-string v7, "BunchClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "command type ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] round trip time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_87
    monitor-exit v8
    :try_end_88
    .catchall {:try_start_1b .. :try_end_88} :catchall_10a

    .line 621
    .end local v1           #clientId:Ljava/lang/String;
    .end local v2           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v5           #requestTimestamp:Ljava/lang/Long;
    .end local v6           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_88
    const-string v7, "BunchClient"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 622
    const-string v7, "BunchClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] processing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-static {v7, v8, p1, v3, v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->processBunchCommand(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 627
    :goto_ce
    return-void

    .line 611
    .restart local v1       #clientId:Ljava/lang/String;
    .restart local v2       #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .restart local v5       #requestTimestamp:Ljava/lang/Long;
    :cond_cf
    :try_start_cf
    const-string v7, "BunchClient"

    const/4 v9, 0x4

    invoke-static {v7, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_108

    .line 612
    const-string v7, "BunchClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_108
    monitor-exit v8

    goto :goto_ce

    .line 618
    .end local v2           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v5           #requestTimestamp:Ljava/lang/Long;
    :catchall_10a
    move-exception v7

    monitor-exit v8
    :try_end_10c
    .catchall {:try_start_cf .. :try_end_10c} :catchall_10a

    throw v7
.end method

.method private shouldSendPendingCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Z
    .registers 10
    .parameter "command"

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 473
    .local v0, timeSince:J
    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-lez v2, :cond_1f

    .line 474
    const/4 v2, 0x0

    .line 477
    .end local v0           #timeSince:J
    :goto_1e
    return v2

    :cond_1f
    const/4 v2, 0x1

    goto :goto_1e
.end method

.method private updateAcl(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)V
    .registers 9
    .parameter "response"

    .prologue
    const/4 v6, 0x3

    const v5, 0x7f070004

    .line 389
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 390
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "BunchClient"

    invoke-static {v2, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 392
    const-string v2, "BunchClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAcl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_34
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59

    .line 395
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0702cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    :cond_55
    :goto_55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    return-void

    .line 397
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7b

    .line 398
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0702ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_55

    .line 400
    :cond_7b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v2

    if-ne v2, v6, :cond_55

    .line 401
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0702cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_55
.end method


# virtual methods
.method public declared-synchronized connected()Z
    .registers 2

    .prologue
    .line 433
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasPendingCommands()Z
    .registers 12

    .prologue
    const/4 v6, 0x1

    .line 450
    monitor-enter p0

    :try_start_2
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_68

    move-result v7

    if-nez v7, :cond_c

    .line 466
    :cond_a
    :goto_a
    monitor-exit p0

    return v6

    .line 454
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/32 v9, 0x15f90

    sub-long v1, v7, v9

    .line 455
    .local v1, oldestValid:J
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getOutdatedRequestIds(J)Ljava/util/List;

    move-result-object v5

    .line 457
    .local v5, timedOutRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 458
    .local v4, timedOutId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 459
    .local v3, request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    const-string v7, "BunchClient"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 460
    const-string v8, "BunchClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_6b

    const/4 v7, 0x0

    :goto_4c
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " type ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] timed out"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_c .. :try_end_67} :catchall_68

    goto :goto_1f

    .line 450
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #oldestValid:J
    .end local v3           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v4           #timedOutId:Ljava/lang/String;
    .end local v5           #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_68
    move-exception v6

    monitor-exit p0

    throw v6

    .line 460
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #oldestValid:J
    .restart local v3       #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .restart local v4       #timedOutId:Ljava/lang/String;
    .restart local v5       #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6b
    :try_start_6b
    iget-object v7, v3, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4c

    .line 465
    .end local v3           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v4           #timedOutId:Ljava/lang/String;
    :cond_72
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->trim(J)V

    .line 466
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->isEmpty()Z
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_68

    move-result v7

    if-eqz v7, :cond_a

    const/4 v6, 0x0

    goto :goto_a
.end method

.method protected declared-synchronized onConnected()V
    .registers 4

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    const-string v1, "BunchClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 439
    const-string v1, "BunchClient"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 444
    .local v0, listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    if-eqz v0, :cond_1b

    .line 445
    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onConnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 447
    :cond_1b
    monitor-exit p0

    return-void

    .line 438
    .end local v0           #listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized onDisconnected(I)V
    .registers 13
    .parameter "reason"

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    const-string v7, "BunchClient"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 410
    const-string v7, "BunchClient"

    const-string v8, "Disconnected from server"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/32 v9, 0x15f90

    sub-long v2, v7, v9

    .line 414
    .local v2, oldestValid:J
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getRequestIds()Ljava/util/List;

    move-result-object v6

    .line 415
    .local v6, requests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 416
    .local v5, requestId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 417
    .local v4, request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    const-string v7, "BunchClient"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 418
    const-string v8, "BunchClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_70

    const/4 v7, 0x0

    :goto_51
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " type ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] failed due to disconnect"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6d

    goto :goto_24

    .line 409
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #oldestValid:J
    .end local v4           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v5           #requestId:Ljava/lang/String;
    .end local v6           #requests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_6d
    move-exception v7

    monitor-exit p0

    throw v7

    .line 418
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #oldestValid:J
    .restart local v4       #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .restart local v5       #requestId:Ljava/lang/String;
    .restart local v6       #requests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_70
    :try_start_70
    iget-object v7, v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v7

    goto :goto_51

    .line 423
    .end local v4           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v5           #requestId:Ljava/lang/String;
    :cond_77
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v2, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->trim(J)V

    .line 425
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    .line 426
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 427
    .local v1, listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    if-eqz v1, :cond_86

    .line 428
    invoke-interface {v1, p0, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onDisconnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;I)V
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_6d

    .line 430
    :cond_86
    monitor-exit p0

    return-void
.end method

.method protected onMessageReceived(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)V
    .registers 25
    .parameter "batchCommand"

    .prologue
    .line 261
    new-instance v11, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;-><init>(Ljava/lang/Long;)V

    .line 264
    .local v11, operationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 266
    .local v2, bunchResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;>;"
    const/16 v18, 0x0

    .line 268
    .local v18, userCreated:Z
    monitor-enter p0

    .line 270
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    const-wide/32 v21, 0x15f90

    sub-long v9, v19, v21

    .line 271
    .local v9, oldestValid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getOutdatedRequestIds(J)Ljava/util/List;

    move-result-object v17

    .line 273
    .local v17, timedOutRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 274
    .local v16, timedOutId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 275
    .local v13, request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    const-string v19, "BunchClient"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 276
    const-string v20, "BunchClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "request "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v13, :cond_9a

    const/16 v19, 0x0

    :goto_67
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " type ["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "] timed out"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 314
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #oldestValid:J
    .end local v13           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v16           #timedOutId:Ljava/lang/String;
    .end local v17           #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_97
    move-exception v19

    monitor-exit p0
    :try_end_99
    .catchall {:try_start_13 .. :try_end_99} :catchall_97

    throw v19

    .line 276
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #oldestValid:J
    .restart local v13       #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .restart local v16       #timedOutId:Ljava/lang/String;
    .restart local v17       #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9a
    :try_start_9a
    iget-object v0, v13, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v19

    goto :goto_67

    .line 281
    .end local v13           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v16           #timedOutId:Ljava/lang/String;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->trim(J)V

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getCommandCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_174

    .line 285
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getCommand(I)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v3

    .line 286
    .local v3, command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingResponse()Z

    move-result v19

    if-eqz v19, :cond_f9

    .line 287
    const-string v19, "BunchClient"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_df

    .line 288
    const-string v19, "BunchClient"

    const-string v20, "Ping response from backend"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_df
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 292
    .local v7, listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v19, v0

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/Object;)V

    .line 293
    if-eqz v7, :cond_f7

    .line 294
    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onPingReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    .line 296
    :cond_f7
    monitor-exit p0

    .line 378
    .end local v3           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v7           #listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    :cond_f8
    :goto_f8
    return-void

    .line 297
    .restart local v3       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_f9
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v19

    if-eqz v19, :cond_150

    .line 298
    const-string v19, "BunchClient"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_13b

    .line 299
    const-string v19, "BunchClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bunch server error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetail()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getOriginalCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_13b
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasRequestClientId()Z

    move-result v19

    if-eqz v19, :cond_14e

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v19, v0

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/Object;)V

    .line 306
    :cond_14e
    monitor-exit p0

    goto :goto_f8

    .line 307
    :cond_150
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoResponse()Z

    move-result v19

    if-eqz v19, :cond_174

    .line 308
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasRequestClientId()Z

    move-result v19

    if-eqz v19, :cond_169

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v19, v0

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/Object;)V

    .line 311
    :cond_169
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->updateAcl(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)V

    .line 314
    .end local v3           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_174
    monitor-exit p0
    :try_end_175
    .catchall {:try_start_9a .. :try_end_175} :catchall_97

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getCommandList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_197

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 320
    .local v14, response:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationResponse()Z

    move-result v19

    if-eqz v19, :cond_191

    .line 321
    const/16 v18, 0x1

    .line 323
    :cond_191
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->processCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;Ljava/util/List;)V

    goto :goto_17d

    .line 326
    .end local v14           #response:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_197
    invoke-virtual {v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->shouldTriggerNotifications()Z

    move-result v19

    if-eqz v19, :cond_1aa

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 330
    :cond_1aa
    invoke-virtual {v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getClientVersionChanged()Z

    move-result v19

    if-eqz v19, :cond_1b3

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->updateClientVersion()V

    .line 334
    :cond_1b3
    monitor-enter p0

    .line 337
    :try_start_1b4
    invoke-virtual {v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getResponses()Ljava/util/List;

    move-result-object v15

    .line 338
    .local v15, responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v5, v19, -0x1

    .local v5, index:I
    :goto_1be
    if-ltz v5, :cond_210

    .line 339
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 340
    .restart local v3       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListRequest()Z

    move-result v19

    if-eqz v19, :cond_20d

    .line 342
    const/4 v6, 0x0

    .line 343
    .local v6, isExpectingConversationList:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_208

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 344
    .restart local v13       #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-eqz v13, :cond_1d7

    iget-object v0, v13, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d7

    iget-object v0, v13, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListRequest()Z

    move-result v19

    if-eqz v19, :cond_1d7

    .line 346
    iget-object v0, v13, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v12

    .line 348
    .local v12, pendingRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v8

    .line 350
    .local v8, newRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-static {v12, v8}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->areConversationListRequestsEqual(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Z

    move-result v19

    if-eqz v19, :cond_1d7

    .line 352
    const/4 v6, 0x1

    .line 357
    .end local v8           #newRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .end local v12           #pendingRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .end local v13           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :cond_208
    if-eqz v6, :cond_20d

    .line 360
    invoke-interface {v15, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    .end local v6           #isExpectingConversationList:Z
    :cond_20d
    add-int/lit8 v5, v5, -0x1

    goto :goto_1be

    .line 367
    .end local v3           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_210
    if-eqz v18, :cond_215

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendPendingCommands()V

    .line 371
    :cond_215
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;I)Z

    .line 372
    monitor-exit p0
    :try_end_21f
    .catchall {:try_start_1b4 .. :try_end_21f} :catchall_22c

    .line 374
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 375
    .restart local v7       #listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    if-eqz v7, :cond_f8

    .line 376
    move-object/from16 v0, p0

    invoke-interface {v7, v0, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onResultsReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/util/List;)V

    goto/16 :goto_f8

    .line 372
    .end local v5           #index:I
    .end local v7           #listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    .end local v15           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;>;"
    :catchall_22c
    move-exception v19

    :try_start_22d
    monitor-exit p0
    :try_end_22e
    .catchall {:try_start_22d .. :try_end_22e} :catchall_22c

    throw v19
.end method

.method protected onMessageReceived([B)V
    .registers 6
    .parameter "message"

    .prologue
    .line 251
    :try_start_0
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->parseFrom([B)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 252
    .local v0, batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->onMessageReceived(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)V
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_7} :catch_8

    .line 258
    .end local v0           #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    :cond_7
    :goto_7
    return-void

    .line 253
    :catch_8
    move-exception v1

    .line 254
    .local v1, exception:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "BunchClient"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 255
    const-string v2, "BunchClient"

    const-string v3, "Invalid BunchCommand message received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public declared-synchronized sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)Z
    .registers 5
    .parameter "command"
    .parameter "requestId"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 192
    .local v0, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;I)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v1

    monitor-exit p0

    return v1

    .line 191
    .end local v0           #commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;>;"
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendCommands(Ljava/util/Collection;I)Z
    .registers 10
    .parameter
    .parameter "requestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, commands:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;>;"
    monitor-enter p0

    const/4 v3, 0x0

    .line 199
    .local v3, success:Z
    :try_start_2
    const-string v4, "BunchClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 200
    const-string v4, "BunchClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCommands "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_23
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 203
    .local v0, command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->expectResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 204
    new-instance v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;ILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 205
    .local v2, pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    const-string v4, "BunchClient"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 206
    const-string v4, "BunchClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] expecting response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_77
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->addRequest(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_2 .. :try_end_80} :catchall_81

    goto :goto_27

    .line 198
    .end local v0           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :catchall_81
    move-exception v4

    monitor-exit p0

    throw v4

    .line 212
    .restart local v0       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_84
    :try_start_84
    const-string v4, "BunchClient"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 213
    const-string v4, "BunchClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] expecting response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 219
    .end local v0           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_bf
    iget-boolean v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    if-eqz v4, :cond_d8

    .line 220
    const/4 v3, 0x1

    .line 221
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addAllCommand(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendMessage([B)Z

    move-result v3

    .line 226
    :cond_d8
    if-nez v3, :cond_106

    .line 227
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_de
    :goto_de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 228
    .restart local v0       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->shouldEnqueueIfDisconnected(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 229
    const-string v4, "BunchClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 230
    const-string v4, "BunchClient"

    const-string v5, "queueing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_100
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_de

    .line 236
    .end local v0           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_106
    const-string v4, "BunchClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 237
    const-string v4, "BunchClient"

    const-string v5, "sent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_84 .. :try_end_116} :catchall_81

    .line 240
    :cond_116
    monitor-exit p0

    return v3
.end method

.method public declared-synchronized sendKeepAlive()V
    .registers 5

    .prologue
    .line 507
    monitor-enter p0

    :try_start_1
    const-string v0, "BunchClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 508
    const-string v0, "BunchClient"

    const-string v1, "Sending ping to bunch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->ping(J)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 511
    monitor-exit p0

    return-void

    .line 507
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPendingCommands()V
    .registers 7

    .prologue
    .line 481
    monitor-enter p0

    :try_start_1
    const-string v3, "BunchClient"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 482
    const-string v3, "BunchClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pending commands"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2e
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    monitor-enter v4
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_54

    .line 485
    :try_start_31
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    .line 486
    .local v0, batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 487
    .local v1, command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->shouldSendPendingCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 488
    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    goto :goto_3b

    .line 497
    .end local v0           #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .end local v1           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_51
    move-exception v3

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_51

    :try_start_53
    throw v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 481
    :catchall_54
    move-exception v3

    monitor-exit p0

    throw v3

    .line 490
    .restart local v0       #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .restart local v1       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_57
    :try_start_57
    const-string v3, "BunchClient"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 491
    const-string v3, "BunchClient"

    const-string v5, "dropping outdated command"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 495
    .end local v1           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_68
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendMessage([B)Z

    .line 496
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 497
    monitor-exit v4
    :try_end_79
    .catchall {:try_start_57 .. :try_end_79} :catchall_51

    .line 498
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shouldEnqueueIfDisconnected(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Z
    .registers 11
    .parameter "command"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 636
    monitor-enter p0

    if-nez p1, :cond_8

    .line 670
    :cond_6
    :goto_6
    monitor-exit p0

    return v5

    .line 640
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteRequest()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventStreamRequest()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRequest()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGroupConversationRename()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationRequest()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteRequest()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsRequest()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsRequest()Z

    move-result v8

    if-eqz v8, :cond_40

    :cond_3e
    move v5, v6

    .line 649
    goto :goto_6

    .line 650
    :cond_40
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 653
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    .line 654
    .local v0, chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasMessageClientId()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, messageClientId:Ljava/lang/String;
    :goto_54
    iget-object v8, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 657
    .local v3, queued:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 658
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasMessageClientId()Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, queuedMessageClientId:Ljava/lang/String;
    :goto_7e
    if-eqz v4, :cond_5a

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_8 .. :try_end_83} :catchall_8e

    move-result v8

    if-eqz v8, :cond_5a

    goto :goto_6

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #messageClientId:Ljava/lang/String;
    .end local v3           #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v4           #queuedMessageClientId:Ljava/lang/String;
    :cond_87
    move-object v2, v7

    .line 654
    goto :goto_54

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #messageClientId:Ljava/lang/String;
    .restart local v3       #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_89
    move-object v4, v7

    .line 658
    goto :goto_7e

    .end local v3           #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    :cond_8b
    move v5, v6

    .line 668
    goto/16 :goto_6

    .line 636
    .end local v0           #chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #messageClientId:Ljava/lang/String;
    :catchall_8e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized tearDown()V
    .registers 2

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 246
    monitor-exit p0

    return-void

    .line 244
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateClientVersion()V
    .registers 7

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android build "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_49

    .line 519
    .local v2, version:Ljava/lang/StringBuilder;
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_22} :catch_42

    .line 526
    :goto_22
    :try_start_22
    const-string v3, " d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryDatastoreVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, datastoreVersion:Ljava/lang/String;
    if-nez v0, :cond_37

    const-string v0, "0"

    .end local v0           #datastoreVersion:Ljava/lang/String;
    :cond_37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mClientVersion:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_49

    .line 532
    monitor-exit p0

    return-void

    .line 522
    :catch_42
    move-exception v1

    .line 523
    .local v1, exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_43
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_49

    goto :goto_22

    .line 517
    .end local v1           #exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #version:Ljava/lang/StringBuilder;
    :catchall_49
    move-exception v3

    monitor-exit p0

    throw v3
.end method
