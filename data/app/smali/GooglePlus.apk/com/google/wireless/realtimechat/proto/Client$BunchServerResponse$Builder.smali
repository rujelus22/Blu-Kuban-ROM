.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

.field private conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

.field private conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

.field private conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

.field private conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

.field private conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

.field private conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

.field private deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

.field private error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

.field private eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

.field private eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

.field private globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

.field private hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

.field private hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

.field private hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

.field private hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

.field private hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

.field private inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

.field private leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

.field private pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

.field private presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

.field private receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

.field private replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

.field private requestClientId_:Ljava/lang/Object;

.field private setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

.field private suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

.field private tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

.field private typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

.field private userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

.field private userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 55491
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 56109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56145
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56188
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56231
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56274
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56317
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56360
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56403
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56446
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56489
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56532
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56575
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56618
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56661
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56704
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56747
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56790
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56833
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56876
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56919
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56962
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 57005
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 57048
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 57091
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57134
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57177
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57220
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57263
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57306
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57349
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 55492
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->maybeForceBuilderInitialization()V

    .line 55493
    return-void
.end method

.method static synthetic access$74900()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 1

    .prologue
    .line 55486
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 1

    .prologue
    .line 55498
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 55496
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 3

    .prologue
    .line 55575
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    .line 55576
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 55577
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 55579
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 11

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 55593
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 55594
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55595
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 55596
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 55597
    or-int/lit8 v2, v2, 0x1

    .line 55599
    :cond_1b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55600
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 55601
    or-int/lit8 v2, v2, 0x2

    .line 55603
    :cond_27
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 55604
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 55605
    or-int/lit8 v2, v2, 0x4

    .line 55607
    :cond_33
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 55608
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 55609
    or-int/lit8 v2, v2, 0x8

    .line 55611
    :cond_40
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 55612
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 55613
    or-int/lit8 v2, v2, 0x10

    .line 55615
    :cond_4d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 55616
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5a

    .line 55617
    or-int/lit8 v2, v2, 0x20

    .line 55619
    :cond_5a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 55620
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_67

    .line 55621
    or-int/lit8 v2, v2, 0x40

    .line 55623
    :cond_67
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 55624
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_74

    .line 55625
    or-int/lit16 v2, v2, 0x80

    .line 55627
    :cond_74
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 55628
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_81

    .line 55629
    or-int/lit16 v2, v2, 0x100

    .line 55631
    :cond_81
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 55632
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_8e

    .line 55633
    or-int/lit16 v2, v2, 0x200

    .line 55635
    :cond_8e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 55636
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9b

    .line 55637
    or-int/lit16 v2, v2, 0x400

    .line 55639
    :cond_9b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 55640
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a8

    .line 55641
    or-int/lit16 v2, v2, 0x800

    .line 55643
    :cond_a8
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 55644
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b5

    .line 55645
    or-int/lit16 v2, v2, 0x1000

    .line 55647
    :cond_b5
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 55648
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_c2

    .line 55649
    or-int/lit16 v2, v2, 0x2000

    .line 55651
    :cond_c2
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 55652
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_cf

    .line 55653
    or-int/lit16 v2, v2, 0x4000

    .line 55655
    :cond_cf
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 55656
    and-int v3, v0, v5

    if-ne v3, v5, :cond_d9

    .line 55657
    or-int/2addr v2, v5

    .line 55659
    :cond_d9
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 55660
    and-int v3, v0, v6

    if-ne v3, v6, :cond_e3

    .line 55661
    or-int/2addr v2, v6

    .line 55663
    :cond_e3
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 55664
    and-int v3, v0, v7

    if-ne v3, v7, :cond_ed

    .line 55665
    or-int/2addr v2, v7

    .line 55667
    :cond_ed
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 55668
    and-int v3, v0, v8

    if-ne v3, v8, :cond_f7

    .line 55669
    or-int/2addr v2, v8

    .line 55671
    :cond_f7
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 55672
    and-int v3, v0, v9

    if-ne v3, v9, :cond_101

    .line 55673
    or-int/2addr v2, v9

    .line 55675
    :cond_101
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 55676
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_110

    .line 55677
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 55679
    :cond_110
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 55680
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_11f

    .line 55681
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 55683
    :cond_11f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 55684
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_12e

    .line 55685
    const/high16 v3, 0x40

    or-int/2addr v2, v3

    .line 55687
    :cond_12e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 55688
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_13d

    .line 55689
    const/high16 v3, 0x80

    or-int/2addr v2, v3

    .line 55691
    :cond_13d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 55692
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_14c

    .line 55693
    const/high16 v3, 0x100

    or-int/2addr v2, v3

    .line 55695
    :cond_14c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 55696
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_15b

    .line 55697
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 55699
    :cond_15b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 55700
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_16a

    .line 55701
    const/high16 v3, 0x400

    or-int/2addr v2, v3

    .line 55703
    :cond_16a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 55704
    const/high16 v3, 0x800

    and-int/2addr v3, v0

    const/high16 v4, 0x800

    if-ne v3, v4, :cond_179

    .line 55705
    const/high16 v3, 0x800

    or-int/2addr v2, v3

    .line 55707
    :cond_179
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 55708
    const/high16 v3, 0x1000

    and-int/2addr v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_188

    .line 55709
    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    .line 55711
    :cond_188
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 55712
    const/high16 v3, 0x2000

    and-int/2addr v3, v0

    const/high16 v4, 0x2000

    if-ne v3, v4, :cond_197

    .line 55713
    const/high16 v3, 0x2000

    or-int/2addr v2, v3

    .line 55715
    :cond_197
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$78002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 55716
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$78102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;I)I

    .line 55717
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 55502
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 55503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 55504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55505
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 55506
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55507
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 55508
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55509
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 55510
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55511
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 55512
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55513
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 55514
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55515
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 55516
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55517
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 55518
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55519
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 55520
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55521
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 55522
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55523
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 55524
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55525
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 55526
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55527
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 55528
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55529
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 55530
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55531
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 55532
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55533
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 55534
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55535
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 55536
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55537
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 55538
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55539
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 55540
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55541
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 55542
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55543
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 55544
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55545
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 55546
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55547
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 55548
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55549
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 55550
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55551
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 55552
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55553
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 55554
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55555
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 55556
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55557
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 55558
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55559
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 55560
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55561
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 55562
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55563
    return-object p0
.end method

.method public clearChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56181
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56183
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56184
    return-object p0
.end method

.method public clearConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57170
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57172
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57173
    return-object p0
.end method

.method public clearConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56525
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56527
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56528
    return-object p0
.end method

.method public clearConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56783
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56785
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56786
    return-object p0
.end method

.method public clearConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56697
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56699
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56700
    return-object p0
.end method

.method public clearConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56353
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56355
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56356
    return-object p0
.end method

.method public clearConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56998
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 57000
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57001
    return-object p0
.end method

.method public clearDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56439
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56441
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56442
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56611
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56613
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56614
    return-object p0
.end method

.method public clearEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57041
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 57043
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57044
    return-object p0
.end method

.method public clearEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56396
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56398
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56399
    return-object p0
.end method

.method public clearGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57127
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57129
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57130
    return-object p0
.end method

.method public clearHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57342
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57344
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57345
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57256
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57258
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57259
    return-object p0
.end method

.method public clearHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57299
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57301
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57302
    return-object p0
.end method

.method public clearHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57213
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57215
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57216
    return-object p0
.end method

.method public clearHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57385
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57387
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57388
    return-object p0
.end method

.method public clearInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56826
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56828
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56829
    return-object p0
.end method

.method public clearLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56654
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56656
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56657
    return-object p0
.end method

.method public clearPingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56482
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56484
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56485
    return-object p0
.end method

.method public clearPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56224
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56226
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56227
    return-object p0
.end method

.method public clearReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56310
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56312
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56313
    return-object p0
.end method

.method public clearReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56869
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56871
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56872
    return-object p0
.end method

.method public clearRequestClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56133
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56134
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56136
    return-object p0
.end method

.method public clearSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56912
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56914
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56915
    return-object p0
.end method

.method public clearSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57084
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 57086
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57087
    return-object p0
.end method

.method public clearTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56740
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56742
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56743
    return-object p0
.end method

.method public clearTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56267
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56269
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56270
    return-object p0
.end method

.method public clearUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56568
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56570
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56571
    return-object p0
.end method

.method public clearUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56955
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56957
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56958
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 55567
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 56150
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method public getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 57139
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method public getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 56494
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method public getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 56752
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method public getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 56666
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method public getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 56322
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method public getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 56967
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55486
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 2

    .prologue
    .line 55571
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 56408
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 56580
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method public getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 57010
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method public getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 56365
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method public getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2

    .prologue
    .line 57096
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object v0
.end method

.method public getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 57311
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 57225
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method public getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 57268
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 57182
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2

    .prologue
    .line 57354
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object v0
.end method

.method public getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 56795
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method public getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 56623
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method public getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 56451
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method public getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 56193
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method public getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 56279
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method public getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 56838
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 56114
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56115
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 56116
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 56117
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56120
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2

    .prologue
    .line 56881
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method public getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 57053
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method public getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 56709
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method public getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 56236
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method public getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 56537
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method public getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 56924
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method public hasChatMessageResponse()Z
    .registers 3

    .prologue
    .line 56147
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasConversationJoinResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x100

    .line 57136
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasConversationListResponse()Z
    .registers 3

    .prologue
    .line 56491
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConversationPreferenceResponse()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 56749
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConversationRenameResponse()Z
    .registers 3

    .prologue
    .line 56663
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConversationResponse()Z
    .registers 3

    .prologue
    .line 56319
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConversationSearchResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10

    .line 56964
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDeviceRegistrationResponse()Z
    .registers 3

    .prologue
    .line 56405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 56577
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEventSearchResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 57007
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasEventSteamResponse()Z
    .registers 3

    .prologue
    .line 56362
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasGlobalConversationPreferencesResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x80

    .line 57093
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteFinishResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1000

    .line 57308
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteKeepAliveResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x400

    .line 57222
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteReplyResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x800

    .line 57265
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200

    .line 57179
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutRingFinishResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2000

    .line 57351
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasInviteResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 56792
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLeaveConversationResponse()Z
    .registers 3

    .prologue
    .line 56620
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPingResponse()Z
    .registers 3

    .prologue
    .line 56448
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPresenceResponse()Z
    .registers 3

    .prologue
    .line 56190
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasReceiptResponse()Z
    .registers 3

    .prologue
    .line 56276
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReplyToInviteResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 56835
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasRequestClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 56111
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSetAclsResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 56878
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSuggestionsResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 57050
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTileEventResponse()Z
    .registers 3

    .prologue
    .line 56706
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTypingResponse()Z
    .registers 3

    .prologue
    .line 56233
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUserCreationResponse()Z
    .registers 3

    .prologue
    .line 56534
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUserInfoResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 56921
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 55816
    const/4 v0, 0x1

    return v0
.end method

.method public mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56169
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 56171
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56177
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56178
    return-object p0

    .line 56174
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    goto :goto_1f
.end method

.method public mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 57158
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57160
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57166
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57167
    return-object p0

    .line 57163
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    goto :goto_1f
.end method

.method public mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56513
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56515
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56521
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56522
    return-object p0

    .line 56518
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    goto :goto_20
.end method

.method public mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 56771
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 56773
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56779
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56780
    return-object p0

    .line 56776
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    goto :goto_20
.end method

.method public mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56685
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56687
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56693
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56694
    return-object p0

    .line 56690
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    goto :goto_20
.end method

.method public mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56341
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56343
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56349
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56350
    return-object p0

    .line 56346
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    goto :goto_20
.end method

.method public mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 56986
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56988
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56994
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56995
    return-object p0

    .line 56991
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56427
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56429
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56435
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56436
    return-object p0

    .line 56432
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    goto :goto_20
.end method

.method public mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56599
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56601
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56607
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56608
    return-object p0

    .line 56604
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    goto :goto_20
.end method

.method public mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 57029
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57031
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 57037
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57038
    return-object p0

    .line 57034
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    goto :goto_1f
.end method

.method public mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56384
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56386
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56392
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56393
    return-object p0

    .line 56389
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    goto :goto_20
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55486
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 55486
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55486
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 55825
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_362

    .line 55830
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55832
    :sswitch_d
    return-object p0

    .line 55837
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55838
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 55842
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    .line 55843
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasChatMessageResponse()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 55844
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 55846
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55847
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto :goto_0

    .line 55851
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    .line 55852
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasPresenceResponse()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 55853
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    .line 55855
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55856
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto :goto_0

    .line 55860
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    .line 55861
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasTypingResponse()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 55862
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    .line 55864
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55865
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto :goto_0

    .line 55869
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    .line 55870
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasReceiptResponse()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 55871
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    .line 55873
    :cond_80
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55874
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55878
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    .line 55879
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 55880
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 55882
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55883
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55887
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    .line 55888
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasEventSteamResponse()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 55889
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 55891
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55892
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55896
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    :sswitch_c6
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    .line 55897
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasDeviceRegistrationResponse()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 55898
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    .line 55900
    :cond_d7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55901
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55905
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    :sswitch_e3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    .line 55906
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasPingResponse()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 55907
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    .line 55909
    :cond_f4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55910
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55914
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    :sswitch_100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    .line 55915
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationListResponse()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 55916
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    .line 55918
    :cond_111
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55919
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55923
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    :sswitch_11d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    .line 55924
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasUserCreationResponse()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 55925
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    .line 55927
    :cond_12e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55928
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55932
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    :sswitch_13a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    .line 55933
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 55934
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    .line 55936
    :cond_14b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55937
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55941
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    :sswitch_157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    .line 55942
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasLeaveConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 55943
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    .line 55945
    :cond_168
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55946
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55950
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    :sswitch_174
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    .line 55951
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationRenameResponse()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 55952
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    .line 55954
    :cond_185
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55955
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55959
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    :sswitch_191
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    .line 55960
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasTileEventResponse()Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 55961
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    .line 55963
    :cond_1a2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55964
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55968
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    :sswitch_1ae
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    .line 55969
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationPreferenceResponse()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 55970
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    .line 55972
    :cond_1bf
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55973
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55977
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    :sswitch_1cb
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    .line 55978
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 55979
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    .line 55981
    :cond_1dc
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55982
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55986
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    :sswitch_1e8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    .line 55987
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasReplyToInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 55988
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    .line 55990
    :cond_1f9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55991
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55995
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    :sswitch_205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    .line 55996
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasSetAclsResponse()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 55997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    .line 55999
    :cond_216
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56000
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56004
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    :sswitch_222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    .line 56005
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasUserInfoResponse()Z

    move-result v2

    if-eqz v2, :cond_233

    .line 56006
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 56008
    :cond_233
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56009
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56013
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    :sswitch_23f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    .line 56014
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_250

    .line 56015
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    .line 56017
    :cond_250
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56018
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56022
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    :sswitch_25c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    .line 56023
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasEventSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 56024
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    .line 56026
    :cond_26d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56027
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56031
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    :sswitch_279
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    .line 56032
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasSuggestionsResponse()Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 56033
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 56035
    :cond_28a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56036
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56040
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    :sswitch_296
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    .line 56041
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasGlobalConversationPreferencesResponse()Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 56042
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    .line 56044
    :cond_2a7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56045
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56049
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    :sswitch_2b3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    .line 56050
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationJoinResponse()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 56051
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    .line 56053
    :cond_2c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56054
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56058
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    :sswitch_2d0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    .line 56059
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 56060
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 56062
    :cond_2e1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56063
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56067
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    :sswitch_2ed
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    .line 56068
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteKeepAliveResponse()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 56069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    .line 56071
    :cond_2fe
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56072
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56076
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    :sswitch_30a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    .line 56077
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteReplyResponse()Z

    move-result v2

    if-eqz v2, :cond_31b

    .line 56078
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    .line 56080
    :cond_31b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56081
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56085
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    :sswitch_327
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    .line 56086
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_338

    .line 56087
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    .line 56089
    :cond_338
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56090
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 56094
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    :sswitch_344
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    .line 56095
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutRingFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_355

    .line 56096
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    .line 56098
    :cond_355
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 56099
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55825
    nop

    :sswitch_data_362
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_37
        0x22 -> :sswitch_53
        0x2a -> :sswitch_6f
        0x32 -> :sswitch_8c
        0x3a -> :sswitch_a9
        0x42 -> :sswitch_c6
        0x4a -> :sswitch_e3
        0x52 -> :sswitch_100
        0x5a -> :sswitch_11d
        0x62 -> :sswitch_13a
        0x6a -> :sswitch_157
        0x72 -> :sswitch_174
        0x7a -> :sswitch_191
        0x82 -> :sswitch_1ae
        0x8a -> :sswitch_1cb
        0x92 -> :sswitch_1e8
        0x9a -> :sswitch_205
        0xa2 -> :sswitch_222
        0xaa -> :sswitch_23f
        0xb2 -> :sswitch_25c
        0xba -> :sswitch_279
        0xc2 -> :sswitch_296
        0xca -> :sswitch_2b3
        0xd2 -> :sswitch_2d0
        0xda -> :sswitch_2ed
        0xe2 -> :sswitch_30a
        0xea -> :sswitch_327
        0xf2 -> :sswitch_344
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 55721
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 55812
    :cond_6
    :goto_6
    return-object p0

    .line 55722
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasRequestClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 55723
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55725
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasChatMessageResponse()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 55726
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55728
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPresenceResponse()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 55729
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55731
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTypingResponse()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 55732
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55734
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasReceiptResponse()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 55735
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55737
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 55738
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55740
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasEventSteamResponse()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 55741
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55743
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasDeviceRegistrationResponse()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 55744
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55746
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPingResponse()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 55747
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55749
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 55750
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55752
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserCreationResponse()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 55753
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55755
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 55756
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55758
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasLeaveConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 55759
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55761
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationRenameResponse()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 55762
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55764
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTileEventResponse()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 55765
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55767
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationPreferenceResponse()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 55768
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55770
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 55771
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55773
    :cond_e4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasReplyToInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 55774
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55776
    :cond_f1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSetAclsResponse()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 55777
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55779
    :cond_fe
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 55780
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55782
    :cond_10b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 55783
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55785
    :cond_118
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasEventSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 55786
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55788
    :cond_125
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 55789
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55791
    :cond_132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasGlobalConversationPreferencesResponse()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 55792
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55794
    :cond_13f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationJoinResponse()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 55795
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55797
    :cond_14c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 55798
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55800
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteKeepAliveResponse()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 55801
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55803
    :cond_166
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteReplyResponse()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 55804
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55806
    :cond_173
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 55807
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55809
    :cond_180
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutRingFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55810
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_6
.end method

.method public mergeGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 57115
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57117
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57123
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57124
    return-object p0

    .line 57120
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 57330
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57332
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57338
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57339
    return-object p0

    .line 57335
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 57244
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57246
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57252
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57253
    return-object p0

    .line 57249
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 57287
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57289
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57295
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57296
    return-object p0

    .line 57292
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 57201
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57203
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57209
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57210
    return-object p0

    .line 57206
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2000

    .line 57373
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57375
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57381
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57382
    return-object p0

    .line 57378
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    goto :goto_1f
.end method

.method public mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 56814
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56816
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56822
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56823
    return-object p0

    .line 56819
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    goto :goto_1f
.end method

.method public mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56642
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56644
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56650
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56651
    return-object p0

    .line 56647
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    goto :goto_20
.end method

.method public mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56470
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56472
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56478
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56479
    return-object p0

    .line 56475
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    goto :goto_20
.end method

.method public mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56212
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 56214
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56220
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56221
    return-object p0

    .line 56217
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    goto :goto_1f
.end method

.method public mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56298
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56300
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56306
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56307
    return-object p0

    .line 56303
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    goto :goto_20
.end method

.method public mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 56857
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56859
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56865
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56866
    return-object p0

    .line 56862
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    goto :goto_1f
.end method

.method public mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 56900
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56902
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56908
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56909
    return-object p0

    .line 56905
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    goto :goto_1f
.end method

.method public mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x40

    .line 57072
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57074
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 57080
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57081
    return-object p0

    .line 57077
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    goto :goto_1f
.end method

.method public mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56728
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56730
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56736
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56737
    return-object p0

    .line 56733
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    goto :goto_20
.end method

.method public mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56255
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56257
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56263
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56264
    return-object p0

    .line 56260
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    goto :goto_20
.end method

.method public mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56556
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56558
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56564
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56565
    return-object p0

    .line 56561
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    goto :goto_20
.end method

.method public mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 56943
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56945
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56951
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56952
    return-object p0

    .line 56948
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    goto :goto_1f
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56163
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56165
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56166
    return-object p0
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56153
    if-nez p1, :cond_8

    .line 56154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56156
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56158
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56159
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57152
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57154
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57155
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57142
    if-nez p1, :cond_8

    .line 57143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57145
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57147
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57148
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56507
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56509
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56510
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56497
    if-nez p1, :cond_8

    .line 56498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56500
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56502
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56503
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56765
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56767
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56768
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56755
    if-nez p1, :cond_8

    .line 56756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56758
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56760
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56761
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56679
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56681
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56682
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56669
    if-nez p1, :cond_8

    .line 56670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56672
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56675
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56335
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56337
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56338
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56325
    if-nez p1, :cond_8

    .line 56326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56328
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56330
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56331
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56980
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56982
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56983
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56970
    if-nez p1, :cond_8

    .line 56971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56973
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56975
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56976
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56421
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56423
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56424
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56411
    if-nez p1, :cond_8

    .line 56412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56414
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56416
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56417
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56593
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56595
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56596
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56583
    if-nez p1, :cond_8

    .line 56584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56586
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56588
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56589
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57023
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 57025
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57026
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57013
    if-nez p1, :cond_8

    .line 57014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57016
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 57018
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57019
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56378
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56380
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56381
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56368
    if-nez p1, :cond_8

    .line 56369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56371
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56373
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56374
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57109
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57111
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57112
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57099
    if-nez p1, :cond_8

    .line 57100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57102
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57104
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57105
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57324
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57326
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57327
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57314
    if-nez p1, :cond_8

    .line 57315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57317
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57319
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57320
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57238
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57240
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57241
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57228
    if-nez p1, :cond_8

    .line 57229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57231
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57233
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57234
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57281
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57283
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57284
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57271
    if-nez p1, :cond_8

    .line 57272
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57274
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57276
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57277
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57195
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57197
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57198
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57185
    if-nez p1, :cond_8

    .line 57186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57188
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57190
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57191
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57367
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57369
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57370
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57357
    if-nez p1, :cond_8

    .line 57358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57360
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57362
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57363
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56808
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56810
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56811
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56798
    if-nez p1, :cond_8

    .line 56799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56801
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56803
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56804
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56636
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56638
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56639
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56626
    if-nez p1, :cond_8

    .line 56627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56629
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56631
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56632
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56464
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56466
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56467
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56454
    if-nez p1, :cond_8

    .line 56455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56457
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56459
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56460
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56206
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56208
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56209
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56196
    if-nez p1, :cond_8

    .line 56197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56199
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56201
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56202
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56292
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56294
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56295
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56282
    if-nez p1, :cond_8

    .line 56283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56285
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56287
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56288
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56851
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56853
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56854
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56841
    if-nez p1, :cond_8

    .line 56842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56844
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56846
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56847
    return-object p0
.end method

.method public setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56124
    if-nez p1, :cond_8

    .line 56125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56127
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56128
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56130
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56894
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56896
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56897
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56884
    if-nez p1, :cond_8

    .line 56885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56887
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56889
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56890
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57066
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 57068
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57069
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57056
    if-nez p1, :cond_8

    .line 57057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57059
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 57061
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57062
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56722
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56724
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56725
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56712
    if-nez p1, :cond_8

    .line 56713
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56715
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56717
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56718
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56249
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56251
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56252
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56239
    if-nez p1, :cond_8

    .line 56240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56242
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56244
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56245
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56550
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56552
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56553
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56540
    if-nez p1, :cond_8

    .line 56541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56543
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56545
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56546
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56937
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56939
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56940
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56927
    if-nez p1, :cond_8

    .line 56928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56930
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56932
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56933
    return-object p0
.end method
