.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bitField1_:I

.field private bitField2_:I

.field private chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

.field private chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

.field private chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

.field private conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

.field private conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

.field private conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

.field private conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

.field private conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

.field private conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

.field private conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

.field private conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

.field private conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

.field private conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

.field private conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

.field private deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

.field private deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

.field private error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

.field private eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

.field private eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

.field private eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

.field private eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

.field private globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

.field private globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

.field private groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

.field private hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

.field private hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

.field private hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

.field private hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

.field private hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

.field private hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

.field private hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

.field private hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

.field private hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

.field private hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

.field private invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

.field private inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

.field private inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

.field private leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

.field private leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

.field private membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

.field private migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

.field private pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

.field private pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

.field private presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

.field private presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

.field private presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

.field private receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

.field private receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

.field private receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

.field private replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

.field private replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

.field private requestClientId_:Ljava/lang/Object;

.field private setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

.field private setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

.field private suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

.field private suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

.field private tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

.field private tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

.field private tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

.field private typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

.field private typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

.field private typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

.field private userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

.field private userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

.field private userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

.field private userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47855
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 49147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49183
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49226
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49269
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49312
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49355
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49398
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49441
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49484
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49527
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49570
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49613
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49656
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49699
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49742
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49785
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49828
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49871
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49914
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49957
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 50000
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 50043
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 50086
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50129
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50172
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50215
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50258
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50301
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50344
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50387
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50430
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50473
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50516
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50559
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50602
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50645
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50688
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50731
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50774
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50817
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50860
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50903
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50946
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50989
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 51032
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 51075
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51118
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51161
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51204
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51247
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51290
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51333
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51376
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51419
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51462
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51505
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51548
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51591
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51634
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51677
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51720
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51763
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51806
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51849
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51892
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51935
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51978
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 47856
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->maybeForceBuilderInitialization()V

    .line 47857
    return-void
.end method

.method static synthetic access$64300()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 1

    .prologue
    .line 47850
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 1

    .prologue
    .line 47862
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 47860
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 3

    .prologue
    .line 48013
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    .line 48014
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 48015
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 48017
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 15

    .prologue
    const/high16 v13, 0x4

    const/high16 v12, 0x2

    const/high16 v11, 0x1

    const v10, 0x8000

    const/high16 v9, -0x8000

    .line 48031
    new-instance v3, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 48032
    .local v3, result:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 48033
    .local v0, from_bitField0_:I
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 48034
    .local v1, from_bitField1_:I
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 48035
    .local v2, from_bitField2_:I
    const/4 v4, 0x0

    .line 48036
    .local v4, to_bitField0_:I
    const/4 v5, 0x0

    .line 48037
    .local v5, to_bitField1_:I
    const/4 v6, 0x0

    .line 48038
    .local v6, to_bitField2_:I
    and-int/lit8 v7, v0, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 48039
    or-int/lit8 v4, v4, 0x1

    .line 48041
    :cond_21
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48042
    and-int/lit8 v7, v0, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2d

    .line 48043
    or-int/lit8 v4, v4, 0x2

    .line 48045
    :cond_2d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 48046
    and-int/lit8 v7, v0, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_39

    .line 48047
    or-int/lit8 v4, v4, 0x4

    .line 48049
    :cond_39
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 48050
    and-int/lit8 v7, v0, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_46

    .line 48051
    or-int/lit8 v4, v4, 0x8

    .line 48053
    :cond_46
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 48054
    and-int/lit8 v7, v0, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_53

    .line 48055
    or-int/lit8 v4, v4, 0x10

    .line 48057
    :cond_53
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 48058
    and-int/lit8 v7, v0, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_60

    .line 48059
    or-int/lit8 v4, v4, 0x20

    .line 48061
    :cond_60
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 48062
    and-int/lit8 v7, v0, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_6d

    .line 48063
    or-int/lit8 v4, v4, 0x40

    .line 48065
    :cond_6d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 48066
    and-int/lit16 v7, v0, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_7a

    .line 48067
    or-int/lit16 v4, v4, 0x80

    .line 48069
    :cond_7a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 48070
    and-int/lit16 v7, v0, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_87

    .line 48071
    or-int/lit16 v4, v4, 0x100

    .line 48073
    :cond_87
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 48074
    and-int/lit16 v7, v0, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_94

    .line 48075
    or-int/lit16 v4, v4, 0x200

    .line 48077
    :cond_94
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 48078
    and-int/lit16 v7, v0, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_a1

    .line 48079
    or-int/lit16 v4, v4, 0x400

    .line 48081
    :cond_a1
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 48082
    and-int/lit16 v7, v0, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_ae

    .line 48083
    or-int/lit16 v4, v4, 0x800

    .line 48085
    :cond_ae
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 48086
    and-int/lit16 v7, v0, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_bb

    .line 48087
    or-int/lit16 v4, v4, 0x1000

    .line 48089
    :cond_bb
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 48090
    and-int/lit16 v7, v0, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_c8

    .line 48091
    or-int/lit16 v4, v4, 0x2000

    .line 48093
    :cond_c8
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 48094
    and-int/lit16 v7, v0, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_d5

    .line 48095
    or-int/lit16 v4, v4, 0x4000

    .line 48097
    :cond_d5
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 48098
    and-int v7, v0, v10

    if-ne v7, v10, :cond_df

    .line 48099
    or-int/2addr v4, v10

    .line 48101
    :cond_df
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 48102
    and-int v7, v0, v11

    if-ne v7, v11, :cond_e9

    .line 48103
    or-int/2addr v4, v11

    .line 48105
    :cond_e9
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 48106
    and-int v7, v0, v12

    if-ne v7, v12, :cond_f3

    .line 48107
    or-int/2addr v4, v12

    .line 48109
    :cond_f3
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 48110
    and-int v7, v0, v13

    if-ne v7, v13, :cond_fd

    .line 48111
    or-int/2addr v4, v13

    .line 48113
    :cond_fd
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 48114
    const/high16 v7, 0x8

    and-int/2addr v7, v0

    const/high16 v8, 0x8

    if-ne v7, v8, :cond_10c

    .line 48115
    const/high16 v7, 0x8

    or-int/2addr v4, v7

    .line 48117
    :cond_10c
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 48118
    const/high16 v7, 0x10

    and-int/2addr v7, v0

    const/high16 v8, 0x10

    if-ne v7, v8, :cond_11b

    .line 48119
    const/high16 v7, 0x10

    or-int/2addr v4, v7

    .line 48121
    :cond_11b
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 48122
    const/high16 v7, 0x20

    and-int/2addr v7, v0

    const/high16 v8, 0x20

    if-ne v7, v8, :cond_12a

    .line 48123
    const/high16 v7, 0x20

    or-int/2addr v4, v7

    .line 48125
    :cond_12a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 48126
    const/high16 v7, 0x40

    and-int/2addr v7, v0

    const/high16 v8, 0x40

    if-ne v7, v8, :cond_139

    .line 48127
    const/high16 v7, 0x40

    or-int/2addr v4, v7

    .line 48129
    :cond_139
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 48130
    const/high16 v7, 0x80

    and-int/2addr v7, v0

    const/high16 v8, 0x80

    if-ne v7, v8, :cond_148

    .line 48131
    const/high16 v7, 0x80

    or-int/2addr v4, v7

    .line 48133
    :cond_148
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 48134
    const/high16 v7, 0x100

    and-int/2addr v7, v0

    const/high16 v8, 0x100

    if-ne v7, v8, :cond_157

    .line 48135
    const/high16 v7, 0x100

    or-int/2addr v4, v7

    .line 48137
    :cond_157
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 48138
    const/high16 v7, 0x200

    and-int/2addr v7, v0

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_166

    .line 48139
    const/high16 v7, 0x200

    or-int/2addr v4, v7

    .line 48141
    :cond_166
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 48142
    const/high16 v7, 0x400

    and-int/2addr v7, v0

    const/high16 v8, 0x400

    if-ne v7, v8, :cond_175

    .line 48143
    const/high16 v7, 0x400

    or-int/2addr v4, v7

    .line 48145
    :cond_175
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 48146
    const/high16 v7, 0x800

    and-int/2addr v7, v0

    const/high16 v8, 0x800

    if-ne v7, v8, :cond_184

    .line 48147
    const/high16 v7, 0x800

    or-int/2addr v4, v7

    .line 48149
    :cond_184
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 48150
    const/high16 v7, 0x1000

    and-int/2addr v7, v0

    const/high16 v8, 0x1000

    if-ne v7, v8, :cond_193

    .line 48151
    const/high16 v7, 0x1000

    or-int/2addr v4, v7

    .line 48153
    :cond_193
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 48154
    const/high16 v7, 0x2000

    and-int/2addr v7, v0

    const/high16 v8, 0x2000

    if-ne v7, v8, :cond_1a2

    .line 48155
    const/high16 v7, 0x2000

    or-int/2addr v4, v7

    .line 48157
    :cond_1a2
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 48158
    const/high16 v7, 0x4000

    and-int/2addr v7, v0

    const/high16 v8, 0x4000

    if-ne v7, v8, :cond_1b1

    .line 48159
    const/high16 v7, 0x4000

    or-int/2addr v4, v7

    .line 48161
    :cond_1b1
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 48162
    and-int v7, v0, v9

    if-ne v7, v9, :cond_1bb

    .line 48163
    or-int/2addr v4, v9

    .line 48165
    :cond_1bb
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 48166
    and-int/lit8 v7, v1, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c7

    .line 48167
    or-int/lit8 v5, v5, 0x1

    .line 48169
    :cond_1c7
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 48170
    and-int/lit8 v7, v1, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d3

    .line 48171
    or-int/lit8 v5, v5, 0x2

    .line 48173
    :cond_1d3
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 48174
    and-int/lit8 v7, v1, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1df

    .line 48175
    or-int/lit8 v5, v5, 0x4

    .line 48177
    :cond_1df
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 48178
    and-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1ec

    .line 48179
    or-int/lit8 v5, v5, 0x8

    .line 48181
    :cond_1ec
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 48182
    and-int/lit8 v7, v1, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1f9

    .line 48183
    or-int/lit8 v5, v5, 0x10

    .line 48185
    :cond_1f9
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 48186
    and-int/lit8 v7, v1, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_206

    .line 48187
    or-int/lit8 v5, v5, 0x20

    .line 48189
    :cond_206
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 48190
    and-int/lit8 v7, v1, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_213

    .line 48191
    or-int/lit8 v5, v5, 0x40

    .line 48193
    :cond_213
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 48194
    and-int/lit16 v7, v1, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_220

    .line 48195
    or-int/lit16 v5, v5, 0x80

    .line 48197
    :cond_220
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 48198
    and-int/lit16 v7, v1, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_22d

    .line 48199
    or-int/lit16 v5, v5, 0x100

    .line 48201
    :cond_22d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 48202
    and-int/lit16 v7, v1, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_23a

    .line 48203
    or-int/lit16 v5, v5, 0x200

    .line 48205
    :cond_23a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 48206
    and-int/lit16 v7, v1, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_247

    .line 48207
    or-int/lit16 v5, v5, 0x400

    .line 48209
    :cond_247
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 48210
    and-int/lit16 v7, v1, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_254

    .line 48211
    or-int/lit16 v5, v5, 0x800

    .line 48213
    :cond_254
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 48214
    and-int/lit16 v7, v1, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_261

    .line 48215
    or-int/lit16 v5, v5, 0x1000

    .line 48217
    :cond_261
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 48218
    and-int/lit16 v7, v1, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_26e

    .line 48219
    or-int/lit16 v5, v5, 0x2000

    .line 48221
    :cond_26e
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 48222
    and-int/lit16 v7, v1, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_27b

    .line 48223
    or-int/lit16 v5, v5, 0x4000

    .line 48225
    :cond_27b
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 48226
    and-int v7, v1, v10

    if-ne v7, v10, :cond_285

    .line 48227
    or-int/2addr v5, v10

    .line 48229
    :cond_285
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 48230
    and-int v7, v1, v11

    if-ne v7, v11, :cond_28f

    .line 48231
    or-int/2addr v5, v11

    .line 48233
    :cond_28f
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 48234
    and-int v7, v1, v12

    if-ne v7, v12, :cond_299

    .line 48235
    or-int/2addr v5, v12

    .line 48237
    :cond_299
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 48238
    and-int v7, v1, v13

    if-ne v7, v13, :cond_2a3

    .line 48239
    or-int/2addr v5, v13

    .line 48241
    :cond_2a3
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 48242
    const/high16 v7, 0x8

    and-int/2addr v7, v1

    const/high16 v8, 0x8

    if-ne v7, v8, :cond_2b2

    .line 48243
    const/high16 v7, 0x8

    or-int/2addr v5, v7

    .line 48245
    :cond_2b2
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 48246
    const/high16 v7, 0x10

    and-int/2addr v7, v1

    const/high16 v8, 0x10

    if-ne v7, v8, :cond_2c1

    .line 48247
    const/high16 v7, 0x10

    or-int/2addr v5, v7

    .line 48249
    :cond_2c1
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 48250
    const/high16 v7, 0x20

    and-int/2addr v7, v1

    const/high16 v8, 0x20

    if-ne v7, v8, :cond_2d0

    .line 48251
    const/high16 v7, 0x20

    or-int/2addr v5, v7

    .line 48253
    :cond_2d0
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 48254
    const/high16 v7, 0x40

    and-int/2addr v7, v1

    const/high16 v8, 0x40

    if-ne v7, v8, :cond_2df

    .line 48255
    const/high16 v7, 0x40

    or-int/2addr v5, v7

    .line 48257
    :cond_2df
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 48258
    const/high16 v7, 0x80

    and-int/2addr v7, v1

    const/high16 v8, 0x80

    if-ne v7, v8, :cond_2ee

    .line 48259
    const/high16 v7, 0x80

    or-int/2addr v5, v7

    .line 48261
    :cond_2ee
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 48262
    const/high16 v7, 0x100

    and-int/2addr v7, v1

    const/high16 v8, 0x100

    if-ne v7, v8, :cond_2fd

    .line 48263
    const/high16 v7, 0x100

    or-int/2addr v5, v7

    .line 48265
    :cond_2fd
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 48266
    const/high16 v7, 0x200

    and-int/2addr v7, v1

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_30c

    .line 48267
    const/high16 v7, 0x200

    or-int/2addr v5, v7

    .line 48269
    :cond_30c
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 48270
    const/high16 v7, 0x400

    and-int/2addr v7, v1

    const/high16 v8, 0x400

    if-ne v7, v8, :cond_31b

    .line 48271
    const/high16 v7, 0x400

    or-int/2addr v5, v7

    .line 48273
    :cond_31b
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 48274
    const/high16 v7, 0x800

    and-int/2addr v7, v1

    const/high16 v8, 0x800

    if-ne v7, v8, :cond_32a

    .line 48275
    const/high16 v7, 0x800

    or-int/2addr v5, v7

    .line 48277
    :cond_32a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 48278
    const/high16 v7, 0x1000

    and-int/2addr v7, v1

    const/high16 v8, 0x1000

    if-ne v7, v8, :cond_339

    .line 48279
    const/high16 v7, 0x1000

    or-int/2addr v5, v7

    .line 48281
    :cond_339
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 48282
    const/high16 v7, 0x2000

    and-int/2addr v7, v1

    const/high16 v8, 0x2000

    if-ne v7, v8, :cond_348

    .line 48283
    const/high16 v7, 0x2000

    or-int/2addr v5, v7

    .line 48285
    :cond_348
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 48286
    const/high16 v7, 0x4000

    and-int/2addr v7, v1

    const/high16 v8, 0x4000

    if-ne v7, v8, :cond_357

    .line 48287
    const/high16 v7, 0x4000

    or-int/2addr v5, v7

    .line 48289
    :cond_357
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 48290
    and-int v7, v1, v9

    if-ne v7, v9, :cond_361

    .line 48291
    or-int/2addr v5, v9

    .line 48293
    :cond_361
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 48294
    and-int/lit8 v7, v2, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_36d

    .line 48295
    or-int/lit8 v6, v6, 0x1

    .line 48297
    :cond_36d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 48298
    and-int/lit8 v7, v2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_379

    .line 48299
    or-int/lit8 v6, v6, 0x2

    .line 48301
    :cond_379
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 48302
    and-int/lit8 v7, v2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_385

    .line 48303
    or-int/lit8 v6, v6, 0x4

    .line 48305
    :cond_385
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 48306
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I
    invoke-static {v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I

    .line 48307
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I
    invoke-static {v3, v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I

    .line 48308
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I
    invoke-static {v3, v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I

    .line 48309
    return-object v3
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 8

    .prologue
    const v6, -0x4000001

    const v5, -0x8000001

    const v4, -0x10000001

    const v3, -0x20000001

    const v2, -0x40000001

    .line 47866
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 47867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 47868
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47869
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 47870
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47871
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 47872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47873
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 47874
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47875
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 47876
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47877
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 47878
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47879
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 47880
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47881
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 47882
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47883
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 47884
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47885
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 47886
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47887
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 47888
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47889
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 47890
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47891
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 47892
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47893
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 47894
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47895
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 47896
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47897
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 47898
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47899
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 47900
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47901
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 47902
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47903
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 47904
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47905
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 47906
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47907
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 47908
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47909
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 47910
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47911
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 47912
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47913
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 47914
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47915
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 47916
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47917
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 47918
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47919
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 47920
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47921
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 47922
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47923
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 47924
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47925
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 47926
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47927
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 47928
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47929
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 47930
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47931
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 47932
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47933
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 47934
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47935
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 47936
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47937
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 47938
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47939
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 47940
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47941
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 47942
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47943
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 47944
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47945
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 47946
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47947
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 47948
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47949
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 47950
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47951
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 47952
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47953
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 47954
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47955
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 47956
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47957
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 47958
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47959
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 47960
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47961
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 47962
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47963
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 47964
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47965
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 47966
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47967
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 47968
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47969
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 47970
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47971
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 47972
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47973
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 47974
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47975
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 47976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47977
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 47978
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47979
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 47980
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47981
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 47982
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47983
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 47984
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47985
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 47986
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47987
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 47988
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47989
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 47990
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47991
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 47992
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47993
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 47994
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47995
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 47996
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 47997
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 47998
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 47999
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 48000
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 48001
    return-object p0
.end method

.method public clearChatMessage()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49219
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49221
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49222
    return-object p0
.end method

.method public clearChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49262
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49264
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49265
    return-object p0
.end method

.method public clearChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49305
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49307
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49308
    return-object p0
.end method

.method public clearConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51541
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51543
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51544
    return-object p0
.end method

.method public clearConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51584
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51586
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51587
    return-object p0
.end method

.method public clearConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50122
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50124
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50125
    return-object p0
.end method

.method public clearConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50165
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50167
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50168
    return-object p0
.end method

.method public clearConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50767
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50769
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50770
    return-object p0
.end method

.method public clearConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50810
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50812
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50813
    return-object p0
.end method

.method public clearConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50466
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50468
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50469
    return-object p0
.end method

.method public clearConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50509
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50511
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50512
    return-object p0
.end method

.method public clearConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49778
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49780
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49781
    return-object p0
.end method

.method public clearConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49821
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49823
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49824
    return-object p0
.end method

.method public clearConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51197
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51199
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51200
    return-object p0
.end method

.method public clearConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51240
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51242
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51243
    return-object p0
.end method

.method public clearDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49950
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49952
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49953
    return-object p0
.end method

.method public clearDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49993
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49995
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49996
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50294
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50296
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50297
    return-object p0
.end method

.method public clearEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51283
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51285
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51286
    return-object p0
.end method

.method public clearEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51326
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51328
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51329
    return-object p0
.end method

.method public clearEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49907
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49909
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49910
    return-object p0
.end method

.method public clearEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49864
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49866
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49867
    return-object p0
.end method

.method public clearGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51455
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51457
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51458
    return-object p0
.end method

.method public clearGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51498
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51500
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51501
    return-object p0
.end method

.method public clearGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50552
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50554
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50555
    return-object p0
.end method

.method public clearHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51885
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51887
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51888
    return-object p0
.end method

.method public clearHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51928
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51930
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51931
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51713
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51715
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51716
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51756
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51758
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51759
    return-object p0
.end method

.method public clearHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51799
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51802
    return-object p0
.end method

.method public clearHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51842
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51844
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51845
    return-object p0
.end method

.method public clearHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51627
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51629
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51630
    return-object p0
.end method

.method public clearHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51670
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51672
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51673
    return-object p0
.end method

.method public clearHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51971
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51973
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51974
    return-object p0
.end method

.method public clearHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 52014
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 52016
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 52017
    return-object p0
.end method

.method public clearInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50939
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50941
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50942
    return-object p0
.end method

.method public clearInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50337
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50339
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50340
    return-object p0
.end method

.method public clearInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50982
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50984
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50985
    return-object p0
.end method

.method public clearLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50380
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50382
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50383
    return-object p0
.end method

.method public clearLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50423
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50425
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50426
    return-object p0
.end method

.method public clearMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49735
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49737
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49738
    return-object p0
.end method

.method public clearMigration()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50724
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50726
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50727
    return-object p0
.end method

.method public clearPingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50036
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 50038
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50039
    return-object p0
.end method

.method public clearPingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50079
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 50081
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50082
    return-object p0
.end method

.method public clearPresence()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49434
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49436
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49437
    return-object p0
.end method

.method public clearPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49348
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49350
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49351
    return-object p0
.end method

.method public clearPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49391
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49393
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49394
    return-object p0
.end method

.method public clearReceipt()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49606
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49608
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49609
    return-object p0
.end method

.method public clearReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49649
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49651
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49652
    return-object p0
.end method

.method public clearReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49692
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49694
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49695
    return-object p0
.end method

.method public clearReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50853
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50855
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50856
    return-object p0
.end method

.method public clearReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51025
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 51027
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51028
    return-object p0
.end method

.method public clearRequestClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49171
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49172
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49174
    return-object p0
.end method

.method public clearSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50896
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50898
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50899
    return-object p0
.end method

.method public clearSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51068
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 51070
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51071
    return-object p0
.end method

.method public clearSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51369
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51371
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51372
    return-object p0
.end method

.method public clearSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51412
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51414
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51415
    return-object p0
.end method

.method public clearTileEvent()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50681
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50683
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50684
    return-object p0
.end method

.method public clearTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50595
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50597
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50598
    return-object p0
.end method

.method public clearTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50638
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50640
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50641
    return-object p0
.end method

.method public clearTyping()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49563
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49565
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49566
    return-object p0
.end method

.method public clearTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49477
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49479
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49480
    return-object p0
.end method

.method public clearTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49520
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49522
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49523
    return-object p0
.end method

.method public clearUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50208
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50210
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50211
    return-object p0
.end method

.method public clearUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50251
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50253
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50254
    return-object p0
.end method

.method public clearUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51111
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51113
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51114
    return-object p0
.end method

.method public clearUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51154
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51156
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51157
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 48005
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

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
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 49188
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 49231
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 49274
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method public getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 51510
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 51553
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method public getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 50091
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 50134
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method public getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 50736
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 50779
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method public getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 50435
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 50478
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method public getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 49747
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 49790
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method public getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 51166
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 51209
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 2

    .prologue
    .line 48009
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 49919
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 49962
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 50263
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method public getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 51252
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 51295
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method public getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 49876
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method public getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 49833
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 51424
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2

    .prologue
    .line 51467
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 50521
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 51854
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 51897
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 51682
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 51725
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method public getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 51768
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 51811
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 51596
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 51639
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 51940
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2

    .prologue
    .line 51983
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object v0
.end method

.method public getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 50908
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method public getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 50306
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 50951
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method public getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 50349
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 50392
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 49704
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 50693
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 50005
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 50048
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method public getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2

    .prologue
    .line 49403
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object v0
.end method

.method public getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 49317
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 49360
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 49575
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 49618
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 49661
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method public getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 50822
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 50994
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 49152
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49153
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 49154
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 49155
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49158
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

.method public getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2

    .prologue
    .line 50865
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2

    .prologue
    .line 51037
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method public getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 51338
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 51381
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 50650
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 50564
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 50607
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method public getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 49532
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method public getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 49446
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 49489
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method public getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 50177
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 50220
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method public getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 51080
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 51123
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    .line 49185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasChatMessageRequest()Z
    .registers 3

    .prologue
    .line 49228
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasChatMessageResponse()Z
    .registers 3

    .prologue
    .line 49271
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasConversationJoinRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x80

    .line 51507
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

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

    .line 51550
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasConversationListRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 50088
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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
    const/high16 v1, 0x80

    .line 50131
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasConversationPreferenceRequest()Z
    .registers 3

    .prologue
    .line 50733
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasConversationPreferenceResponse()Z
    .registers 3

    .prologue
    .line 50776
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasConversationRenameRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4000

    .line 50432
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasConversationRenameResponse()Z
    .registers 3

    .prologue
    const/high16 v1, -0x8000

    .line 50475
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasConversationRequest()Z
    .registers 3

    .prologue
    .line 49744
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasConversationResponse()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 49787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConversationSearchRequest()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 51163
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

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
    const/high16 v1, 0x1

    .line 51206
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDeviceRegistrationRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 49916
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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
    const/high16 v1, 0x8

    .line 49959
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasError()Z
    .registers 3

    .prologue
    const/high16 v1, 0x400

    .line 50260
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasEventSearchRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 51249
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasEventSearchResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 51292
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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
    const/high16 v1, 0x2

    .line 49873
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasEventStreamRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 49830
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasGlobalConversationPreferencesRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 51421
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasGlobalConversationPreferencesResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 51464
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasGroupConversationRename()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 50518
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHangoutInviteFinishRequest()Z
    .registers 3

    .prologue
    const/high16 v1, -0x8000

    .line 51851
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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
    const/4 v0, 0x1

    .line 51894
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHangoutInviteKeepAliveRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x800

    .line 51679
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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
    const/high16 v1, 0x1000

    .line 51722
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteReplyRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2000

    .line 51765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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
    const/high16 v1, 0x4000

    .line 51808
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200

    .line 51593
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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
    const/high16 v1, 0x400

    .line 51636
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutRingFinishRequest()Z
    .registers 3

    .prologue
    .line 51937
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

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

.method public hasHangoutRingFinishResponse()Z
    .registers 3

    .prologue
    .line 51980
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

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

.method public hasInvalidateLocalCache()Z
    .registers 3

    .prologue
    .line 50905
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasInviteRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x800

    .line 50303
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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
    .line 50948
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasLeaveConversationRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1000

    .line 50346
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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
    const/high16 v1, 0x2000

    .line 50389
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasMembershipChange()Z
    .registers 3

    .prologue
    .line 49701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasMigration()Z
    .registers 3

    .prologue
    .line 50690
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasPingRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10

    .line 50002
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPingResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 50045
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPresence()Z
    .registers 3

    .prologue
    .line 49400
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasPresenceRequest()Z
    .registers 3

    .prologue
    .line 49314
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasPresenceResponse()Z
    .registers 3

    .prologue
    .line 49357
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasReceipt()Z
    .registers 3

    .prologue
    .line 49572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasReceiptRequest()Z
    .registers 3

    .prologue
    .line 49615
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasReceiptResponse()Z
    .registers 3

    .prologue
    .line 49658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasReplyToInviteRequest()Z
    .registers 3

    .prologue
    .line 50819
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasReplyToInviteResponse()Z
    .registers 3

    .prologue
    .line 50991
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasRequestClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49149
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSetAclsRequest()Z
    .registers 3

    .prologue
    .line 50862
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasSetAclsResponse()Z
    .registers 3

    .prologue
    .line 51034
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasSuggestionsRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 51335
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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
    const/high16 v1, 0x10

    .line 51378
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTileEvent()Z
    .registers 3

    .prologue
    .line 50647
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasTileEventRequest()Z
    .registers 3

    .prologue
    .line 50561
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasTileEventResponse()Z
    .registers 3

    .prologue
    .line 50604
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasTyping()Z
    .registers 3

    .prologue
    .line 49529
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasTypingRequest()Z
    .registers 3

    .prologue
    .line 49443
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasTypingResponse()Z
    .registers 3

    .prologue
    .line 49486
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

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

.method public hasUserCreationRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x100

    .line 50174
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUserCreationResponse()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200

    .line 50217
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUserInfoRequest()Z
    .registers 3

    .prologue
    .line 51077
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public hasUserInfoResponse()Z
    .registers 3

    .prologue
    .line 51120
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 48519
    const/4 v0, 0x1

    return v0
.end method

.method public mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49207
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49209
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49215
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49216
    return-object p0

    .line 49212
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    goto :goto_1f
.end method

.method public mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49250
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49252
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49258
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49259
    return-object p0

    .line 49255
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    goto :goto_1f
.end method

.method public mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49293
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49295
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49301
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49302
    return-object p0

    .line 49298
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    goto :goto_20
.end method

.method public mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 51529
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51531
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51537
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51538
    return-object p0

    .line 51534
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    goto :goto_1f
.end method

.method public mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 51572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51574
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51580
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51581
    return-object p0

    .line 51577
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    goto :goto_1f
.end method

.method public mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x40

    .line 50110
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50112
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50118
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50119
    return-object p0

    .line 50115
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    goto :goto_1f
.end method

.method public mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 50153
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50155
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50161
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50162
    return-object p0

    .line 50158
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    goto :goto_1f
.end method

.method public mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50755
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50757
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50763
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50764
    return-object p0

    .line 50760
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    goto :goto_20
.end method

.method public mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50798
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50800
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50806
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50807
    return-object p0

    .line 50803
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    goto :goto_20
.end method

.method public mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4000

    .line 50454
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50456
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50462
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50463
    return-object p0

    .line 50459
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    goto :goto_1f
.end method

.method public mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, -0x8000

    .line 50497
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50499
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50505
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50506
    return-object p0

    .line 50502
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    goto :goto_1f
.end method

.method public mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49766
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49768
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49774
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49775
    return-object p0

    .line 49771
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    goto :goto_20
.end method

.method public mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 49809
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49811
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49817
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49818
    return-object p0

    .line 49814
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    goto :goto_20
.end method

.method public mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 51185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51187
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51193
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51194
    return-object p0

    .line 51190
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    goto :goto_20
.end method

.method public mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 51228
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51230
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51236
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51237
    return-object p0

    .line 51233
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 49938
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49940
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49946
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49947
    return-object p0

    .line 49943
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 49981
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49983
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49989
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49990
    return-object p0

    .line 49986
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    goto :goto_1f
.end method

.method public mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 50282
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50284
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50290
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50291
    return-object p0

    .line 50287
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    goto :goto_1f
.end method

.method public mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 51271
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51273
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51279
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51280
    return-object p0

    .line 51276
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    goto :goto_1f
.end method

.method public mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 51314
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51316
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51322
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51323
    return-object p0

    .line 51319
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    goto :goto_1f
.end method

.method public mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 49895
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49897
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49903
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49904
    return-object p0

    .line 49900
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    goto :goto_1f
.end method

.method public mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 49852
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49854
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49860
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49861
    return-object p0

    .line 49857
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    goto :goto_1f
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
    .line 47850
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47850
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

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
    .line 47850
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48527
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 48528
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_792

    .line 48533
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48535
    :sswitch_d
    return-object p0

    .line 48540
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 48541
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 48545
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    .line 48546
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasChatMessage()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 48547
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 48549
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48550
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto :goto_0

    .line 48554
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    .line 48555
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPresenceRequest()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 48556
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    .line 48558
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48559
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto :goto_0

    .line 48563
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    .line 48564
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTypingRequest()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 48565
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    .line 48567
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48568
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto :goto_0

    .line 48572
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    .line 48573
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReceipt()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 48574
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 48576
    :cond_80
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48577
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48581
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    .line 48582
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasMembershipChange()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 48583
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 48585
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48586
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48590
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    .line 48591
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 48592
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 48594
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48595
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48599
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    :sswitch_c6
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    .line 48600
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 48601
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 48603
    :cond_d7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48604
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48608
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    :sswitch_e3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    .line 48609
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventStreamRequest()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 48610
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 48612
    :cond_f4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48613
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48617
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    :sswitch_100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    .line 48618
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventSteamResponse()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 48619
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 48621
    :cond_111
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48622
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48626
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    :sswitch_11d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    .line 48627
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasDeviceRegistrationRequest()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 48628
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 48630
    :cond_12e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48631
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48635
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    :sswitch_13a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    .line 48636
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasDeviceRegistrationResponse()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 48637
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    .line 48639
    :cond_14b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48640
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48644
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    :sswitch_157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    .line 48645
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPingRequest()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 48646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    .line 48648
    :cond_168
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48649
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48653
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    :sswitch_174
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    .line 48654
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPingResponse()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 48655
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    .line 48657
    :cond_185
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48658
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48662
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    :sswitch_191
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    .line 48663
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationListRequest()Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 48664
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    .line 48666
    :cond_1a2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48667
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48671
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    :sswitch_1ae
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    .line 48672
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationListResponse()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 48673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    .line 48675
    :cond_1bf
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48676
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48680
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    :sswitch_1cb
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    .line 48681
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserCreationRequest()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 48682
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    .line 48684
    :cond_1dc
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48685
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48689
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    :sswitch_1e8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    .line 48690
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserCreationResponse()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 48691
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    .line 48693
    :cond_1f9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48694
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48698
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    :sswitch_205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    .line 48699
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 48700
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    .line 48702
    :cond_216
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48703
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48707
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    :sswitch_222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    .line 48708
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_233

    .line 48709
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    .line 48711
    :cond_233
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48712
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48716
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    :sswitch_23f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    .line 48717
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasLeaveConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_250

    .line 48718
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    .line 48720
    :cond_250
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48721
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48725
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    :sswitch_25c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    .line 48726
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasLeaveConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 48727
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    .line 48729
    :cond_26d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48730
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48734
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    :sswitch_279
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    .line 48735
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasGroupConversationRename()Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 48736
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 48738
    :cond_28a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48739
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48743
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    :sswitch_296
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    .line 48744
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasMigration()Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 48745
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 48747
    :cond_2a7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48748
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48752
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    :sswitch_2b3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    .line 48753
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationPreferenceRequest()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 48754
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    .line 48756
    :cond_2c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48757
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48761
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    :sswitch_2d0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    .line 48762
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationPreferenceResponse()Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 48763
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    .line 48765
    :cond_2e1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48766
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48770
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    :sswitch_2ed
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    .line 48771
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReplyToInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 48772
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    .line 48774
    :cond_2fe
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48775
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48779
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    :sswitch_30a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    .line 48780
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSetAclsRequest()Z

    move-result v2

    if-eqz v2, :cond_31b

    .line 48781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    .line 48783
    :cond_31b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48784
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48788
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    :sswitch_327
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    .line 48789
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasInvalidateLocalCache()Z

    move-result v2

    if-eqz v2, :cond_338

    .line 48790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    .line 48792
    :cond_338
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48793
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48797
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    :sswitch_344
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    .line 48798
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_355

    .line 48799
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    .line 48801
    :cond_355
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48802
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48806
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    :sswitch_361
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    .line 48807
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReplyToInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_372

    .line 48808
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    .line 48810
    :cond_372
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48811
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48815
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    :sswitch_37e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    .line 48816
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSetAclsResponse()Z

    move-result v2

    if-eqz v2, :cond_38f

    .line 48817
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    .line 48819
    :cond_38f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48820
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48824
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    :sswitch_39b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    .line 48825
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserInfoRequest()Z

    move-result v2

    if-eqz v2, :cond_3ac

    .line 48826
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    .line 48828
    :cond_3ac
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48829
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48833
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    :sswitch_3b8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    .line 48834
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserInfoResponse()Z

    move-result v2

    if-eqz v2, :cond_3c9

    .line 48835
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 48837
    :cond_3c9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48838
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48842
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    :sswitch_3d5
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    .line 48843
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_3e6

    .line 48844
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 48846
    :cond_3e6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48847
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48851
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    :sswitch_3f2
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    .line 48852
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_403

    .line 48853
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    .line 48855
    :cond_403
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48856
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48860
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    :sswitch_40f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    .line 48861
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPresenceResponse()Z

    move-result v2

    if-eqz v2, :cond_420

    .line 48862
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    .line 48864
    :cond_420
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48865
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48869
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    :sswitch_42c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    .line 48870
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPresence()Z

    move-result v2

    if-eqz v2, :cond_43d

    .line 48871
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 48873
    :cond_43d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48874
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48878
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    :sswitch_449
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    .line 48879
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTypingResponse()Z

    move-result v2

    if-eqz v2, :cond_45a

    .line 48880
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    .line 48882
    :cond_45a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48883
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48887
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    :sswitch_466
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    .line 48888
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTyping()Z

    move-result v2

    if-eqz v2, :cond_477

    .line 48889
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    .line 48891
    :cond_477
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48892
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48896
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    :sswitch_483
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    .line 48897
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_494

    .line 48898
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 48900
    :cond_494
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48901
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48905
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    :sswitch_4a0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    .line 48906
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_4b1

    .line 48907
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    .line 48909
    :cond_4b1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48910
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48914
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    :sswitch_4bd
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    .line 48915
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationRenameRequest()Z

    move-result v2

    if-eqz v2, :cond_4ce

    .line 48916
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    .line 48918
    :cond_4ce
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48919
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48923
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    :sswitch_4da
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    .line 48924
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationRenameResponse()Z

    move-result v2

    if-eqz v2, :cond_4eb

    .line 48925
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    .line 48927
    :cond_4eb
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48928
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48932
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    :sswitch_4f7
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    .line 48933
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasChatMessageRequest()Z

    move-result v2

    if-eqz v2, :cond_508

    .line 48934
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 48936
    :cond_508
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48937
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48941
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    :sswitch_514
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    .line 48942
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasChatMessageResponse()Z

    move-result v2

    if-eqz v2, :cond_525

    .line 48943
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 48945
    :cond_525
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48946
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48950
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    :sswitch_531
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    .line 48951
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReceiptRequest()Z

    move-result v2

    if-eqz v2, :cond_542

    .line 48952
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    .line 48954
    :cond_542
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48955
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48959
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    :sswitch_54e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    .line 48960
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReceiptResponse()Z

    move-result v2

    if-eqz v2, :cond_55f

    .line 48961
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    .line 48963
    :cond_55f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48964
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48968
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    :sswitch_56b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    .line 48969
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSuggestionsRequest()Z

    move-result v2

    if-eqz v2, :cond_57c

    .line 48970
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    .line 48972
    :cond_57c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48973
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48977
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    :sswitch_588
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    .line 48978
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSuggestionsResponse()Z

    move-result v2

    if-eqz v2, :cond_599

    .line 48979
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 48981
    :cond_599
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48982
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48986
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    :sswitch_5a5
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    .line 48987
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTileEventRequest()Z

    move-result v2

    if-eqz v2, :cond_5b6

    .line 48988
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 48990
    :cond_5b6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48991
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48995
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    :sswitch_5c2
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    .line 48996
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTileEventResponse()Z

    move-result v2

    if-eqz v2, :cond_5d3

    .line 48997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    .line 48999
    :cond_5d3
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49000
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49004
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    :sswitch_5df
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    .line 49005
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTileEvent()Z

    move-result v2

    if-eqz v2, :cond_5f0

    .line 49006
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 49008
    :cond_5f0
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49009
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49013
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    :sswitch_5fc
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    .line 49014
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasGlobalConversationPreferencesRequest()Z

    move-result v2

    if-eqz v2, :cond_60d

    .line 49015
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    .line 49017
    :cond_60d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49018
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49022
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    :sswitch_619
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    .line 49023
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasGlobalConversationPreferencesResponse()Z

    move-result v2

    if-eqz v2, :cond_62a

    .line 49024
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    .line 49026
    :cond_62a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49027
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49031
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    :sswitch_636
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    .line 49032
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationJoinRequest()Z

    move-result v2

    if-eqz v2, :cond_647

    .line 49033
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    .line 49035
    :cond_647
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49036
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49040
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    :sswitch_653
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    .line 49041
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationJoinResponse()Z

    move-result v2

    if-eqz v2, :cond_664

    .line 49042
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    .line 49044
    :cond_664
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49045
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49049
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    :sswitch_670
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    .line 49050
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_681

    .line 49051
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 49053
    :cond_681
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49054
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49058
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    :sswitch_68d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    .line 49059
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_69e

    .line 49060
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 49062
    :cond_69e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49063
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49067
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    :sswitch_6aa
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    .line 49068
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteKeepAliveRequest()Z

    move-result v2

    if-eqz v2, :cond_6bb

    .line 49069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    .line 49071
    :cond_6bb
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49072
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49076
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    :sswitch_6c7
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    .line 49077
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteKeepAliveResponse()Z

    move-result v2

    if-eqz v2, :cond_6d8

    .line 49078
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    .line 49080
    :cond_6d8
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49081
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49085
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    :sswitch_6e4
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    .line 49086
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteReplyRequest()Z

    move-result v2

    if-eqz v2, :cond_6f5

    .line 49087
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 49089
    :cond_6f5
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49090
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49094
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    :sswitch_701
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    .line 49095
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteReplyResponse()Z

    move-result v2

    if-eqz v2, :cond_712

    .line 49096
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    .line 49098
    :cond_712
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49099
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49103
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    :sswitch_71e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    .line 49104
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_72f

    .line 49105
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    .line 49107
    :cond_72f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49108
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49112
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    :sswitch_73b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    .line 49113
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_74c

    .line 49114
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    .line 49116
    :cond_74c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49117
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49121
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    :sswitch_758
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    .line 49122
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutRingFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_769

    .line 49123
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 49125
    :cond_769
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49126
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49130
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    :sswitch_775
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    .line 49131
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutRingFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_786

    .line 49132
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    .line 49134
    :cond_786
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49135
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48528
    :sswitch_data_792
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_1b
        0x22 -> :sswitch_37
        0x2a -> :sswitch_53
        0x32 -> :sswitch_6f
        0x3a -> :sswitch_8c
        0x42 -> :sswitch_a9
        0x4a -> :sswitch_c6
        0x52 -> :sswitch_e3
        0x5a -> :sswitch_100
        0x62 -> :sswitch_11d
        0x6a -> :sswitch_13a
        0x72 -> :sswitch_157
        0x7a -> :sswitch_174
        0x82 -> :sswitch_191
        0x8a -> :sswitch_1ae
        0x92 -> :sswitch_1cb
        0x9a -> :sswitch_1e8
        0xa2 -> :sswitch_205
        0xaa -> :sswitch_222
        0xb2 -> :sswitch_23f
        0xba -> :sswitch_25c
        0xc2 -> :sswitch_279
        0xca -> :sswitch_296
        0xd2 -> :sswitch_2b3
        0xda -> :sswitch_2d0
        0xe2 -> :sswitch_2ed
        0xea -> :sswitch_30a
        0xf2 -> :sswitch_327
        0xfa -> :sswitch_344
        0x10a -> :sswitch_361
        0x112 -> :sswitch_37e
        0x11a -> :sswitch_39b
        0x122 -> :sswitch_3b8
        0x12a -> :sswitch_3d5
        0x132 -> :sswitch_3f2
        0x13a -> :sswitch_40f
        0x142 -> :sswitch_42c
        0x14a -> :sswitch_449
        0x152 -> :sswitch_466
        0x15a -> :sswitch_483
        0x162 -> :sswitch_4a0
        0x16a -> :sswitch_4bd
        0x172 -> :sswitch_4da
        0x17a -> :sswitch_4f7
        0x182 -> :sswitch_514
        0x18a -> :sswitch_531
        0x192 -> :sswitch_54e
        0x19a -> :sswitch_56b
        0x1a2 -> :sswitch_588
        0x1aa -> :sswitch_5a5
        0x1b2 -> :sswitch_5c2
        0x1ba -> :sswitch_5df
        0x1c2 -> :sswitch_5fc
        0x1ca -> :sswitch_619
        0x1d2 -> :sswitch_636
        0x1da -> :sswitch_653
        0x1e2 -> :sswitch_670
        0x1ea -> :sswitch_68d
        0x1f2 -> :sswitch_6aa
        0x1fa -> :sswitch_6c7
        0x202 -> :sswitch_6e4
        0x20a -> :sswitch_701
        0x212 -> :sswitch_71e
        0x21a -> :sswitch_73b
        0x222 -> :sswitch_758
        0x22a -> :sswitch_775
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 48313
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 48515
    :cond_6
    :goto_6
    return-object p0

    .line 48314
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasRequestClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48315
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48317
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 48318
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48320
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageRequest()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 48321
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48323
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageResponse()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 48324
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48326
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 48327
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48329
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceResponse()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 48330
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48332
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresence()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 48333
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48335
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingRequest()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 48336
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48338
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingResponse()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 48339
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48341
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTyping()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 48342
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48344
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 48345
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48347
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 48348
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48350
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptResponse()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 48351
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48353
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 48354
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48356
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 48357
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48359
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 48360
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48362
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 48363
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48365
    :cond_e4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSteamResponse()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 48366
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48368
    :cond_f1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationRequest()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 48369
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48371
    :cond_fe
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationResponse()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 48372
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48374
    :cond_10b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingRequest()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 48375
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48377
    :cond_118
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingResponse()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 48378
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48380
    :cond_125
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListRequest()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 48381
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48383
    :cond_132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 48384
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48386
    :cond_13f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationRequest()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 48387
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48389
    :cond_14c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationResponse()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 48390
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48392
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 48393
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48395
    :cond_166
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 48396
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48398
    :cond_173
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 48399
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48401
    :cond_180
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 48402
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48404
    :cond_18d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameRequest()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 48405
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48407
    :cond_19a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameResponse()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 48408
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48410
    :cond_1a7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 48411
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48413
    :cond_1b4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEventRequest()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 48414
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48416
    :cond_1c1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEventResponse()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 48417
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48419
    :cond_1ce
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEvent()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 48420
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48422
    :cond_1db
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 48423
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48425
    :cond_1e8
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceRequest()Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 48426
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48428
    :cond_1f5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceResponse()Z

    move-result v0

    if-eqz v0, :cond_202

    .line 48429
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48431
    :cond_202
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 48432
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48434
    :cond_20f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsRequest()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 48435
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48437
    :cond_21c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInvalidateLocalCache()Z

    move-result v0

    if-eqz v0, :cond_229

    .line 48438
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48440
    :cond_229
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_236

    .line 48441
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48443
    :cond_236
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_243

    .line 48444
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48446
    :cond_243
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsResponse()Z

    move-result v0

    if-eqz v0, :cond_250

    .line 48447
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48449
    :cond_250
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 48450
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48452
    :cond_25d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 48453
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48455
    :cond_26a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 48456
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48458
    :cond_277
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_284

    .line 48459
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48461
    :cond_284
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_291

    .line 48462
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48464
    :cond_291
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 48465
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48467
    :cond_29e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 48468
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48470
    :cond_2ab
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 48471
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48473
    :cond_2b8
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGlobalConversationPreferencesRequest()Z

    move-result v0

    if-eqz v0, :cond_2c5

    .line 48474
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48476
    :cond_2c5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGlobalConversationPreferencesResponse()Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 48477
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48479
    :cond_2d2
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationJoinRequest()Z

    move-result v0

    if-eqz v0, :cond_2df

    .line 48480
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48482
    :cond_2df
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationJoinResponse()Z

    move-result v0

    if-eqz v0, :cond_2ec

    .line 48483
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48485
    :cond_2ec
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_2f9

    .line 48486
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48488
    :cond_2f9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_306

    .line 48489
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48491
    :cond_306
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteKeepAliveRequest()Z

    move-result v0

    if-eqz v0, :cond_313

    .line 48492
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48494
    :cond_313
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteKeepAliveResponse()Z

    move-result v0

    if-eqz v0, :cond_320

    .line 48495
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48497
    :cond_320
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteReplyRequest()Z

    move-result v0

    if-eqz v0, :cond_32d

    .line 48498
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48500
    :cond_32d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteReplyResponse()Z

    move-result v0

    if-eqz v0, :cond_33a

    .line 48501
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48503
    :cond_33a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_347

    .line 48504
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48506
    :cond_347
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_354

    .line 48507
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48509
    :cond_354
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutRingFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_361

    .line 48510
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48512
    :cond_361
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutRingFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48513
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_6
.end method

.method public mergeGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 51443
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51445
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51451
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51452
    return-object p0

    .line 51448
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    goto :goto_1f
.end method

.method public mergeGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x40

    .line 51486
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51488
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51494
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51495
    return-object p0

    .line 51491
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    goto :goto_1f
.end method

.method public mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50540
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50542
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50548
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50549
    return-object p0

    .line 50545
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, -0x8000

    .line 51873
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51875
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51881
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51882
    return-object p0

    .line 51878
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51916
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51918
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51924
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51925
    return-object p0

    .line 51921
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 51701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51703
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51709
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51710
    return-object p0

    .line 51706
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 51744
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51746
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51752
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51753
    return-object p0

    .line 51749
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2000

    .line 51787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51789
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51795
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51796
    return-object p0

    .line 51792
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4000

    .line 51830
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51832
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51838
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51839
    return-object p0

    .line 51835
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 51615
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51617
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51623
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51624
    return-object p0

    .line 51620
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 51658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51660
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51666
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51667
    return-object p0

    .line 51663
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51959
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51961
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51967
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51968
    return-object p0

    .line 51964
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 52002
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 52004
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 52010
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 52011
    return-object p0

    .line 52007
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    goto :goto_1f
.end method

.method public mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50927
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50929
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50935
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50936
    return-object p0

    .line 50932
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    goto :goto_20
.end method

.method public mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 50325
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50327
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50333
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50334
    return-object p0

    .line 50330
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    goto :goto_1f
.end method

.method public mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50970
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50972
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50978
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50979
    return-object p0

    .line 50975
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    goto :goto_20
.end method

.method public mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 50368
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50370
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50376
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50377
    return-object p0

    .line 50373
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    goto :goto_1f
.end method

.method public mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2000

    .line 50411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50413
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50419
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50420
    return-object p0

    .line 50416
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    goto :goto_1f
.end method

.method public mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49723
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49725
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49731
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49732
    return-object p0

    .line 49728
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    goto :goto_20
.end method

.method public mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50712
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50714
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50720
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50721
    return-object p0

    .line 50717
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    goto :goto_20
.end method

.method public mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 50024
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50026
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 50032
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50033
    return-object p0

    .line 50029
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    goto :goto_1f
.end method

.method public mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 50067
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50069
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 50075
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50076
    return-object p0

    .line 50072
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    goto :goto_1f
.end method

.method public mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49422
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49424
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49430
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49431
    return-object p0

    .line 49427
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    goto :goto_20
.end method

.method public mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49336
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49338
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49344
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49345
    return-object p0

    .line 49341
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    goto :goto_20
.end method

.method public mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49379
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49381
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49387
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49388
    return-object p0

    .line 49384
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    goto :goto_20
.end method

.method public mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49594
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49596
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49602
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49603
    return-object p0

    .line 49599
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    goto :goto_20
.end method

.method public mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49637
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49639
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49645
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49646
    return-object p0

    .line 49642
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    goto :goto_20
.end method

.method public mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49680
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49682
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49688
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49689
    return-object p0

    .line 49685
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    goto :goto_20
.end method

.method public mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50841
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50843
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50849
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50850
    return-object p0

    .line 50846
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    goto :goto_20
.end method

.method public mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51013
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 51015
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 51021
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51022
    return-object p0

    .line 51018
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    goto :goto_20
.end method

.method public mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50884
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50886
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50892
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50893
    return-object p0

    .line 50889
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    goto :goto_20
.end method

.method public mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51056
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 51058
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 51064
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51065
    return-object p0

    .line 51061
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    goto :goto_20
.end method

.method public mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 51357
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51359
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51365
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51366
    return-object p0

    .line 51362
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    goto :goto_1f
.end method

.method public mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 51400
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51402
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51408
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51409
    return-object p0

    .line 51405
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    goto :goto_1f
.end method

.method public mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50669
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50671
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50677
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50678
    return-object p0

    .line 50674
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    goto :goto_20
.end method

.method public mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50583
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50585
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50591
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50592
    return-object p0

    .line 50588
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    goto :goto_1f
.end method

.method public mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50626
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50628
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50634
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50635
    return-object p0

    .line 50631
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    goto :goto_1f
.end method

.method public mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49551
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49553
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49559
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49560
    return-object p0

    .line 49556
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    goto :goto_20
.end method

.method public mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49465
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49467
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49473
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49474
    return-object p0

    .line 49470
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    goto :goto_20
.end method

.method public mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49508
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49510
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49516
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49517
    return-object p0

    .line 49513
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    goto :goto_20
.end method

.method public mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 50196
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50198
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50204
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50205
    return-object p0

    .line 50201
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    goto :goto_1f
.end method

.method public mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 50239
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50241
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50247
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50248
    return-object p0

    .line 50244
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    goto :goto_1f
.end method

.method public mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51099
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 51101
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51107
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51108
    return-object p0

    .line 51104
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    goto :goto_20
.end method

.method public mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51142
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 51144
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51150
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51151
    return-object p0

    .line 51147
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    goto :goto_20
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49201
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49203
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49204
    return-object p0
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49191
    if-nez p1, :cond_8

    .line 49192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49194
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49196
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49197
    return-object p0
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49244
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49246
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49247
    return-object p0
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49234
    if-nez p1, :cond_8

    .line 49235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49237
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49239
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49240
    return-object p0
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49287
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49289
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49290
    return-object p0
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49277
    if-nez p1, :cond_8

    .line 49278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49280
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49282
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49283
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51523
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51525
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51526
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51513
    if-nez p1, :cond_8

    .line 51514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51516
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51518
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51519
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51566
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51568
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51569
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51556
    if-nez p1, :cond_8

    .line 51557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51559
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51561
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51562
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50104
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50106
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50107
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50094
    if-nez p1, :cond_8

    .line 50095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50097
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50099
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50100
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50147
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50149
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50150
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50137
    if-nez p1, :cond_8

    .line 50138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50140
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50142
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50143
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50749
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50752
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50739
    if-nez p1, :cond_8

    .line 50740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50742
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50744
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50745
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50792
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50794
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50795
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50782
    if-nez p1, :cond_8

    .line 50783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50785
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50788
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50448
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50450
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50451
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50438
    if-nez p1, :cond_8

    .line 50439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50441
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50443
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50444
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50491
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50493
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50494
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50481
    if-nez p1, :cond_8

    .line 50482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50484
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50486
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50487
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49760
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49762
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49763
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49750
    if-nez p1, :cond_8

    .line 49751
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49753
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49755
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49756
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49803
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49805
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49806
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49793
    if-nez p1, :cond_8

    .line 49794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49796
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49798
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49799
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51179
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51181
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51182
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51169
    if-nez p1, :cond_8

    .line 51170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51172
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51174
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51175
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51222
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51224
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51225
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51212
    if-nez p1, :cond_8

    .line 51213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51215
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51217
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51218
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49932
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49934
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49935
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49922
    if-nez p1, :cond_8

    .line 49923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49925
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49927
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49928
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49975
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49977
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49978
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49965
    if-nez p1, :cond_8

    .line 49966
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49968
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49970
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49971
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50276
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50278
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50279
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50266
    if-nez p1, :cond_8

    .line 50267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50269
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50271
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50272
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51265
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51267
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51268
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51255
    if-nez p1, :cond_8

    .line 51256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51258
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51260
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51261
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51308
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51310
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51311
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51298
    if-nez p1, :cond_8

    .line 51299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51301
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51303
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51304
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49889
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49891
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49892
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49879
    if-nez p1, :cond_8

    .line 49880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49882
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49884
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49885
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49846
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49848
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49849
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49836
    if-nez p1, :cond_8

    .line 49837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49839
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49841
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49842
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51437
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51439
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51440
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51427
    if-nez p1, :cond_8

    .line 51428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51430
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51432
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51433
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51480
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51482
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51483
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51470
    if-nez p1, :cond_8

    .line 51471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51473
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51475
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51476
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50534
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50536
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50537
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50524
    if-nez p1, :cond_8

    .line 50525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50527
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50529
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50530
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51867
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51869
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51870
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51857
    if-nez p1, :cond_8

    .line 51858
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51860
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51862
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51863
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51910
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51912
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51913
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51900
    if-nez p1, :cond_8

    .line 51901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51903
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51905
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51906
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51695
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51697
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51698
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51685
    if-nez p1, :cond_8

    .line 51686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51688
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51690
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51691
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51738
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51740
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51741
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51728
    if-nez p1, :cond_8

    .line 51729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51731
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51733
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51734
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51781
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51784
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51771
    if-nez p1, :cond_8

    .line 51772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51774
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51776
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51777
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51824
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51826
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51827
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51814
    if-nez p1, :cond_8

    .line 51815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51817
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51819
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51820
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51609
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51611
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51612
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51599
    if-nez p1, :cond_8

    .line 51600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51602
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51604
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51605
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51652
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51654
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51655
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51642
    if-nez p1, :cond_8

    .line 51643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51645
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51647
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51648
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51953
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51955
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51956
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51943
    if-nez p1, :cond_8

    .line 51944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51946
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51948
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51949
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51996
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 51998
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51999
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51986
    if-nez p1, :cond_8

    .line 51987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51989
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 51991
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51992
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50921
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50923
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50924
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50911
    if-nez p1, :cond_8

    .line 50912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50914
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50916
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50917
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50319
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50321
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50322
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50309
    if-nez p1, :cond_8

    .line 50310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50312
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50314
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50315
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50964
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50966
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50967
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50954
    if-nez p1, :cond_8

    .line 50955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50957
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50959
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50960
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50362
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50364
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50365
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50352
    if-nez p1, :cond_8

    .line 50353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50355
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50357
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50358
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50405
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50407
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50408
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50395
    if-nez p1, :cond_8

    .line 50396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50398
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50400
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50401
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49717
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49719
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49720
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49707
    if-nez p1, :cond_8

    .line 49708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49710
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49712
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49713
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50706
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50708
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50709
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50696
    if-nez p1, :cond_8

    .line 50697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50699
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50702
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50018
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 50020
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50021
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50008
    if-nez p1, :cond_8

    .line 50009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50011
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 50013
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50014
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50061
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 50063
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50064
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50051
    if-nez p1, :cond_8

    .line 50052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50054
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 50056
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50057
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49416
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49418
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49419
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49406
    if-nez p1, :cond_8

    .line 49407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49409
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49412
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49330
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49332
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49333
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49320
    if-nez p1, :cond_8

    .line 49321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49323
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49325
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49326
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49373
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49375
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49376
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49363
    if-nez p1, :cond_8

    .line 49364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49366
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49368
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49369
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49588
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49590
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49591
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49578
    if-nez p1, :cond_8

    .line 49579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49581
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49583
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49584
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49631
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49633
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49634
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49621
    if-nez p1, :cond_8

    .line 49622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49624
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49626
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49627
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49674
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49676
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49677
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49664
    if-nez p1, :cond_8

    .line 49665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49667
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49669
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49670
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50835
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50837
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50838
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50825
    if-nez p1, :cond_8

    .line 50826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50828
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50830
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50831
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51007
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 51009
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51010
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50997
    if-nez p1, :cond_8

    .line 50998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51000
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 51002
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51003
    return-object p0
.end method

.method public setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49162
    if-nez p1, :cond_8

    .line 49163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49165
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49166
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49168
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50878
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50880
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50881
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50868
    if-nez p1, :cond_8

    .line 50869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50871
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50873
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50874
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51050
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 51052
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51053
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51040
    if-nez p1, :cond_8

    .line 51041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51043
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 51045
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51046
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51351
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51353
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51354
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51341
    if-nez p1, :cond_8

    .line 51342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51344
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51346
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51347
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51394
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51396
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51397
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51384
    if-nez p1, :cond_8

    .line 51385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51387
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51389
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51390
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50663
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50665
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50666
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50653
    if-nez p1, :cond_8

    .line 50654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50656
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50659
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50577
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50579
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50580
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50567
    if-nez p1, :cond_8

    .line 50568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50570
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50573
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50620
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50622
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50623
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50610
    if-nez p1, :cond_8

    .line 50611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50613
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50615
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50616
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49545
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49547
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49548
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49535
    if-nez p1, :cond_8

    .line 49536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49538
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49540
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49541
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49459
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49461
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49462
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49449
    if-nez p1, :cond_8

    .line 49450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49452
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49454
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49455
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49502
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49505
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49492
    if-nez p1, :cond_8

    .line 49493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49495
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49497
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49498
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50190
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50192
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50193
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50180
    if-nez p1, :cond_8

    .line 50181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50183
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50186
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50233
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50235
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50236
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50223
    if-nez p1, :cond_8

    .line 50224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50226
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50228
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50229
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51093
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51095
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51096
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51083
    if-nez p1, :cond_8

    .line 51084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51086
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51088
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51089
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51136
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51138
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51139
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51126
    if-nez p1, :cond_8

    .line 51127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51129
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51131
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51132
    return-object p0
.end method
