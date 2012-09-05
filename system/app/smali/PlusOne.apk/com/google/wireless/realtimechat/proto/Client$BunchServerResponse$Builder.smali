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
    .line 55386
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 56004
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56040
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56083
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56126
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56169
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56212
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56255
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56298
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56341
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56384
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56427
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56470
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56513
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56556
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56599
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56642
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56685
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56728
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56771
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56814
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56857
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56900
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 56943
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 56986
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57029
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57072
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57115
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57158
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57201
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57244
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 55387
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->maybeForceBuilderInitialization()V

    .line 55388
    return-void
.end method

.method static synthetic access$74800()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 1

    .prologue
    .line 55381
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 1

    .prologue
    .line 55393
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 55391
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 3

    .prologue
    .line 55470
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    .line 55471
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 55472
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 55474
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55381
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

    .line 55488
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 55489
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55490
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 55491
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 55492
    or-int/lit8 v2, v2, 0x1

    .line 55494
    :cond_1b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55495
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 55496
    or-int/lit8 v2, v2, 0x2

    .line 55498
    :cond_27
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 55499
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 55500
    or-int/lit8 v2, v2, 0x4

    .line 55502
    :cond_33
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 55503
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 55504
    or-int/lit8 v2, v2, 0x8

    .line 55506
    :cond_40
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 55507
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 55508
    or-int/lit8 v2, v2, 0x10

    .line 55510
    :cond_4d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 55511
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5a

    .line 55512
    or-int/lit8 v2, v2, 0x20

    .line 55514
    :cond_5a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 55515
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_67

    .line 55516
    or-int/lit8 v2, v2, 0x40

    .line 55518
    :cond_67
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 55519
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_74

    .line 55520
    or-int/lit16 v2, v2, 0x80

    .line 55522
    :cond_74
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 55523
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_81

    .line 55524
    or-int/lit16 v2, v2, 0x100

    .line 55526
    :cond_81
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 55527
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_8e

    .line 55528
    or-int/lit16 v2, v2, 0x200

    .line 55530
    :cond_8e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$75902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 55531
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9b

    .line 55532
    or-int/lit16 v2, v2, 0x400

    .line 55534
    :cond_9b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 55535
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a8

    .line 55536
    or-int/lit16 v2, v2, 0x800

    .line 55538
    :cond_a8
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 55539
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b5

    .line 55540
    or-int/lit16 v2, v2, 0x1000

    .line 55542
    :cond_b5
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 55543
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_c2

    .line 55544
    or-int/lit16 v2, v2, 0x2000

    .line 55546
    :cond_c2
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 55547
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_cf

    .line 55548
    or-int/lit16 v2, v2, 0x4000

    .line 55550
    :cond_cf
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 55551
    and-int v3, v0, v5

    if-ne v3, v5, :cond_d9

    .line 55552
    or-int/2addr v2, v5

    .line 55554
    :cond_d9
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 55555
    and-int v3, v0, v6

    if-ne v3, v6, :cond_e3

    .line 55556
    or-int/2addr v2, v6

    .line 55558
    :cond_e3
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 55559
    and-int v3, v0, v7

    if-ne v3, v7, :cond_ed

    .line 55560
    or-int/2addr v2, v7

    .line 55562
    :cond_ed
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 55563
    and-int v3, v0, v8

    if-ne v3, v8, :cond_f7

    .line 55564
    or-int/2addr v2, v8

    .line 55566
    :cond_f7
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 55567
    and-int v3, v0, v9

    if-ne v3, v9, :cond_101

    .line 55568
    or-int/2addr v2, v9

    .line 55570
    :cond_101
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$76902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 55571
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_110

    .line 55572
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 55574
    :cond_110
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 55575
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_11f

    .line 55576
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 55578
    :cond_11f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 55579
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_12e

    .line 55580
    const/high16 v3, 0x40

    or-int/2addr v2, v3

    .line 55582
    :cond_12e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 55583
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_13d

    .line 55584
    const/high16 v3, 0x80

    or-int/2addr v2, v3

    .line 55586
    :cond_13d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 55587
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_14c

    .line 55588
    const/high16 v3, 0x100

    or-int/2addr v2, v3

    .line 55590
    :cond_14c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 55591
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_15b

    .line 55592
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 55594
    :cond_15b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 55595
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_16a

    .line 55596
    const/high16 v3, 0x400

    or-int/2addr v2, v3

    .line 55598
    :cond_16a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 55599
    const/high16 v3, 0x800

    and-int/2addr v3, v0

    const/high16 v4, 0x800

    if-ne v3, v4, :cond_179

    .line 55600
    const/high16 v3, 0x800

    or-int/2addr v2, v3

    .line 55602
    :cond_179
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 55603
    const/high16 v3, 0x1000

    and-int/2addr v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_188

    .line 55604
    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    .line 55606
    :cond_188
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 55607
    const/high16 v3, 0x2000

    and-int/2addr v3, v0

    const/high16 v4, 0x2000

    if-ne v3, v4, :cond_197

    .line 55608
    const/high16 v3, 0x2000

    or-int/2addr v2, v3

    .line 55610
    :cond_197
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$77902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 55611
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->access$78002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;I)I

    .line 55612
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55381
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 55381
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 55397
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 55398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 55399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55400
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 55401
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55402
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 55403
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55404
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 55405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55406
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 55407
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55408
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 55409
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55410
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 55411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55412
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 55413
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55414
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 55415
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55416
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 55417
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55418
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 55419
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55420
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 55421
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55422
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 55423
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55424
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 55425
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55426
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 55427
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55428
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 55429
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55430
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 55431
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55432
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 55433
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55434
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 55435
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55436
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 55437
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55438
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 55439
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55440
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 55441
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55442
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 55443
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55444
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 55445
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55446
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 55447
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55448
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 55449
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55450
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 55451
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55452
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 55453
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55454
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 55455
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55456
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 55457
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55458
    return-object p0
.end method

.method public clearChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56076
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56078
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56079
    return-object p0
.end method

.method public clearConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57065
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57067
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57068
    return-object p0
.end method

.method public clearConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56420
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56422
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56423
    return-object p0
.end method

.method public clearConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56678
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56680
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56681
    return-object p0
.end method

.method public clearConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56592
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56594
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56595
    return-object p0
.end method

.method public clearConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56248
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56250
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56251
    return-object p0
.end method

.method public clearConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56893
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56895
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56896
    return-object p0
.end method

.method public clearDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56334
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56336
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56337
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56506
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56508
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56509
    return-object p0
.end method

.method public clearEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56936
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 56938
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56939
    return-object p0
.end method

.method public clearEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56291
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56293
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56294
    return-object p0
.end method

.method public clearGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57022
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57024
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57025
    return-object p0
.end method

.method public clearHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57237
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57239
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57240
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57151
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57153
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57154
    return-object p0
.end method

.method public clearHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57194
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57196
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57197
    return-object p0
.end method

.method public clearHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57108
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57110
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57111
    return-object p0
.end method

.method public clearHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 57280
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57282
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57283
    return-object p0
.end method

.method public clearInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56721
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56723
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56724
    return-object p0
.end method

.method public clearLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56549
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56551
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56552
    return-object p0
.end method

.method public clearPingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56377
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56379
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56380
    return-object p0
.end method

.method public clearPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56119
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56121
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56122
    return-object p0
.end method

.method public clearReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56207
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56208
    return-object p0
.end method

.method public clearReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56764
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56766
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56767
    return-object p0
.end method

.method public clearRequestClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56028
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56029
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56031
    return-object p0
.end method

.method public clearSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56807
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56809
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56810
    return-object p0
.end method

.method public clearSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56979
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 56981
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56982
    return-object p0
.end method

.method public clearTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56635
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56637
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56638
    return-object p0
.end method

.method public clearTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56162
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56164
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56165
    return-object p0
.end method

.method public clearUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 56463
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56465
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56466
    return-object p0
.end method

.method public clearUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 56850
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56852
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56853
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 55381
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55381
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3

    .prologue
    .line 55462
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
    .line 55381
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 56045
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method public getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 57034
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method public getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 56389
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method public getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 56647
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method public getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 56561
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method public getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 56217
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method public getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 56862
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 55381
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55381
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 2

    .prologue
    .line 55466
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 56303
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 56475
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method public getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 56905
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method public getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 56260
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method public getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2

    .prologue
    .line 56991
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object v0
.end method

.method public getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 57206
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 57120
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method public getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 57163
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 57077
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2

    .prologue
    .line 57249
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object v0
.end method

.method public getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 56690
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method public getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 56518
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method public getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 56346
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method public getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 56088
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method public getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 56174
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method public getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 56733
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 56009
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56010
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 56011
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 56012
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56015
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
    .line 56776
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method public getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 56948
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method public getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 56604
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method public getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 56131
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method public getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 56432
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method public getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 56819
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method public hasChatMessageResponse()Z
    .registers 3

    .prologue
    .line 56042
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

    .line 57031
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
    .line 56386
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

    .line 56644
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
    .line 56558
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
    .line 56214
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

    .line 56859
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
    .line 56300
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
    .line 56472
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

    .line 56902
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
    .line 56257
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

    .line 56988
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

    .line 57203
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

    .line 57117
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

    .line 57160
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

    .line 57074
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

    .line 57246
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

    .line 56687
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
    .line 56515
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
    .line 56343
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
    .line 56085
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
    .line 56171
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

    .line 56730
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

    .line 56006
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

    .line 56773
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

    .line 56945
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
    .line 56601
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
    .line 56128
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
    .line 56429
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

    .line 56816
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

.method public mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56064
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 56066
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56072
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56073
    return-object p0

    .line 56069
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    goto :goto_1f
.end method

.method public mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 57053
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57055
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57061
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57062
    return-object p0

    .line 57058
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    goto :goto_1f
.end method

.method public mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56408
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56410
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56416
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56417
    return-object p0

    .line 56413
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    goto :goto_20
.end method

.method public mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 56666
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 56668
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56674
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56675
    return-object p0

    .line 56671
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    goto :goto_20
.end method

.method public mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56580
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56582
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56588
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56589
    return-object p0

    .line 56585
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    goto :goto_20
.end method

.method public mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56236
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56238
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56244
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56245
    return-object p0

    .line 56241
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    goto :goto_20
.end method

.method public mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 56881
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56883
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56889
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56890
    return-object p0

    .line 56886
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56322
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56324
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56330
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56331
    return-object p0

    .line 56327
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    goto :goto_20
.end method

.method public mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56494
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56496
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56502
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56503
    return-object p0

    .line 56499
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    goto :goto_20
.end method

.method public mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 56924
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56926
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 56932
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56933
    return-object p0

    .line 56929
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    goto :goto_1f
.end method

.method public mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56279
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56281
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56287
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56288
    return-object p0

    .line 56284
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
    .line 55381
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

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
    .line 55381
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
    .line 55719
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 55720
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_362

    .line 55725
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55727
    :sswitch_d
    return-object p0

    .line 55732
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 55733
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 55737
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    .line 55738
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasChatMessageResponse()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 55739
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 55741
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55742
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto :goto_0

    .line 55746
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    .line 55747
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasPresenceResponse()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 55748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    .line 55750
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55751
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto :goto_0

    .line 55755
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    .line 55756
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasTypingResponse()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 55757
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    .line 55759
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55760
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto :goto_0

    .line 55764
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    .line 55765
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasReceiptResponse()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 55766
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    .line 55768
    :cond_80
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55769
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55773
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    .line 55774
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 55775
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 55777
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55778
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55782
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    .line 55783
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasEventSteamResponse()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 55784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 55786
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55787
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55791
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    :sswitch_c6
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    .line 55792
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasDeviceRegistrationResponse()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 55793
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    .line 55795
    :cond_d7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55796
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55800
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    :sswitch_e3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    .line 55801
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasPingResponse()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 55802
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    .line 55804
    :cond_f4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55805
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55809
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    :sswitch_100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    .line 55810
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationListResponse()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 55811
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    .line 55813
    :cond_111
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55814
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55818
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    :sswitch_11d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    .line 55819
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasUserCreationResponse()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 55820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    .line 55822
    :cond_12e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55823
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55827
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    :sswitch_13a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    .line 55828
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 55829
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    .line 55831
    :cond_14b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55832
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55836
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    :sswitch_157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    .line 55837
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasLeaveConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 55838
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    .line 55840
    :cond_168
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55841
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55845
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    :sswitch_174
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    .line 55846
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationRenameResponse()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 55847
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    .line 55849
    :cond_185
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55850
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55854
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    :sswitch_191
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    .line 55855
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasTileEventResponse()Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 55856
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    .line 55858
    :cond_1a2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55859
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55863
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    :sswitch_1ae
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    .line 55864
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationPreferenceResponse()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 55865
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    .line 55867
    :cond_1bf
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55868
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55872
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    :sswitch_1cb
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    .line 55873
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 55874
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    .line 55876
    :cond_1dc
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55877
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55881
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    :sswitch_1e8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    .line 55882
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasReplyToInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 55883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    .line 55885
    :cond_1f9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55886
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55890
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    :sswitch_205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    .line 55891
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasSetAclsResponse()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 55892
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    .line 55894
    :cond_216
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55895
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55899
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    :sswitch_222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    .line 55900
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasUserInfoResponse()Z

    move-result v2

    if-eqz v2, :cond_233

    .line 55901
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 55903
    :cond_233
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55904
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55908
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    :sswitch_23f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    .line 55909
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_250

    .line 55910
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    .line 55912
    :cond_250
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55913
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55917
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    :sswitch_25c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    .line 55918
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasEventSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 55919
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    .line 55921
    :cond_26d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55922
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55926
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    :sswitch_279
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    .line 55927
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasSuggestionsResponse()Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 55928
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 55930
    :cond_28a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55931
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55935
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    :sswitch_296
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    .line 55936
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasGlobalConversationPreferencesResponse()Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 55937
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    .line 55939
    :cond_2a7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55940
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55944
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    :sswitch_2b3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    .line 55945
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasConversationJoinResponse()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 55946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    .line 55948
    :cond_2c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55949
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55953
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    :sswitch_2d0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    .line 55954
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 55955
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 55957
    :cond_2e1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55958
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55962
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    :sswitch_2ed
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    .line 55963
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteKeepAliveResponse()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 55964
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    .line 55966
    :cond_2fe
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55967
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55971
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    :sswitch_30a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    .line 55972
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteReplyResponse()Z

    move-result v2

    if-eqz v2, :cond_31b

    .line 55973
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    .line 55975
    :cond_31b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55976
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55980
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    :sswitch_327
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    .line 55981
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutInviteFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_338

    .line 55982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    .line 55984
    :cond_338
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55985
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55989
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    :sswitch_344
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    .line 55990
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hasHangoutRingFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_355

    .line 55991
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    .line 55993
    :cond_355
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55994
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    goto/16 :goto_0

    .line 55720
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
    .line 55616
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 55707
    :cond_6
    :goto_6
    return-object p0

    .line 55617
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasRequestClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 55618
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55620
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasChatMessageResponse()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 55621
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55623
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPresenceResponse()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 55624
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55626
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTypingResponse()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 55627
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55629
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasReceiptResponse()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 55630
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55632
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 55633
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55635
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasEventSteamResponse()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 55636
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55638
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasDeviceRegistrationResponse()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 55639
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55641
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPingResponse()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 55642
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55644
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 55645
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55647
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserCreationResponse()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 55648
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55650
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 55651
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55653
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasLeaveConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 55654
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55656
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationRenameResponse()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 55657
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55659
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTileEventResponse()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 55660
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55662
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationPreferenceResponse()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 55663
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55665
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 55666
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55668
    :cond_e4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasReplyToInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 55669
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55671
    :cond_f1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSetAclsResponse()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 55672
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55674
    :cond_fe
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 55675
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55677
    :cond_10b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 55678
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55680
    :cond_118
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasEventSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 55681
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55683
    :cond_125
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 55684
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55686
    :cond_132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasGlobalConversationPreferencesResponse()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 55687
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55689
    :cond_13f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationJoinResponse()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 55690
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55692
    :cond_14c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 55693
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55695
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteKeepAliveResponse()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 55696
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55698
    :cond_166
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteReplyResponse()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 55699
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55701
    :cond_173
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 55702
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    .line 55704
    :cond_180
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutRingFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55705
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

    .line 57010
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57012
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57018
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57019
    return-object p0

    .line 57015
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 57225
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57227
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57233
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57234
    return-object p0

    .line 57230
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 57139
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57141
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57147
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57148
    return-object p0

    .line 57144
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 57182
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57184
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57190
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57191
    return-object p0

    .line 57187
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 57096
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57098
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57104
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57105
    return-object p0

    .line 57101
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2000

    .line 57268
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 57270
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57276
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57277
    return-object p0

    .line 57273
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    goto :goto_1f
.end method

.method public mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 56709
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56711
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56717
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56718
    return-object p0

    .line 56714
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    goto :goto_1f
.end method

.method public mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56537
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56539
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56545
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56546
    return-object p0

    .line 56542
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    goto :goto_20
.end method

.method public mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56365
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56367
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56373
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56374
    return-object p0

    .line 56370
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    goto :goto_20
.end method

.method public mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56107
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 56109
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56115
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56116
    return-object p0

    .line 56112
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    goto :goto_1f
.end method

.method public mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56193
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56195
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56201
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56202
    return-object p0

    .line 56198
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    goto :goto_20
.end method

.method public mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 56752
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56754
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56760
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56761
    return-object p0

    .line 56757
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    goto :goto_1f
.end method

.method public mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 56795
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56797
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56803
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56804
    return-object p0

    .line 56800
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    goto :goto_1f
.end method

.method public mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x40

    .line 56967
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56969
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 56975
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56976
    return-object p0

    .line 56972
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    goto :goto_1f
.end method

.method public mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56623
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56625
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56631
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56632
    return-object p0

    .line 56628
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    goto :goto_20
.end method

.method public mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56150
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56152
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56158
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56159
    return-object p0

    .line 56155
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    goto :goto_20
.end method

.method public mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56451
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 56453
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56459
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56460
    return-object p0

    .line 56456
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    goto :goto_20
.end method

.method public mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 56838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 56840
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56846
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56847
    return-object p0

    .line 56843
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    goto :goto_1f
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56058
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56060
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56061
    return-object p0
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56048
    if-nez p1, :cond_8

    .line 56049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56051
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 56053
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56054
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57047
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57049
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57050
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57037
    if-nez p1, :cond_8

    .line 57038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57040
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 57042
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57043
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56402
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56404
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56405
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56392
    if-nez p1, :cond_8

    .line 56393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56395
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 56397
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56398
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56660
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56662
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56663
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56650
    if-nez p1, :cond_8

    .line 56651
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56653
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 56655
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56656
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56574
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56576
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56577
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56564
    if-nez p1, :cond_8

    .line 56565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56567
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 56569
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56570
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56230
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56232
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56233
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56220
    if-nez p1, :cond_8

    .line 56221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56223
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 56225
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56226
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56875
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56877
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56878
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56865
    if-nez p1, :cond_8

    .line 56866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56868
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 56870
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56871
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56316
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56318
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56319
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56306
    if-nez p1, :cond_8

    .line 56307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56309
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 56311
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56312
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56488
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56490
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56491
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56478
    if-nez p1, :cond_8

    .line 56479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56481
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 56483
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56484
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56918
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 56920
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56921
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56908
    if-nez p1, :cond_8

    .line 56909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56911
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 56913
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56914
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56273
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56275
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56276
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56263
    if-nez p1, :cond_8

    .line 56264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56266
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 56268
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56269
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57004
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 57006
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57007
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56994
    if-nez p1, :cond_8

    .line 56995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56997
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 56999
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57000
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57219
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57221
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57222
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57209
    if-nez p1, :cond_8

    .line 57210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57212
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 57214
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57215
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57133
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57135
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57136
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57123
    if-nez p1, :cond_8

    .line 57124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57126
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 57128
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57129
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57176
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57178
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57179
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57166
    if-nez p1, :cond_8

    .line 57167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57169
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 57171
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57172
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57090
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57092
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57093
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57080
    if-nez p1, :cond_8

    .line 57081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57083
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 57085
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57086
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 57262
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57264
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57265
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57252
    if-nez p1, :cond_8

    .line 57253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57255
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 57257
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 57258
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56703
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56705
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56706
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56693
    if-nez p1, :cond_8

    .line 56694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56696
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 56698
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56699
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56531
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56533
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56534
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56521
    if-nez p1, :cond_8

    .line 56522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56524
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 56526
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56527
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56359
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56361
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56362
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56349
    if-nez p1, :cond_8

    .line 56350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56352
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 56354
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56355
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56101
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56103
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56104
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56091
    if-nez p1, :cond_8

    .line 56092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56094
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 56096
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56097
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56187
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56189
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56190
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56177
    if-nez p1, :cond_8

    .line 56178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56180
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 56182
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56183
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56746
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56748
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56749
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56736
    if-nez p1, :cond_8

    .line 56737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56739
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 56741
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56742
    return-object p0
.end method

.method public setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56019
    if-nez p1, :cond_8

    .line 56020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56022
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56023
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->requestClientId_:Ljava/lang/Object;

    .line 56025
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56789
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56791
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56792
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56779
    if-nez p1, :cond_8

    .line 56780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56782
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 56784
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56785
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56961
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 56963
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56964
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56951
    if-nez p1, :cond_8

    .line 56952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56954
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 56956
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56957
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56617
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56619
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56620
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56607
    if-nez p1, :cond_8

    .line 56608
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56610
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 56612
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56613
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56144
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56146
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56147
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56134
    if-nez p1, :cond_8

    .line 56135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56137
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 56139
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56140
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 56445
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56447
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56448
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 56435
    if-nez p1, :cond_8

    .line 56436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56438
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 56440
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56441
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 56832
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56834
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56835
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 56822
    if-nez p1, :cond_8

    .line 56823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56825
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 56827
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->bitField0_:I

    .line 56828
    return-object p0
.end method
